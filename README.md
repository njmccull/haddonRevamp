# Haddon Community Learning Centre

Using [Jekyll](http://jekyllrb.com), and [Michael Rose](http://mademistakes.com/)'s [So Simple Theme](http://mmistakes.github.io/so-simple-theme/) as a starting point, this is the source for the [Haddon Community Learning Centre's website](http://www.haddonlearning.org.au/), or will be in the near future.

Manging the site is fairly simple - but as the site is large, it's easy to get lost. This document is your best friend.

## Management
After some searching, due to the difficulties that managing the website via a particular computer presented, and the difficulties of version management for the client, management is now done via [Prose](https://prose.io).

Prose allows you to browse all files, and make changes to it, in a near WYSIWYG environment, but not quite.

Once you have logged into Prose, you can click on files to access them.

It has *two* modes.

*Edit Mode* and *Preview Mode*.

## Edit Mode

![pencil symbol](https://imgur.com/8oPXYNv.jpg)

The pencil on the upper left hand corner of the screen allows you to edit, using Markdown, though some buttons at the top of the screen can help you there.

### Titles

If you wish to make a title, write the word you would like to highlight, such as:

```
Haddon Community Learning Centre
```

Then highlight it, using your mouse, and click the'*h2* or *h3* button,

![h2](https://imgur.com/JP9eme3.jpg)

and it will become a title.

In *edit mode*, it will appear similar to:

```
## Haddon Community Learning Centre
```

### Links

If you wish to insert a link, simply click the joined chain at the top of the screen, and a dropdown will appear.

![Link button](https://imgur.com/WHR9ueh.jpg)

![Link dropdown](https://imgur.com/hWBqyz6.jpg)

Fill in all three boxes (the optional *Link title* is used by search engines and screen readers, and is therefore important to fill in.)

Then click *Insert*.

The link will appear, correctly formatted, wherever you were editing.

You can use *Preview Mode* to see how it appears.

### Images

![Image symbol](https://imgur.com/j3Ga64F.jpg)

Images are handled very simply from within Prose.

Click the image button, and you will be presented with this menu:

![Image Menu](https://imgur.com/kwj00CD.jpg)

### General Formatting

There are buttons for *Bold* and *Italic* text,

![Bold and Italic](https://imgur.com/iyn0nk4.jpg)

as well as *Quotes*, *Bullet points*, and *numbered lists*

![Quotes, bullet points, and numbered lists](https://imgur.com/Go9l6pt.jpg)

within Prose.

![Bold and Italic](https://imgur.com/iyn0nk4.jpg)

For *Bold* and *Italic* text, Prose expects you to first write whatever you wish to format, then select the text, and then finally, click the button.

![Quotes, bullet points, and numbered lists](https://imgur.com/Go9l6pt.jpg)

For *Quotes*, *Bullet points*, and *numbered lists*, Prose expects you to click the button, and edit the text that it makes appear for you.

## Preview Mode

The eye on the upper left hand corner of the screen

![Preview Mode](https://imgur.com/EhSHh3H.jpg)

allows you to preview the file you are working on, and see it almost as it would appear on the website.

## Metadata

Metadata is very important.

Prose can simply using it, thankfully.

**Courses**

If you are *editing a course, inside the _posts folder,* it appears most simply.

First, click the *Metadata* button:

![Metadata](https://imgur.com/CU4u8bg)

Then, you will be given a simple form:

![Metadata Form](https://imgur.com/tUyFHm8.jpg)

Tags are used for the search system. Simply place single words, seperated by commas.

**Creating a Course**

In Prose, open the *_posts* folder.

![Posts Folder](https://imgur.com/ybAuCKf.jpg)

Click *New File*.

![New File](https://imgur.com/2LnsT44.jpg)

Click underneath *shakna-israel/haddonRevamp* to set a title.

![Set Title](https://imgur.com/sbXq2oD.jpg)

Fill out the page using Markdown as described in the **Editor** section.

Click the Metadata button.

![Metadata](https://imgur.com/CU4u8bg)

Ensure that the right tickboxes are checked.

![Metadata Form](https://imgur.com/tUyFHm8.jpg)

*If it is not an ACFE course, ensure that button is not checked!*

Ensure that the category section has *articles* listed.

*Click under* Add Categories *and it should appear. Simply click it.*

![Add Category](https://imgur.com/kPrdnLK.jpg)

Add appropriate search words in the tags section, seperating **not* with *spaces*, but with **commas**.

![Tags](https://imgur.com/oli2GET.jpg)

**Pages**

If you are *editing a standard page, located in no folder*, metadata does not appear simply.

![Raw Metadata](https://imgur.com/K74i06s.jpg)

Usually, the data is very straight forward, and easy to manipulate.

However, **if you are wishing to create a new page**, it would likely be best to copy an existing page and modify it.

For more information, the raw metadata breaks down like so:

```
layout: page
```

This specifies the template for the page to use. There are two templates. *post* and *page*.

You would want *page*.

```
permalink: /about/
```

The permalink refers to the URL of the webpage.

In the example shown, the webpage would be located at https://haddonlearning.org.au/about/

```
tags:
  - about
  - contact
  - map
```

Tags are defined by a list that aid in the search function of the website, and ensuring search engines such as Google can find all your pages.

```
modified:{}
```

Used by the RSS feed, and the search function, this lets both know if you have changed a page. It is currently displaying no information.

If you modify a page, you would change it like so:

```
modified:12-22-2014
```

Using a MM-DD-YYYY format.

```
slider:true
```

This enables the gallery on a webpage.

However, once enabled, you must set at least one image. (See below).

```
slide1_image: DSCF0069.jpg

slide2_image: DSCF2378.jpg

slide3_image: SB_18790242.jpg
```

This enables three images for the gallery, the optimum number.

The images are the file names of images located inside the img folder, within the assets folder.

[Click here to see files](https://github.com/shakna-israel/haddonRevamp/tree/gh-pages/assets/img).

## Publishing

To ensure a file is *published* and available to everyone on the web, we click the *Publish* button:

![Publish](https://imgur.com/q3sEpdo.jpg)

Once published, and available, the button will appear like this:

![Unpublish](https://imgur.com/q5VyzYa.jpg)

Clicking *Unpublish* may make the file unavailable to the web.

## Drafts

You can create draft versions of files.

To do so, first click the *Settings* cog:

![Settings](https://imgur.com/qLE33aj.jpg)

And the click *Create Draft*:

![Create Draft](https://imgur.com/QsuSKh1.jpg)

## Saving Changes

To save changes within Prose, pressing *Ctrl + S* saves a backup of the file you are editing, but **does not make it a final copy.**

For that, click the floppy disk symbol on the right hand side of the page,

![Floppy symbol](https://imgur.com/yd3KoLx.jpg)

and enter a comment that describes the changes you have made.

It should then be reflected on the website momentarily.

** If you get an error, please contact support.**
