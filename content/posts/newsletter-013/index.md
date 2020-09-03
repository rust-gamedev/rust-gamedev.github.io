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

### Piston

Piston is a modular game engine written in Rust.

A new [Discord channel](https://t.co/8YOj3auDr9?amp=1) has been set up for the Piston project.

Piston consists of a core library "piston" which itself are composed of smaller libraries for abstracting input, window and event loop.
This design helps reducing breaking changes in the ecosystem.

The core library `pistoncore-input` is now stabilized and reached 1.0!
This is the most important core abstraction, because it glues all libraries that are not independent of the core.

------

Dyon is a rusty dynamically typed scripting language.
It is developed and maintained as part of the Piston project, but can be used as a standalone library.

Dyon is designed from the bottom up to be a good gamedev scripting language for Rust.
It uses a lifetime checker instead of garbage collection, a mutability checker,
optional namespaces and ad-hoc types, named argument syntax, 4D vectors and HTML colors, plus a lot more features!

Recently, Dyon got better macro integration for native Rust types using `#` as a prefix.

Here is an example of this feature is being tested in an experimental offline 3D renderer (not open sourced):

```text
// Called by `set_simple(scene: _, sdf: _, id: _)`.
dyon_fn!{fn set_simple__scene_sdf_id(
    scene: #&mut SimpleScene,
    sdf: #&Sdf,
    id: f64
) {
    scene.sdfs[id as usize] = sdf.clone()
}}
```

To follow updates on Dyon, check out the subreddit [/r/dyon](https://old.reddit.com/r/dyon/).

------

Piston-Graphics is a library for 2D graphics, written in Rust, that works with multiple backends.

`Stencil::Increment` has been added and the ecosystem has been updated to the latest version.

------

The research branch of the Piston project, AdvancedResearch, has released a new ECS library [Nano-ECS](https://github.com/advancedresearch/nano_ecs).

This ECS design stores all components in a single array and uses bit masks for enabling/disabling components.
An entity can have maximum 64 components and must be initalized with all components it uses in the future.
Each entity has a slice into the array that stores all components.
The `World` object, `Component` and systems are generated using macros.

One research project with Nano-ECS is to prototype a UI framework for Rust with a UI editor (not open sourced yet).
This project uses Piston-Graphics by default, but can generate draw commands for processing by other 2D APIs.
It is also possible to override rendering of widgets for custom looks with Piston-Graphics, which is often useful in gamedev.
Recently, this project has gotten to a place where [tree-view interaction](https://twitter.com/PistonDeveloper/status/1299840279374110720) is working.

------

Discussions:
[Piston Discord Channel]: https://t.co/8YOj3auDr9?amp=1
[/r/dyon]: https://old.reddit.com/r/dyon/
[@PistonDeveloper (twitter)](https://twitter.com/PistonDeveloper)

[Piston]: https://github.com/pistondevelopers/piston
[Dyon]: https://github.com/pistondevelopers/dyon
[Piston-Graphics]: https://github.com/pistondevelopers/graphics
[Nano-ECS]: https://github.com/advancedresearch/nano_ecs

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
