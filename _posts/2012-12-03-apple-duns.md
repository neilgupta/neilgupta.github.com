---
layout: post
title: Dear Apple, DUNS is a scam, but you already know that.
tags: development
location: Chicago
---

> **What is a D-U-N-S Number?**
>
> The D-U-N-S Number is a unique nine-digit number that identifies business entities on a location-specific basis. Assigned and maintained by Dun & Bradstreet (D&B), the D-U-N-S Number is widely used as a standard business identifier. To learn more, [visit dnb.com](http://www.dnb.com/).

Apple recently switched to requiring a DUNS number to open a company developer account. Previously, they only required a company to upload their incorporation documents. Unfortunately, manually validating those documents themselves [became too much of a burden](http://www.quora.com/iOS-Development/Why-does-Apple-require-a-duns-number-for-a-company-developer-account), so they decided to rely on the same international database that the government uses to identify companies instead. Basically, it allows Apple to offload the manual labor of verifying companies to a third party at no cost.

As a startup, you probably don't have a DUNS number, since they are primarily used when doing business with the government. A quick search will bring up plenty of complaints about the DUNS process, with most people wondering why Apple would partner with such a shady company. There is a lot of confusion and questions surrounding the process, primarily "how long does it take?" and "how much should it cost?"

The [standard process](https://developer.apple.com/support/D-U-N-S/) for acquiring a DUNS number is to go to the D&B website, figure out how to navigate their site, fill out 10 pages of complicated, unnecessary information about your company, and then choose to wait 30 days for a free DUNS number or pay $50 to get it in 5 days. After you get your number, you have to [wait up to another 14 days](http://www.quora.com/Apple-Developer/What-is-the-schedule-Apple-uses-to-refresh-DUNS-numbers-in-their-system) for [Apple to sync their database](http://apple-duns.weebly.com) with DUNS, and then you can *finally* sign up account.

Do **not** do any of that.

I tried following the above process at first, and it is every bit as painful as it sounds. But with a little bit of exploration and luck, I found a better way to acquire a DUNS number and open my developer account within a week:

1. [Use Apple's DUNS lookup tool](https://developer.apple.com/enroll/duns-lookup/) to search for your business' number, even if you know you don't have one.
2. Once you do the lookup, there will be a link to submit a request for a DUNS number to D&B on your behalf. This will handle everything automatically, so you don't have to touch D&B's website.
3. Within 5 days, you will get a call from D&B, asking for more information. This is where you will answer a bunch of questions about your company over the phone.
4. Within 24 hours after this call, you will receive your DUNS number by email. 


If you need an account right away to test your app on an actual device, go ahead and purchase an individual account while you wait for this process to complete. Don't worry, you won't be paying twice. Once you have your DUNS number, ask Apple to convert your individual account into a corporate account. [From Apple](https://developer.apple.com/support/ios/account-management.html):

> **If I am enrolled as an individual, can I change to a company membership?**
>
> Yes. To convert your iOS Developer Program membership from an individual to a company, please [contact us](https://developer.apple.com/contact/submit.php). You can make this change only if you are the founder/co-founder of the company. As part of the conversion process, you may be asked to submit business documents to verify your company's identity.

In your message, include your DUNS number and your company's legal name. Apple will call you to confirm your request and walk you through the process, but it is relatively painless and quick. Once the transition is done, you should have a company developer account within a week without paying an extra dollar over the $100 Apple membership fee.

After a frustrating month of cursing at D&B, I was stunned at how easy it turned out to be after using the link on Apple's site. That suggests to me that even Apple knows just how bad D&B is, but views them as a necessary evil.

While I understand Apple's desire to partner with D&B, I hope that Apple will at least work to make the process less painful and confusing, so that posts like this one are no longer necessary. For starters, they could more visibly abstract everything so that they control the experience and simply pass the data to D&B for validation. The fastest way to do that would be to direct everybody through the steps I just outlined above, rather than telling developers to go directly to D&B first. Ideally, Apple would not even mention D&B, and just allow us to register through their website, while they take care of dealing with D&B on our behalf.

*Note:* I actually had to fill out Apple's DUNS lookup form twice. After the first time, I got an email from DUNS after 5 days telling me my verification failed. I called D&B to find out why, and after some phone tag, a representative told me they weren't able to reach me for verification (I never got a call). He told me to just fill out the form again, which I did, and I got a call and number less than 5 days later.

**Update:** Apparently, [Enterprise developer accounts](https://developer.apple.com/programs/ios/enterprise/) ($300/year) have always required a DUNS number, so this is not uncharted territory for Apple. However, requiring it for regular company accounts is new, and that's where the problem is. Most companies applying for an Enterprise account probably already had a DUNS number, or at least had the resources to acquire one quickly without Apple's help. This is not true for the hundreds of startups making iOS apps that have never heard of a DUNS number before. (Thanks [@alanzeino](https://twitter.com/alanzeino/status/286384362872786944) for the heads up.)

**Update (2019)**: I just came back to this post to apply for a new DUNS number 6 years later, and looks like Apple followed my advice and updated their [DUNS info page](https://developer.apple.com/support/D-U-N-S/) with the above steps! 🥳
