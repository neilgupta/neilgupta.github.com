---
layout: post
title: Coding Like It's 1995
tags: code
---

{{ page.title }}
================

<p class="meta">{{ page.date | date_to_string }} - Chicago</p>

I set out to design my first HTML email today, and put together a simple CSS design in under 15 minutes. Then I looked at other HTML email templates out of curiosity and noticed that every single one of them used tables for their layout, even Apple's. Turns out that most email clients don't accept the standard CSS that we've grown accustomed to in browsers, making even IE6 look good. The best email client out there is Apple's Mail.app, which uses Webkit for all of its html rendering. Surprisingly, one of the worst is Gmail. Almost none of your basic CSS will work in Gmail. What this means is that designing even simple HTML emails can become an extremely painful ordeal if you're not prepared.

How painful? Be ready to forget everything you know about good web design and start nesting tables inside of tables inside of tables. The most important things to remember:

1. You cannot have a `<head>` section. It will simply be ignored by Gmail. That means all your CSS will need to be inline. But better to just avoid using CSS as much as possible. It probably won't work.
2. Brush up on all those depcrated HTML3 tags, like `<font>` and `<center>`. They are your friends in this cold lonely world you are entering.
3. The standard practice is to create a container table with 100% width, and then another table inside of that that is centered with content. There's a reason for this, but that doesn't make it feel any better.
4. Keep images to a minimum, most email clients won't load them without the user's permission.

Still here? At this point, you're probably reconsidering if HTML emails are even worth the trouble. The answer is no, no they are not. But if you're still going to push forward, here are some useful resources I found to help understand the nightmare that is 20 different email clients that all have their own idiosyncrasies:

* [Campaign Monitor's Ultimate Guide to CSS in HTML Emails](http://www.campaignmonitor.com/css/) - they have a very easy-to-read table of which CSS styles each popular email client supports. There are a lot of red X's...
* [Using CSS in HTML Emails: The Real Story](http://css-tricks.com/using-css-in-html-emails-the-real-story/) - quick tips and guidelines for writing HTML emails.
* [20 Email Design Best Practices](http://net.tutsplus.com/tutorials/html-css-techniques/20-email-design-best-practices-and-resources-for-beginners/) - very good rundown of do's and dont's
* [Premailer](http://premailer.dialect.ca/) - paste your HTML code and get a list of warnings that you should fix, very useful!
* [Litmus Email Testing](http://litmus.com/email-testing) - Paste your HTML code and get screenshots of how it looks in every popular email client. This service has a 7 day free trial, but costs $50/month after that. If you are unfortunate enough to have to design lots of HTML emails, this will probably be worth every penny.

I had no idea that the state of HTML emails is so pathetic. I still feel dirty from typing nested tables and inline CSS. Unfortunately, I don't see this getting better anytime soon if the problem has persisted this long, since there is little incentive for email client developers to improve their CSS support at this point.