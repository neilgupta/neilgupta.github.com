---
layout: post
title: Apple & DUNS
tags: development
location: Chicago
---

> **What is a D-U-N-S Number?**
>
> The D-U-N-S Number is a unique nine-digit number that identifies business entities on a location-specific basis. Assigned and maintained by Dun & Bradstreet (D&B), the D-U-N-S Number is widely used as a standard business identifier. To learn more, [visit dnb.com](http://www.dnb.com/).

Apple recently switched to requiring a DUNS number to open a company developer account. Previously, they only required you to upload your incorporation documents. Unfortunately, doing the verification themselves [got to be too much work](http://www.quora.com/iOS-Development/Why-does-Apple-require-a-duns-number-for-a-company-developer-account), so they decided to rely on a third party instead.

As a startup, you probably don't have a DUNS number, since apparently these are primarily used when doing business with the government. A quick search will bring up plenty of complaints about the DUNS process, with most people wondering why Apple would partner with such a shady company. There is a lot of confusion and questions surrounding the process, primarily "how long does it take?" and "how much should it cost?"

The [standard process](https://developer.apple.com/support/ios/D-U-N-S.html) for acquiring a DUNS number is to go to the D&B website, figure out how to navigate their site, fill out 10 pages of complicated, unnecessary information about your company, and then choose to wait 30 days for a free DUNS number or pay $50 to get it in 5 days. After you get your number, you have to [wait up to another 14 days](http://www.quora.com/Apple-Developer/What-is-the-schedule-Apple-uses-to-refresh-DUNS-numbers-in-their-system) for [Apple to sync their database](http://apple-duns.weebly.com) with DUNS, and then you can *finally* sign up account.

Do **not** do any of that.

I tried following the above process at first, and it is every bit as painful as it sounds. But with a little bit of exploration and luck, I found a better way to acquire a DUNS number and open my developer account within a couple relatively pain-free weeks:

1. [Use Apple's DUNS lookup tool](https://developer.apple.com/ios/enroll/dunsLookupForm.action) to search for your business' number, even if you know you don't have one.
2. Once you do the lookup, there will be a link to submit a request for a DUNS number to D&B on your behalf. In true Apple fashion, this will do everything automatically, so that you don't have to deal with the 10-page form on D&B's actual website.
3. If you want an account right away to test your app on an actual device, go ahead and purchase an individual account while you wait for this process to complete. Don't worry, you won't be paying twice.
4. In about 5 days, you will get a call from D&B, asking for more information. This is where you will answer a bunch of random questions about your company over the phone.
5. Within 24 hours after this call, you will receive your DUNS number by email. 
6. [Contact Apple](https://developer.apple.com/contact/submit.php) to convert your individual account into a corporate account. [From Apple](https://developer.apple.com/support/ios/account-management.html):

> **If I am enrolled as an individual, can I change to a company membership?**
>
> Yes. To convert your iOS Developer Program membership from an individual to a company, please [contact us](https://developer.apple.com/contact/submit.php). You can make this change only if you are the founder/co-founder of the company. As part of the conversion process, you may be asked to submit business documents to verify your company's identity.

In your message, include your DUNS number and your company's legal name. At this point, you will go through an excessive amount of back and forth via email and phone with Apple as they confirm your request and walk you through the process, but it is relatively painless and quick. Once the transition is done, you should have a company developer account within a month without paying an extra dollar over the $100 Apple membership fee!

Some caveats:

* This process only works if you are the founder/cofounder of your company.
* If you don't need a developer account urgently, don't bother with making an individual account.
* While your account is being converted, you will not have access to iTunes Connect and the provisioning portal.
* I actually had to fill out Apple's DUNS lookup form twice. After the first time, I got an email from DUNS after 5 days telling me my verification failed. I called D&B to find out why, and after a lot of phone tag, a representative told me they weren't able to reach me for verification. He told me to just fill out the form again, which I did, and I got a call and number less than 5 days later.
