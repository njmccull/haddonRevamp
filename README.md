# Haddon Community Learning Centre

Using [Jekyll](http://jekyllrb.com), and [Michael Rose](http://mademistakes.com/)'s [So Simple Theme](http://mmistakes.github.io/so-simple-theme/) as a starting point, this is the source for the [Haddon Community Learning Centre's website](http://www.haddonlearning.org.au/), or will be in the near future.

Manging the site is fairly simple - but as the site is large, it's easy to get lost. This document is your best friend.

#Managing

The site is split into two main parts:

* config.yml
** Inside the config.yml file, the list of links displayed at the top of the website can be found.
* Markdown files. Simple text files that get automagickally turned into webpages.

## config.yml

If you want to edit the navigation, (the links at the top of the page), you need to edit config.yml, not located in any folder.

There you find something like this:
```
# Links to include in top navigation
# For external links add external: true
links:
  - title: About
    url: /about/
  - title: Community Survey
    url: /survey/
  - title: News
    url: /news/
  - title: Courses and Advertising
    url: /courses/
#  - title: Made Mistakes
#    url: http://mademistakes.com
#    external: true
```

Anything starting with a ```#``` is a 'comment' and isn't used in the website. (In this file only! It can mean other things in other places!)

That being said, the way to add new links is fairly simple.

You need to add two new lines, and line them up with the rest. (Or if adding a link to another website, you need to add 3 lines).

So, onto examples.

Say we want to add a page we have already created, and made to appear at ```/rainbow/```, and we want the word that people click on at the top of the page to appear as ```Random```.

We would add these two lines:
```
- title: Random
  url: /rainbow/
```

*If you want to set up a new page, or find a pages url, view the **Markdown** section of this guide.*

Now, if we wanted to add a link to another website, for some reason, we could add it easily enough, but slightly differently.

Say we want to link to [shakna-israel.github.io](http://shakna-israel.github.io), and we want the phrase that people click on at the top of the page, (the *navigation*, remember?), to be "Programmer", we would add these three lines:
```
- title: Programmer
  url: http://shakna-israel.github.io
  external: true
```

There's two vitally important things here:
* If you don't include the ```external: true``` statement, it **will not work**. It's a security feature.
* If you don't include the ```http://``` at the front of an external link, **it will not work**. This is part of a standard way that the internet, as you know it, works. (Using ```www.shakna-israel.github.io```, for example, will not work. But ```http://www.shakna-israel.github.io``` would work.)

The ACFE enrolment form can be updated here (it must always be inside the assets folder):

```
acfe: docx\VET Student Enrolment Form Version 2014.docx
```

So this points to the file ```VET Student Enrolment Form Version 2014.docx``` inside the ```docx``` folder inside the ```assets``` folder.

You can also update the phone number:

```
phone_link: 0061353427050
phone: (03) 5342 7050
```

*phone_link must be international format*

## Markdown

We use a special language, which is very simple, called *Markdown* to create the webpages for this website.

They are all created in a very specific way.

So, lets create a webpage!

We create a new file, not in a folder, such as ```rainbow.md```

*All files must end in ```.md``` for it to work.*

Inside this file, we set up a small bit of code, which, for our purposes, we'll call the ```head```.
```
---
layout: page
permalink: /rainbow/
title: Rainbow
tags: [rainbow, tutorial, markdown]
modified: 2014-08-19
---
```

So, lets explain.

You start the ```rainbow.md``` file with some dashes:

```
---
```

Then, we tell the website to use the ```page``` layout for the webpage:

```
layout: page
```

*Other layouts exist, but you don't need to use them.*

Next, we tell the website where to find the webpage:
```
permalink: /rainbow/
```

You could make the link whatever you like, so long as it starts and ends with a ```/```, and you probably don't want it to have any spaces in it.

*On the website, the above link would be found at [http://shakna-israel/haddonRevamp/rainbow](http://shakna-israel/haddonRevamp/rainbow)*

Next, we set the title that appears at the top of the web browser, and as the title of the page. (So, on the main page of the site this is 'Welcome'.)

```
title: Rainbow
```

This means the page will have a title of *Rainbow* at the top of the page.

Next, we set the key words that the search, and search engines such as [Google](http://google.com) use to help people find our pages.

```
tags: [rainbow, tutorial, markdown]
```

You simple put the keywords inside the ```[]``` brackets, and seperate with a comma and space. *But there is no comma at the end.*

Next, we set a modified date, which should be this date, as it is used by search engines, like the above.

```
modified: 2014-08-19
```

First you have the year, then the month, and then the day.

You have a couple optional extras you can also add.

To add a slider gallery to a page, add:

```
slider: true
```

Beneath this, add your images. You can have up to 20, but 3 is the recommendation.

```
slide1_image: DSC00110.jpg
```

This will add the image with the filename "DSC00110.jpg" from "img" folder inside the "assets" folder.

We can also add comments on top of the image:

```
slide1_comment: This is an image
```

Simply change the number when adding more images. For example, the homepage slider looks like this:

```
slider: true
slide1_image: DSCF0048.jpg
slide1_comment: Teaching
slide2_image: DSCF1894.jpg
slide2_comment: Learning
slide3_image: Haidressing Day 2 043.jpg
slide3_comment: Training
```

You can also add pdfs you have uploaded to Issuu.

You need a few things for this.

Copy the URL for the file, it should be something like: ```http://issuu.com/s4b3r6/docs/final_course_guide_only_term_3```

Next, click ```Share```, and then click ```Embed```.

Inside the box titled ```Embed code```, following ```data-configid=``` there is two numbers seperated by a slash, like ```13690445/9448777```.

So, to set up the pdf, do this:

```
pdf: true
issu_url: http://issuu.com/s4b3r6/docs/final_course_guide_only_term_3
issu_id: 13690445/9448777
```

Replacing the URL, and numbers, with the ones that you wrote down.

Finally, to end, **and this is a must**, we tell the website we're done with setting up.

```
---
```

We can now write the rest of the page!

The title is already set up for you, so you can just start writing some text.

```
This is an introductory paragraph, but you should probably bear in mind that 'writing for the web' means that you want to use very few words.
```

###To split a paragraph, leave a blank line in-between the paragraphs.

```
This is the first paragraph.

This is the second paragraph.
```

**If you don't leave a blank, and just go down one line, they will still join as one paragraph.**

###To make a title, start the line with a ```#```.
```
#This line will appear as a title.

##Because there are two #'s, this line will be a title, but slightly smaller.

###You can add up to three #'s for an even smaller title. But you can't make smaller titles.
```

This will appear as:

#This line will appear as a title.

##Because there are two #'s, this line will be a title, but slightly smaller.

###You can add up to three #'s for an even smaller title. But you can't make smaller titles.

###To make some text italicised, put an ```*``` around the text

```
The word *italic* will appear in italics.
```

Will appear as:

The word *italic* will appear in italics.

###To make some text bold, but two ```*``` around the text.
```
The word **bold** will appear to be bold.
```

This will appear as:

The word **bold** will appear to be bold.

###To make some text both italic and bold, put three ```*``` around the text.
```
The text ***both*** will be both italicised and bold.
```

This will appear as:

The text ***both*** will be both italicised and bold.

###To make a link, you put the text you want to appear in ```[]``` brackets, and then immediately afterwards the link in ```()``` brackets.
```
[Shakna Israel](http://shakna-israel.github.io)
```
will appear as [Shakna Israel](http://shakna-israel.github.io)

###To add an image, you do it the same way as a link, but add a ```!``` before it:
```
![Image Test]({{ site.baseurl }}/images/artwork.jpg)
```

Inside the ```[]``` brackets you put the text that loads if the image doesn't. Inside the ```()``` you copy the above link, but change the end.

e.g. If you wanted to use the image default.jpg instead, you would write it like this:

```
![Image Test]({{ site.baseurl }}/images/default.jpg)
```

If the image inside a folder, just add the folder:

```
![Image Test]({{ site.baseurl }}/images/folder/default.jpg)
```

###That should be everything you need to know, now you can make newpages, and add them to the navigation!

#Adding Courses
Adding courses is a fairly simple procedure.

Open the ```_posts``` folder, and create a new file.

The name **needs** to be something like ```2014-12-27-fanastic-course.md```

The date needs to be included, and correctly shown as ```YYYY-MM-DD``` or it won't work.

The file starts with:

```
---
```

Like all pages.

However, next we add a ```post``` layout:

```
layout: post
```

Then, we add the title:

```
title: Fantastic Course
```

Next, we add this line:

```
category: articles
```

Then we add some search words for Google:

```
tags: [sample-post, readability, test, intro]
```

Then, we add these two lines:

```
comments: true
share: true
```

Now, we need to choose whether to show the ACFE enrollment form, or the standard form.

If it is an ACFE course, simply add:

```
acfe: true
```

This will take care of it all for you.

And end the config settings:

```
---
```

So, your file should look something like this:

```
---
layout: post
title: "Fantastic Course"
category: articles
tags: [sample-post, readability, test, intro]
comments: true
share: true
---
```

You can then use Markdown, as shown above, to add content to the page. (You don't need to add the title!)

# Launching the Website

Launching an updated version of the website follows a few steps.

* First, run (by double-clicking), ```launch.bat```

*This will ask for you to comment on your changes, just in case you need to roll backwards.*

** If you get an error, please contact support.**
