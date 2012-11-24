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

**Terminal Hacks**

Disable Expose animations.

`defaults write com.apple.dock expose-animation-duration -int 0; killall Dock`

Disable Launchpad animations. [See more](http://www.defaults-write.com/disable-launchpad-fade-effects/#.ULBWx6VOIy4)

```
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0
killall Dock
```

Disable auto-hiding dock delay. [See more](http://www.defaults-write.com/remove-the-dock-auto-hide-show-delay/#.ULBXRKVOIy4)

`defaults write com.apple.Dock autohide-delay -float 0; killall Dock`

Enable a hidden gesture to go back to your most recent Space with a four finger double-tap. [See more](http://www.defaults-write.com/enable-the-hidden-go-to-recent-space-gesture/#.ULBWWKVOIy4)

`defaults write com.apple.dock double-tap-jump-back -bool TRUE; killall Dock`

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
* Enable "New Terminal Tab at Folder" service from Keyboard Shortcuts System Preferences pane

![System Preferences Screenshot](https://pbs.twimg.com/media/A1AmLy6CUAElGq4.jpg:large)