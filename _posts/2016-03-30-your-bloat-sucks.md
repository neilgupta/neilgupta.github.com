---
layout: post
title: Your Bloat Sucks
tags: development
location: Chicago
---

Everybody knows page load speeds are important. The faster your page loads, the better your user experience. Google spends millions to shave milliseconds off their load time. Yet in practice, most sites are still terrible at optimizing for load times, instead opting to load megabytes of JavaScript libraries, custom fonts, images, and ads.

As a developer who tries to be conscious of page size bloat, I'm still guilty of shipping pages that are over 1mb in size. It's easy to forget how painful slow load times are when I have gigabit internet at home. 

However, I spent last week in India, where I was stuck on an inhumane 2G cellular connection. Suddenly, I found myself very appreciative of small pages. For example, Hacker News loaded in under 30 seconds, while most other sites took much longer and usually resulted in me giving up. I spent a lot of time staring at a little blue bar on a blank white page valiantly try to make it to the other side, chanting "[I think I can, I think I can](https://youtube.com/watch?v=Yx9xO98kcBU)," but never quite make it. 

As a result, I read a lot of HN comments to get the gist of an article rather than reading the linked article itself. I had to really weigh whether clicking a link was worth the time. It turns out sites like the NY Times were on the losing end of that decision every time. 

Why is it generally acceptable to treat fast page loads as a nice-to-have perk? We forget that a small page size is about more than bragging rights and SEO optimization. By and large, "small page size" isn't exciting, so engineering teams are incentivized to prioritize other features. We also don't want to be guilty of premature optimization.

However, much of the world experiences the web like I did last week. That means your page size has a real impact on whether entire audiences will even bother trying to use it. 

So ask yourself, do you really need those fancy fonts or that extra JS library? Push back on your designers or your over-eager developers. Question every dependency that's pulled in. Need to add a chart? You probably don't need all of d3 to make it. 

Fuck your bloat.
