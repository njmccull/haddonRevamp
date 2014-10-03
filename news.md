---
layout: page
permalink: /news/
title: News
tags: [news, events, courses, woady, yaloak, herald, newspaper, recent, calendar, upcoming]
modified: 2014-09-23
---

[Woady Yaloak Herald]({{ site.url }}/herald/)

<script type="text/javascript">
<!--
/**
 * Converts an xs:date or xs:dateTime formatted string into the local timezone
 * and outputs a human-readable form of this date or date/time.
 *
 * @param {string} gCalTime is the xs:date or xs:dateTime formatted string
 * @return {string} is the human-readable date or date/time string
 */
function formatGCalTime(gCalTime) {
  // text for regex matches
  var remtxt = gCalTime;

  function consume(retxt) {
    var match = remtxt.match(new RegExp('^' + retxt));
    if (match) {
      remtxt = remtxt.substring(match[0].length);
      return match[0];
    }
    return '';
  }

  // minutes of correction between gCalTime and GMT
  var totalCorrMins = 0;

  var year = consume('\\d{4}');
  consume('-?');
  var month = consume('\\d{2}');
  consume('-?');
  var dateMonth = consume('\\d{2}');
  var timeOrNot = consume('T');

  // if a DATE-TIME was matched in the regex
  if (timeOrNot == 'T') {
    var hours = consume('\\d{2}');
    consume(':?');
    var mins = consume('\\d{2}');
    consume('(:\\d{2})?(\\.\\d{3})?');
    var zuluOrNot = consume('Z');

    // if time from server is not already in GMT, calculate offset
    if (zuluOrNot != 'Z') {
      var corrPlusMinus = consume('[\\+\\-]');
      if (corrPlusMinus != '') {
        var corrHours = consume('\\d{2}');
        consume(':?');
        var corrMins = consume('\\d{2}');
        totalCorrMins = (corrPlusMinus=='-' ? 1 : -1) *
            (Number(corrHours) * 60 +
	    (corrMins=='' ? 0 : Number(corrMins)));
      }
    }

    // get time since epoch and apply correction, if necessary
    // relies upon Date object to convert the GMT time to the local
    // timezone
    var originalDateEpoch = Date.UTC(year, month - 1, dateMonth, hours, mins);
    var gmtDateEpoch = originalDateEpoch + totalCorrMins * 1000 * 60;
    var ld = new Date(gmtDateEpoch);

    // date is originally in YYYY-MM-DD format
    // time is originally in a 24-hour format
    // this converts it to MM/DD hh:mm (AM|PM)
    dateString = (ld.getMonth() + 1) + '/' + ld.getDate() + ' ' +
        ((ld.getHours()>12)?(ld.getHours()-12):(ld.getHours()===0?12:
	ld.getHours())) + ':' + ((ld.getMinutes()<10)?('0' +
	ld.getMinutes()):(ld.getMinutes())) + ' ' +
	((ld.getHours()>=12)?'PM':'AM');
  } else {
    // if only a DATE was matched
    dateString =  parseInt(month, 10) + '/' + parseInt(dateMonth, 10);
  }
  return dateString;
}

/**
 * Creates an unordered list of events in a human-readable form
 *
 * @param {json} root is the root JSON-formatted content from GData
 * @param {string} divId is the div in which the events are added
 */
function listEvents(root, divId) {
  var feed = root.feed;
  var events = document.getElementById(divId);

  if (events.childNodes.length > 0) {
    events.removeChild(events.childNodes[0]);
  }

  // create a new unordered list
  var ul = document.createElement('ul');

  // loop through each event in the feed
  for (var i = 0; i < feed.entry.length; i++) {
    var entry = feed.entry[i];
    var title = entry.title.$t;
    var start = entry['gd$when'][0].startTime;
    var finish = entry['gd$when'][0].endTime;
    var where = entry['gd$where'][0].valueString;

    // get the URL to link to the event
    for (var linki = 0; linki < entry['link'].length; linki++) {
      if (entry['link'][linki]['type'] == 'text/html' &&
          entry['link'][linki]['rel'] == 'alternate') {
        var entryLinkHref = entry['link'][linki]['href'];
      }
    }

    var dateString1 = formatGCalTime(start);
    var spacer = " till ";
    var dateString2 = formatGCalTime(finish);
    var dateString = dateString1.concat(spacer);
    var dateString = dateString.concat(dateString2)
    var li = document.createElement('li');
    var br = document.createElement('br');
    var h3 = document.createElement('h3');
    linker = document.createElement('a');

    // if we have a link to the event, create an 'a' element
    if (typeof entryLinkHref != 'undefined') {
      entryLink = document.createElement('a');
      entryLink.setAttribute('href', entryLinkHref);
      entryLink.appendChild(document.createTextNode(title));
      li.appendChild(br);
      h3.appendChild(entryLink);
      li.appendChild(br);
      li.appendChild(document.createTextNode(" " + dateString))
      li.appendChild(br);
      linker.setAttribute('href', 'https://www.google.com.au/maps/place/' + where);
      linker.appendChild(document.createTextNode(where));
      li.appendChild(linker);

    } else {
      li.appendChild(document.createTextNode(title));
      li.appendChild(br);
      li.appendChild(document.createTextNode(" " + dateString));
      li.appendChild(br);
      linker.setAttribute('href', 'https://www.google.com.au/maps/place/' + where);
      linker.appendChild(document.createTextNode(where));
      li.appendChild(linker);
    }

    // append the list item onto the unordered list
    ul.appendChild(h3);
    ul.appendChild(li);
    var br = document.createElement('br')
    ul.appendChild(br);
  }
  events.appendChild(ul);
}

/**
 * Callback function for the GData json-in-script call
 * Inserts the supplied list of events into a div of a pre-defined name
 *
 * @param {json} root is the JSON-formatted content from GData
 */
function insertAgenda(root) {
  listEvents(root, 'agenda');
}
//-->
</script>

<h2>Upcoming Events</h2>
<div id="agenda"><p>Loading...</p></div>

<script type="text/javascript" src="http://www.google.com/calendar/feeds/ct8khil4msmsans1bpho5scv1g@group.calendar.google.com/public/full?alt=json-in-script&callback=insertAgenda&orderby=starttime&max-results=15&singleevents=true&sortorder=ascending&futureevents=true&key=AIzaSyCTENEJTwFt49vjhky9zsNWsgIcjd3Kddo"></script>
