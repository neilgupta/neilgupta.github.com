---
layout: post
title: Just For Fun - Code From The Future
tags: development
location: Chicago
---

Want to share code from the future? Just set your system clock to some future date and then do a git commit. When you push those commits to GitHub, they will appear to be from the future!

![GitHub screenshot](/post_files/githubIn2Days.png)

Since git uses your local system clock to keep track of commit times, GitHub simply trusts and reports those back, resulting in some potentially confusing histories. Ideally, GitHub would not allow future timestamps and any commits appearing to be from the future would just be capped to the server time at the time of push. But this isn't really a big enough problem for GitHub to worry about...

I discovered this little bug while working on Tabule's date parsing library, [Sherlock](https://github.com/Tabule/Sherlock/), which is why my system clock was set to 2 days in the future, and it amused me quite a bit.