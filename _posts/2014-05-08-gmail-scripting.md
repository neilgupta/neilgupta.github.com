---
layout: post
title: Scripting Your Gmail Filters
tags: programming
location: San Jose
---

I love Gmail Filters for setting up rules to automatically sort my email. However, I prefer using Apple's Mail app on both my desktop and phone, which means I'm not able to take full advantage of Labels. In particular, there's no way for me to receive a push notification for an email unless it goes in my inbox. For a long time, I've wanted a way to create time or action-based rules that allow me to send emails to my inbox and then automatically archive them at a later point. Unfortunately, rules are only evaluated when an email is received, so Gmail does not support time-based rules by default.

Today, I discovered [Google Apps Scripts](https://script.google.com), an official tool for scripting Google apps. I immediately wrote 6 lines of Javascript to automatically archive my Airbrake notification emails after I read them:

    // Auto-archive airbrake messages
    function airbrake() {
      var threads = GmailApp.search('label:inbox label:airbrake is:read');
      for (var i = 0; i < threads.length; i++) {
        threads[i].moveToArchive();
      }
    };

By itself, this script isn't very useful. However, Google Scripts also supports adding time-driven triggers to your scripts. For example, I set my airbrake function to run every 10 minutes. Now, whenever there's an error, I'll get an email from Airbrake. Roughly 10 minutes after I mark it as read, the email will automatically archive itself.

Setting it up is easy. Just go to [https://script.google.com](https://script.google.com) and write your Javascript functions. `GmailApp.search` supports anything that Gmail's search bar supports, which is quite a bit. You can read more of the available functions and API's in the [official documentation](https://developers.google.com/apps-script/reference/gmail/).

![Google Scipts UI](/post_files/google_scripts.png)

Once you've written your function, click the "current project's triggers" button (circled in red) to add your time-driven triggers. It'll ask you to authorize access to your Gmail account when you hit save. Once you grant access, you're all set! You can test your functions via the run menu.

![Google Scipts Triggers](/post_files/google_scripts_triggers.png)
