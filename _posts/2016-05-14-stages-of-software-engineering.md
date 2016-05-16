---
layout: post
title: The Stages of Software Engineering
tags: thoughts
location: Chicago
---

If you've ever spent time around small children, you know that they can be very egocentric. They only talk in first person and everything revolves around them. It's not their fault, they don't yet have the experience to contemplate the world from any other perspective than their own. As they grow older, their scope of the world expands and they're able to consider close family and friends. Then, they think about their community, their city, their country, and finally their place in the world. In psychology, this is known as Piaget's stages of cognitive development.

In software engineering, there are similar stages of skill development that can tell us where a person is in their career based on how they think.

# Stage 0: The Non-Developer

You don't write code, but you want to. You're taking classes or teaching yourself, but you can't write a functioning todo list on your own yet.

# Stage 1: Junior Developer

You made it! You're a developer!

When you're a junior developer, you're focused on making your own code work. Most likely, you're still learning the ropes and are happy just to get a function that executes correctly. Your code is pretty sloppy and hard to maintain, but it gets the job done. For example, it probably looks like one large procedural function.

There is no design step, you just dive into the code.

# Stage 2: Software Engineer

In stage 2, your focus expands from your own code to your team's code. You realize you're part of a larger team, and you want to write well-written code that's considerate of the rest of your team. This means you're writing smaller, re-useable methods, commenting your code, and following style guidelines so that you're coworkers can reason about and benefit from your code too.

Your design step involves understanding the surrounding code so you can fit in and play nice.

# Stage 3: Senior Engineer

Now that you've mastered helping your team write quality code, your focus expands to your organization. Just as you realized you were one member on a team, now you realize you're one of many teams in a company. You notice how each team is repeatedly solving the same problem, and you want to write code that's considerate of the rest of your organization. This presents itself in two ways. First, you're writing re-usable libraries or services that can benefit more than just your team. Second, you're writing thorough documentation of code, APIs, processes, and decisions, so others can apply your team's work. Someone once told me that the mark of a senior engineer is that you make work for people around you easier and more enjoyable.

Your design step involves understanding the actual problem and how it can be abstracted to reduce the complexity of your project.

# Stage 4: The Architect

By stage 4, you're outputting high quality, re-useable, well documented code that your entire organization is benefitting from. What's next? Well now you realize you're just one of many companies. How do you write code that benefits the world? 

![We're making the world a better place... through scalable fault-tolerant distributed databases.](http://heineventures.com/wp-content/uploads/2015/01/make-world-better-place-silicon-valley.gif)

<p class="caption">No, not like that.</p>

You start abstracting frameworks so that it can help other companies solve similar problems. You open-source entire frameworks and spend time supporting it for the community. Instead of writing an internal library that is specifically optimized for your infrastructure, you release a much more generic framework. Note that this is different than just open-sourcing your projects and hoping somebody else finds it useful.

Your design step involves understanding how others solve this problem and whether it can be abstracted enough to prevent reinventing the wheel again.

These stages of engineering are marked by an expanding focus from self all the way to the world, kind of like circles in a tree trunk[^1]. However, just because you've reached a certain stage doesn't mean you never write code from an earlier stage. For example, a senior engineer might still right hairy procedural functions for a hack or an architect will likely still need to solve internal-specific problems as well. What matters is how you approach the design step and what your priorities are.

So, what stage of engineering are you at?

[^1]: This paradigm of expanding circles of focus can be used to measure much more than child and engineer development too. For example, [this excellent (but very long) article](http://waitbutwhy.com/2014/10/religion-for-the-nonreligious.html) discusses self-awareness and spirituality in a similar fashion.
