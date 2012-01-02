---
layout: post
title: My Journey to Jekyll
tags: reviews home
---

{{ page.title }}
================

<p class="meta">{{ page.date | date_to_string }} - San Jose</p>

I recently switched to generating this blog using [Jekyll](http://jekyllrb.com/), and hosting it on [GitHub Pages](http://pages.github.com/). Over the years, I've gone through many blogging platforms before arriving at my current choice. This is a quick overview of the platforms I've tried, and my thoughts on each one.

**Wordpress**

I used to host my own [Wordpress](http://wordpress.org/) blog up until a few years ago. Back then, Wordpress was by far the best blogging solution around. It offered amazing expandability and customization potential, with an unparalleled plugin library and strong community. If you wish your blog could do something, somebody has probably already made a plugin for Wordpress to do it. Unfortunately, Wordpress's high popularity also made it an attractive target for malicious hackers. New security vulnerabilities would be found on a regular basis, which meant you had to constantly keep your installation up-to-date. My site got hacked after I hadn't updated my blog in several months and, as a result, failed to install the mandatory security updates.

Today, Wordpress just feels like overkill, and I can't think of a single senario where it's actually the best solution. Sure, it offers lots of features that you probably won't find anywhere else, but chances are, you have no need for those features and the security vulnerabilities they bring. With each new feature it packs, its relative ease of use decreases, leaving it somewhere in the middle of being easy for a non-technical person to pick up and being satisfying for a hacker to customize. It's kind of like driving an SUV when you want a sports car.

**Tumblr**

After my Wordpress installation got violated, I decided to give [Tumblr](http://tumblr.com) a try. It was easy to get a blog up and running within a few minutes. The themes were beautiful and the community features were quite appealing. Unfortunately, this was back when they were having frequent downtimes, and soon after setting everything up, I lost access and quickly got frustrated.

Now that they seem to have solved their downtime problems, I would recommend Tumblr to any non-programmer looking to start a blog. It offers the best balance of features and ease-of-use, and it's aesthetically appealing. The community sharing and follow features make it easy to build up a readership. It's essentially the Twitter for blogs.

**Posterous**

Put off by Tumblr's unrelability, I ended up switching to [Posterous](http://posterous.com) for a while. When I switched, Posterous was basically a simplified Tumblr. Their most attractive feature was that I could just email my posts in from anywhere, formatted with Markdown. It didn't have any obvious problems, so I thought I had finally found my ideal blogging platform. However, over time, I began to realize just how much I hated its control panel interface. It was slow, poorly organized, and required way too many clicks for common tasts. Posterous would also regularly garble my Markdown formatting, forcing me to log into the control panel and manually edit the posts. I just ended up blogging less and less.

Now, Posterous looks far more complicated than it needs to be, and I'm not even sure I understand the point of Posterous Spaces, their new group blogging focus. It used to be that you could just email post@posterous.com, and they would email you back with a link to your new blog that automatically got set up. Any future emails from that same email address would get posted to the same blog. That's as simple as it gets. As far as I can tell, that setup process seems to be gone, or is at least completely hidden, which is a shame.

**Jekyll**

As I mentioned at the beginning of this post, I recently switched to Jekyll. So far, I am very happy with it. It's simple, fast, and secure. My entire blog is just a git repositary that's hosted on GitHub. In fact, [you can view all the source files for this site!](https://github.com/neilgupta/neilgupta.github.com) I can write my posts in any text editor in Markdown format, and just push the changes to GitHub. Of course, this approach requires significant technical knowledge, a desire to hack away at code to get everything running, and experience with using git for source control management. It matched my requirements perfectly, but may not for others.

If you do want to try Jekyll (which I highly recommend to anybody who enjoys tinkering with code), the easiest way to get started is to fork an existing blog and customize it to fit your needs. You can use [my blog](https://github.com/neilgupta/neilgupta.github.com) if you'd like, or one of the [many others](https://github.com/mojombo/jekyll/wiki/Sites). I used [Tom Preston-Werner's blog](http://tom.preston-werner.com/), who is the creator of Jekyll. Another option that was recently emailed to me is [Jekyll-Bootstrap](http://jekyllbootstrap.com/), which aims to be "the quickest and most hassle-free way to get your new Jekyll powered website up and running."

Jekyll is like a Tesla Roadster. It's insanely fast and cool, but it does require a significant upfront investment. It's barebones, but easy to customize, meaning it can be spruced up to be as beautiful as you want if you're willing to get dirty and hack at it yourself.

**My Recommendations**

To recap, if you're not a hacker, I'd recommend Tumblr. It offers the best balance of features and ease of use, and they seem to have solved their downtime problems. If, for some reason, you don't like Tumblr, check out Posterous. If that still doesn't suit your needs, [Wordpress.com](http://wordpress.com) (the cloud-hosted version of Wordpress that gives you the power of Wordpress without the headache) would be my third recommendation.

If you are a hacker, definitely check out Jekyll.

I would not bother with self-hosted blogs unless you really have a need for that level of control, since the cloud-based or static options are so powerful these days. And most likely, if you do need that level of control, you're probably better off investing a weekend and writing your own CMS.

**Bonus: OhLife**

I also recently discovered [OhLife](http://ohlife.com/), which is a great way to keep a private journal. It'll send you an email at your chosen frequency (daily, weekly, etc) asking "How did your day go?" and you just reply with your journal entry. I've only been using it for a week so far, but it may be the first time I've kept a journal for even this long.

**Bonus #2: Calepin**

While writing this post, I came across [Calepin.co](http://calepin.co/), which looks to offer a simplified cloud-based blogging platform that's a mix between Posterous and Jekyll. It lets you write your posts in any text editor and just save them to your [Dropbox](http://dropbox.com) folder. Then you click on Publish on their site, and it scans your Dropbox and publishes the new posts for you. Since it uses Dropbox, that means you can write your post pretty much anywhere (your computer, your iPhone, your iPad). The only annoying part I can think of is that you have to go to the website to click Publish. It also doesn't offer any customization options at all, and does not yet support custom domains. It looks like an interesting solution for somebody that wants some of the benefits of Jekyll, but has no coding experience. I doubt I will ever give this a try myself, but I've decided to leave this summary here for others.