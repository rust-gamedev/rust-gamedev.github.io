+++
title = "This Month in Rust GameDev #14 - September 2020"
date = 2020-10-05
transparent = true
draft = true
+++

Welcome to the 14th issue of the Rust GameDev Workgroup's
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

Discussion links are added only if they contain
some actual interesting discussions.

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Game Updates

## Learning Material Updates

## Library & Tooling Updates

### [Bevy Engine][bevy]

[![bevy logo](bevy_logo.png)](https://bevyengine.org/)

[Bevy][bevy] is a refreshingly simple data-driven
game engine built in Rust. It is [free and open source][bevy-repo] forever!

#### **Bevy 0.2 Released**

This month, thanks to 87 contributors, 174 pull requests, and their
[generous sponsors][bevy-sponsors], **Bevy 0.2** was released. You can view the
[full Bevy 0.2 announcement here][bevy-0-2]. Here are some highlights:

- **Async Task System**: Bevy now has a brand new async-friendly task system,
which enables the creation of context-specific task pools. For example, you might
have separate pools for compute, IO, networking, etc. This also provides the
flexibility to load balance work appropriately according to work type and/or priority.
Bevy (and a number of other rust game engines and ecs frameworks using rayon)
have received feedback that they were overly cpu hungry / usage was not proportional
to "real" work done. This new task system completely replaces Rayon and the cpu
usage wins were huge!
- **Initial Web Platform Support**: (A subset of) Bevy now runs on the web using
WebAssembly/WASM! Specifically, Bevy apps can run Bevy ECS schedules, react to
input events, create an empty canvas (using winit), and a few other things. This
is a huge first step, but it is important to call out that there are still a
number of missing pieces, such as 2D/3D rendering, multi-threading, and sound.
- **Parallel Queries**: Bevy ECS Queries are a flexible way to retrieve data from
the Entity Component System. Systems that use queries already run in parallel,
but before this change the queries themselves could not be iterated in parallel.
Bevy 0.2 adds the ability to easily iterate queries in parallel, which builds on
top of the new Async Task System.
- **Transform System Rewrite**: Bevy's old transform system used separate
`Translation`, `Rotation`, and `Scale` components as the "source of truth",
which were then synced to a `LocalTransform` component after each update. There
are Good Reasons™ to use this approach, but it created a "lag" between the
calculated LocalTransform and the source components and dataflow between components
is hard to reason about. This problem was resolved by making a newer, simpler
transform system that uses a consolidated `Transform` type.  
- **Joystick/Gamepad Input**: The Bevy Input plugin now has cross-platform support
for most controllers thanks to the gilrs library!
- **Bevy ECS Performance Improvements**:
  - *Generational Entity IDs*: Entity IDs have changed from being UUIDs to incrementing
  generational indices. Random UUIDs were nice because they could be created anywhere,
  were unique across game runs, and could be safely persisted to files or reused
  across networks. Unfortunately they ended up being too slow relative to the alternatives.
  The randomness had a measurable cost and entity locations had to be looked up
  using a hash map.
  - *Read Only Queries*: A "read only" trait was implemented for queries that
  don't mutate anything. This allows Bevy to guarantee that a query won't mutate
  anything.
  - *Lock-Free World Apis*: This gave a really nice speed boost. World APIs are
  still safe due to a combination of the new "read only queries" and changing
  World mutation apis to be a mutable World borrow.
  - *Direct Component Lookup*: As a result of the changes above, direct component
  lookup is about 4x faster than it used to be!

#### **Community Plugin Updates**

- **[bevy_rapier](https://github.com/dimforge/bevy_rapier)**: Rapier Physics'
official Bevy plugin was updated to support Bevy 0.2
- **[bevy_ninepatch](https://crates.io/crates/bevy_ninepatch)**: Display 9-Patch
UI elements, where you can specify how different parts of a PNG should grow
- **[bevy_mod_picking](https://github.com/aevyrie/bevy_mod_picking)**: 3d cursor
picking and highlighting
- **[bevy_contrib_colors](https://crates.io/crates/bevy_contrib_colors)**: A
simple color library
- **[bevy_input_map](https://crates.io/crates/bevy_prototype_input_map)**: Converts
user inputs from different input hardware into game specific actions. Ex: keyboard
"Space" or joystick "A" can be mapped to a "Jump" Action.
- **[bevy_prototype_lyon](https://github.com/Nilirad/bevy_prototype_lyon)**: Draw
2D shapes, like triangles, circles, and beziers
- **[bevy_contrib_inspector](https://github.com/jakobhellermann/bevy-contrib-inspector)**:
Visually edit fields of your bevy resources in a browser or native view.

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/iw1yyp/bevy_02),
[hacker news](https://news.ycombinator.com/item?id=24530698),
[twitter](https://twitter.com/cart_cart/status/1307445918535315456)_

[bevy]: https://bevyengine.org
[bevy-repo]: https://github.com/bevyengine/bevy
[bevy-0-2]: https://bevyengine.org/news/bevy-0-2
[bevy-sponsors]: https://github.com/sponsors/cart

## Popular Workgroup Issues in Github

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
- [SIMple Mechanic's good first issues][simm-issues].
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
[simm-issues]: https://github.com/mkhan45/SIMple-Mechanics/labels/good%20first%20issue
[bevy-issues]: https://github.com/bevyengine/bevy/labels/good%20first%20issue

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

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
