+++
title = "This Month in Rust GameDev #33 - April 2022"
transparent = true
date = 2022-05-01
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 33rd issue of the Rust GameDev Workgroup's
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
[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun

- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Engine Updates](#engine-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Other News](#other-news)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Meeting Minutes](#meeting-minutes)
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)
- [Bonus](#bonus)

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

## Game Updates

## Engine Updates

### [Bevy v0.7][bevy-blog]

![bevy mushroom](bevy_mushroom.jpg)
_Creative Commons 'Stylized mushrooms' scene by QumoDone rendered in Bevy._

[Bevy][bevy] is a refreshingly simple data-driven game engine built in Rust. It is
[free and open source][bevy-git] forever!

Bevy 0.7 was a massive community effort. You can check out the
[full release blog post here][bevy-blog], but here are some highlights:

- [Skeletal animation and mesh skinning][bevy-animation]
- [GLTF animation importing][bevy-gltf]
- [Unlimited* point lights in a scene][bevy-unlimited]
- [Improved clustered forward rendering: dynamic/adaptive clustering and faster, more accurate cluster assignment][bevy-light-opt]
- [Compressed texture support (KTX2 / DDS / .basis): load more textures in a scene, faster][bevy-compressed]
- [Compute shader / pipeline specialization: Bevy's flexible shader system was ported to compute shaders, enabling hot-reloading, shader defs, and shader imports][bevy-compute]
- [Render to texture: cameras can now be configured to render to a texture instead of a window][bevy-render-texture]
- [Flexible mesh vertex layouts in shaders][bevy-vertex]
- [ECS improvements: Order systems using their names, Query::many_mut, use conflicting parameters in systems via ParamSets, WorldQuery derives][bevy-ecs]
- [Documentation improvements: better examples, more doc tests and more coverage][bevy-docs]
- [More audio control: pause, volume, speed, and looping][bevy-audio]
- [Power usage options to enable only updating Bevy Apps when input occurs][bevy-power]

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/u4e63h/bevy_07/),
[Hacker News](https://news.ycombinator.com/item?id=31043668),
[Twitter](https://twitter.com/cart_cart/status/1515031150313443332)_

[bevy]: https://bevyengine.org
[bevy-git]: https://github.com/bevyengine/bevy
[bevy-blog]: https://bevyengine.org/news/bevy-0-7
[bevy-animation]: https://bevyengine.org/news/bevy-0-7/#skeletal-animation
[bevy-gltf]: https://bevyengine.org/news/bevy-0-7/#gltf-animation-importing
[bevy-unlimited]: https://bevyengine.org/news/bevy-0-7/#unlimited-point-lights
[bevy-light-opt]: https://bevyengine.org/news/bevy-0-7/#light-clustering-features-and-optimizations
[bevy-compressed]: https://bevyengine.org/news/bevy-0-7/#compressed-gpu-textures
[bevy-compute]: https://bevyengine.org/news/bevy-0-7/#bevy-native-compute-shaders
[bevy-render-texture]: https://bevyengine.org/news/bevy-0-7/#render-to-texture
[bevy-vertex]: https://bevyengine.org/news/bevy-0-7/#flexible-mesh-vertex-layouts
[bevy-ecs]: https://bevyengine.org/news/bevy-0-7/#ergonomic-system-ordering
[bevy-docs]: https://bevyengine.org/news/bevy-0-7/#documentation-improvements
[bevy-audio]: https://bevyengine.org/news/bevy-0-7/#audio-control
[bevy-power]: https://bevyengine.org/news/bevy-0-7/#eventloop-power-saving-modes

## Learning Material Updates

## Tooling Updates

## Library Updates

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Discussions

<!-- Links to handpicked reddit/twitter/urlo/etc threads that provide
useful information -->

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

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
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
