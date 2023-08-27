+++
title = "This Month in Rust GameDev #48 - July 2023"
transparent = true
date = 2023-08-25
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 48th issue of the Rust GameDev Workgroup's
monthly newsletter.
[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.
We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

You can follow the newsletter creation process
by watching [the coordination issues][coordination].
Want something mentioned in the next newsletter?
[Send us a pull request][pr].
Feel free to send PRs about your own projects!

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
[coordination]: https://github.com/rust-gamedev/rust-gamedev.github.io/issues?q=label%3Acoordination

- [Announcements](#announcements)
- [Game Updates](#game-updates)
- [Engine Updates](#engine-updates)
- [Learning Material Updates](#learning-material-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Other News](#other-news)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)

<!--
Ideal section structure is:

```
### [Title]

![image/GIF description](image link)
_image caption_

A paragraph or two with a summary and [useful links].

_Discussions:
[/r/rust](https://reddit.com/r/rust/todo),
[twitter](https://twitter.com/todo/status/123456)_

[Title]: https://first.link
[useful links]: https://other.link
```

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Announcements

## Game Updates

## Engine Updates

## Learning Material Updates

## Tooling Updates

## Library Updates

### [bevy_xpbd]

![Balls held by string swinging and hitting each other in a Newton's cradle](bevy_xpbd.gif)
_Newton's cradle simulated using bevy_xpbd_

[bevy_xpbd] by [@Jondolf] is a 2D and 3D physics engine based on
Extended Position Based Dynamics for the Bevy game engine.
It uses Bevy's Entity Component System (ECS) directly for the simulation data
and logic, which makes the design and API feel better integrated into Bevy while
avoiding the overhead associated with copying lots of data to a separate data
structure like in many other physics engines such as bevy_rapier.

In mid-July, bevy_xpbd 0.2 was released, featuring:

- Spatial queries (ray casting, shape casting, point projection, intersection tests);
- Bevy 0.11 support;
- Improved scheduling;
- Velocity damping;
- Gravity scale;
- Locking translational and rotational axes;

and much more. You can find more details in the
[release post][bevy-xpbd-post] and [changelog][bevy-xpbd-changelog].

A lot of work was also done during the rest of July. The physics debug renderer
was improved, collision stability issues were significantly reduced, external
impulses were added, and Bevy's own `Transform`s can now be used directly
for moving bodies. The narrow phase part of collision detection was also
refactored into a separate plugin, which makes multithreading and several
upcoming features much easier to implement while also improving modularity.

_Discussions: [/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/14zr5i5/bevy_xpbd_02)_

[bevy_xpbd]: https://github.com/Jondolf/bevy_xpbd
[@Jondolf]: https://github.com/Jondolf
[bevy-xpbd-post]: https://joonaa.dev/blog/03/bevy-xpbd-0-2-0
[bevy-xpbd-changelog]: https://github.com/Jondolf/bevy_xpbd/releases/tag/v0.2.0

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

## Discussions

<!-- Links to handpicked reddit/twitter/urlo/etc threads that provide
useful information -->

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
