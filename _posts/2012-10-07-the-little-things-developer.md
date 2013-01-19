---
layout: post
title: The Little Things
tags: development
location: Chicago
---

Every developer has a list of tools and tweaks that they build up over time to increase their productivity. Here is a list of the little things I find useful to install everytime I set up a new machine. For reference, I am running Mac OS X 10.8 Mountain Lion, so many of these tools may be specific to that platform. I will update this list as it changes.

**QuickLook**

* [View plaintext files without an extension in QuickLook](https://github.com/whomwah/qlstephen)
* [View image dimensions in QuickLook preview](https://github.com/Nyx0uf/qlImageSize)
* [View Markdown files](https://github.com/toland/qlmarkdown/)

**Terminal Hacks**

See my [osx.sh](https://github.com/neilgupta/dotfiles/blob/master/osx.sh) for a list of useful Terminal hacks.

**Keyboard Remapping**

See these articles to set up your own awesome keyboard mappings.

* [A Modern Space Cadet](http://stevelosh.com/blog/2012/10/a-modern-space-cadet/#pckeyboardhack) - Uses KeyRemap4MacBook and PCKeyboarcHack to remap keys to be more useful.
* [Using Slate](http://thume.ca/howto/2012/11/19/using-slate/) - Walks through how to set up Slate to efficiently manage windows on your Mac.

See my [.slate config file](https://github.com/neilgupta/dotfiles/blob/master/slate) and my [KeyRemap4MacBook xml file](https://github.com/neilgupta/dotfiles/blob/master/KeyRemap4MacBook/private.xml) to see how I'm using these tools.

In addition, modify Application windows in System Preferences -> Keyboard -> Keyboard Shortcuts -> Mission Control to respond to `hyper+tab`.

**Sublime Text 2**

* [Install Sublime Text 2](http://www.sublimetext.com/2)
* [Install Package Control](http://wbond.net/sublime_packages/package_control)
* Install `LESS` via Package Control ([GitHub](https://github.com/danro/LESS-sublime))
* Install `CoffeeScript` via Package Control ([GitHub](https://github.com/Xavura/CoffeeScript-Sublime-Plugin))
* Install `jQuery` via Package Control ([GitHub](https://github.com/SublimeText/jQuery))
* Install `Git` via Package Control ([GitHub](https://github.com/kemayo/sublime-text-2-git))
* Install `Tag` via Package Control ([GitHub](https://github.com/SublimeText/Tag))

**Other**

* [Inconsolata-g monospaced font](http://leonardo-m.livejournal.com/77079.html) - because the default system fonts suck for code. Be sure to change the default font in Terminal preferences to Inconsolata-g 12pt antialiased. In ST2, add the following line to preferences: `"font_face": "Inconsolata-g"`
* [Setup dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
* Enable "New Terminal Tab at Folder" service from Keyboard Shortcuts System Preferences pane

![System Preferences Screenshot](https://pbs.twimg.com/media/A1AmLy6CUAElGq4.jpg:large)