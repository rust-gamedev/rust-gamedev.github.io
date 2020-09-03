+++
title = "This Month in Rust GameDev #13 - August 2020"
date = 2020-09-07
transparent = true
draft = true
+++

Welcome to the 13th issue of the Rust GameDev Workgroup’s
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

Table of contents:

- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Library & Tooling Updates](#library-tooling-updates)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Meeting Minutes](#meeting-minutes)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)
- [Bonus](#bonus)

<!--
Ideal section structure is:

```
### [Title]

![image/GIF description](image link)

A paragraph or two with a summary and [useful links].

_Discussions:
[/r/rust](https://reddit.com/r/rust/todo),
[twitter](https://twitter.com/todo/status/123456)_

[Title]: https://first.link
[useful links]: https://other.link
```

Discussion links are added only if they contain
some actual interesting discussions.

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Game Updates

## Learning Material Updates

## Library & Tooling Updates

### Bevy Engine

[![bevy logo](bevy_logo.png)](https://bevyengine.org/)

[Bevy](https://bevyengine.org/) is a brand new, refreshingly simple data-driven
game engine built in Rust. It aims to be:

- **Capable**: Offer a complete 2D and 3D feature set
- **Simple**: Easy for newbies to pick up, but infinitely flexible for power users
- **Data Focused**: Data-oriented architecture using the Entity Component System
paradigm
- **Modular**: Use only what you need. Replace what you don't like
- **Fast**: App logic should run quickly, and when possible, in parallel
- **Productive**: Changes should compile quickly ... waiting isn't fun

These last few weeks have been big for the Bevy project:

- Bevy was announced and [open sourced on GitHub](https://github.com/bevyengine/bevy)
- Bevy's features were introduced in the [Introducing Bevy](https://bevyengine.org/news/introducing-bevy/)
blog post
- Had a staggering number of people join the community. This required some quick
planning to handle the new size, which they outlined in the [Scaling Bevy](https://bevyengine.org/news/scaling-bevy/)
blog post
- Added an official [awesome-bevy repo](https://github.com/bevyengine/awesome-bevy)
with a huge number of community plugins, games, apps, and learning materials
- Rapier, a new pure-rust physics engine released an [official Bevy plugin](https://www.dimforge.com/blog/2020/08/25/announcing-the-rapier-physics-engine/#reaching-out-to-other-communities-bevy-and-javascript)
- Thanks to the generosity of individuals and companies, they quickly met their
first two funding goals on @cart's [Github Sponsors page](https://github.com/sponsors/cart):
"sustainable development" and "@cart makes minimum wage working on Bevy".
- Bevy received a glowing review from the Amethyst Engine team and they agreed
to collaborate in certain areas. See the [Addressing the Elephant in the Room](https://community.amethyst.rs/t/bevy-engine-addressing-the-elephant-in-the-room)
thread on the Amethyst forum for more details.

Bevy users started sharing their work on the [Bevy Discord showcase channel](https://discord.com/channels/691052431525675048/692648638823923732)

![bevy showcase](bevy_showcase.png)

In addition to the initial Bevy GitHub release, 114 pull requests were merged
this month. The changes can't all be listed in this post, but here are some highlights:

- A custom [async task system for Bevy](https://github.com/bevyengine/bevy/pull/384),
which significantly improves CPU usage and paves the way for future async work.
- Refactored data-driven ECS shader code to make it more maintainable, fix some bugs,
and ready to be optimized via the ECS change detection apis
- Support for "logical or" ECS queries as a compliment to the default "logical and"
- Numerous CI improvements
- Use shaderc to compile shaders for iOS builds
- GLTF loading improvements

Bevy also made good progress on its three focus areas:

- [Editor-Ready UI](https://github.com/bevyengine/bevy/issues/254)
- [Physically Based Rendering (PBR)](https://github.com/bevyengine/bevy/issues/179)
- [Scenes](https://github.com/bevyengine/bevy/issues/255)

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/i7bcwu/introducing_bevy_a_refreshingly_simple_datadriven/),
[hacker news](https://news.ycombinator.com/item?id=24123283),
[twitter announcement](https://twitter.com/cart_cart/status/1292903435155599361),
[amethyst forum](https://community.amethyst.rs/t/bevy-engine-addressing-the-elephant-in-the-room)_

## Popular Workgroup Issues in Github

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label-meeting] including full text notes
or [join the next meeting][join].

[label-meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [Embark's open issues][embark-open-issues] ([embark.rs]).
- [winit's "Good first issue" and “help wanted” issues][winit-issues].
- [gfx-rs's "contributor-friendly" issues][gfx-issues].
- [wgpu's "help wanted" issues][wgpu-help-wanted].
- [luminance's "low hanging fruit" issues][luminance-fruits].
- [ggez's "good first issue" issues][ggez-issues].
- [Veloren's "beginner" issues][veloren-beginner].
- [Amethyst's "good first issue" issues][amethyst-issues].
- [A/B Street's "good first issue" issues][abstreet-issues].
- [Mun's "good first issue" issues][mun-issues].
- [Bevy's "good first issue" issues][bevy-issues].

[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[winit-issues]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[abstreet-issues]: https://github.com/dabreegster/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue
[bevy-issues]: https://github.com/bevyengine/bevy/labels/good%20first%20issue

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

------

That's all news for today, thanks for reading!

Subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discussions of this post**:
[/r/rust](TODO),
[twitter](TODO).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
