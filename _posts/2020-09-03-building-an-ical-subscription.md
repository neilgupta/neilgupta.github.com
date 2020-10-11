---
layout: post
title: Building an iCal Subscription
location: Chicago
---

I recently wanted to sync events between [Guilded](https://guilded.gg) and my personal calendar. The simplest solution is to generate an [iCalendar](https://en.wikipedia.org/wiki/ICalendar) file that is served from a personal endpoint for each user. When they subscribe, their calendar app basically acts like an RSS reader and periodically checks the endpoint for the latest list of events.

There are plenty of libraries in your chosen language to generate the `.ics` file, and the spec is simple enough that you could even generate it by hand. Here's a sample with a single event:

```
BEGIN:VCALENDAR
VERSION:2.0
CALSCALE:GREGORIAN
PRODID:Guilded
METHOD:PUBLISH
X-WR-CALNAME:Guilded
X-PUBLISHED-TTL:PT1H
BEGIN:VEVENT
UID:8fd1dd04-0243-419f-8b0e-186af1375e38-event-209@guilded.gg
SUMMARY:My Fun Event
DTSTAMP:20200903T063216Z
DTSTART:20200826T070000Z
DTEND:20200826T080000Z
DESCRIPTION:yoooo\n\nhttps://neil.gg
URL:https://guilded.gg/teams/...
LOCATION:Monkey Island
STATUS:CONFIRMED
CREATED:20200822T113900Z
END:VEVENT
END:VCALENDAR
```

In a nutshell, you can add as many `VEVENT` blocks as you need to show more events. The only catch is that this file needs to show _all_ events that you want in the user's calendar. Unlike an RSS reader, most calendar apps won't keep a cache of old events around. That means over time, this file can grow very large. I recommend limiting it to a sensible range (i.e., events from 1 month ago to 1 year from now), depending on your use case.

There are also some little things you need to know to actually make this calendar work with the variety of calendar services that I couldn't find documented anywhere. After a lot of investigating (and trial and error), here's some tips and tricks to help you build your ICS endpoint faster.

## Content Headers

Make sure you're serving your calendar file with the right headers. In particular, they should look like

```
Content-Type: text/calendar; charset=utf-8
Content-Disposition: attachment; filename="calendar.ics"
```

This is pretty straightforward, but easy to miss.

## `Accept` Header

Your server needs to respond to `Accept: text/calendar` request headers from the client. It looks like iOS is the only one that actually sends the header, but if the request gets rejected, it shows an unhelpful "Unable to verify account information" error. Since a rejected `Accept` header returns a `406 Not Acceptable` response, it's easy to miss if you don't normally log 4xx errors.

## URL Length

This one was frustrating to discover, but Google Calendar has a max url length of 256 characters. This isn't documented anywhere and trying to use a longer URL doesn't show any error, the UI just silently fails. In my case, the user token was going over that limit, so I had to change my hashing algorithm to create a shorter token.

## Query Params

As far as I can tell, query params do work with most calendar apps, but I'd still recommend avoiding them if possible. For example, I changed the calendar path from `https://guilded.gg/users/me/calendar.ics?token=blabla` to `https://guilded.gg/users/blabla/calendar.ics` to ensure that we don't hit issues with some obscure calendar app. It also helps cut down the url length as a bonus.

## Testing

It turns out the Apple Calendar on macOS is the most forgiving and works exactly like your browser. It'll happily sync any valid ICS file without any of the setup above. That means you definitely want to test your endpoint with other apps directly, especially iOS, Google Calendar, and Outlook. I recommend using something like [ngrok](https://ngrok.com) to quickly test your local endpoint. As a bonus, it includes a detailed dashboard at `http://localhost:4040` for viewing request headers and replaying requests to make debugging _much_ easier. This is how I resolved the 406 error above!

![ngrok](/post_files/ngrok.png)
