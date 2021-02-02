+++
title = "This Month in Rust GameDev #18 - January 2021"
date = 2021-02-08
transparent = true
draft = true
+++

Welcome to the 18th issue of the Rust GameDev Workgroup's
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

Table of contents:

- [Rust GameDev Podcast](#rust-gamedev-podcast)
- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Engine Updates](#engine-updates)
- [Library & Tooling Updates](#library-tooling-updates)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Requests for Contribution](#requests-for-contribution)

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

## [Rust GameDev Podcast][podcast-5]

![text logo](podcast.jpeg)

[The 5th podcast episode][podcast-5] is an interview with
[Alex Ene][@_AlexEne_] creator of an upcoming dwarven simulation
game, [Dwarf World][dwarf-world].

> In this weeks episode, Richard and Forest chat to Alex Ene,
> creator of the dwarven simulation game, Dwarf World.
> We cover writing custom engines, unit testing, build
> systems and picking the right frameworks for your game.

Listen and subscribe from the following platforms:
[Rust GameDev Podcast (simplecast)](https://rustgamedev.com/),
[Apple Podcasts](https://podcasts.apple.com/gb/podcast/rust-game-dev/id1526304768),
[Spotify](https://open.spotify.com/show/7HRfGnTcXkLkQd9fxJbDGj),
[RSS Feed](https://feeds.simplecast.com/C6NQglnL),
[Google Podcasts](https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9DNk5RZ2xuTA).

[podcast-5]: https://rustgamedev.com/episodes/interview-with-alex-ene
[@_AlexEne_]: https://twitter.com/_Alex_Ene_
[dwarf-world]: https://dwarf.world

## Game Updates

### [Teki (敵)][teki]

![teki preview](teki.gif)

[Teki][teki] is a free and open-source fangame of the [Tōhō] series
using [SDL2] and [Legion] for ECS. Thanks to WebAssembly - via [wasm-pack]
\-, teki can be played [online][teki-online].

It is aimed to be a shoot ’em up game with "lots of bullets"
a.k.a danmaku 弾幕 - literally "barrage" or "bullet curtain" in japanese.

The project is still at a “very” early stage of development (Dec. 2020).

[teki]: https://github.com/o2sh/teki
[teki-online]: https://o2sh.github.io/teki
[Tōhō]: https://en.wikipedia.org/wiki/Touhou_Project
[SDL2]: https://github.com/Rust-SDL2/rust-sdl2
[Legion]: https://crates.io/crates/legion
[wasm-pack]: https://rustwasm.github.io/wasm-pack

### [Antorum]

![Some players hanging out next to the bank Vault in Belmart](antorum-2-1-2021.jpg)
_Hanging out by the vault_

[Antorum] is a micro-multiplayer online role-playing game by [@dooskington].
The game server is written in Rust, and the official client is being developed
in Unity.

Banking was implemented this month! Players can now store their items and wealth
in a safe place. Additionally, the concept of "item combinations" was implemented,
bringing more interesting crafting scenarios into the game.

- [#28: Banking](https://ratwizard.dev/dev-log/antorum/28);
- [#29: Item Combinations](https://ratwizard.dev/dev-log/antorum/29);

[Antorum]: https://ratwizard.dev/dev-log/antorum
[@dooskington]: https://twitter.com/dooskington

## Learning Material Updates

## Engine Updates

### [Tetra]

[Tetra] is a simple 2D game framework, inspired by XNA and Raylib. This month,
versions 0.5.7 and 0.5.8 were released, with various changes:

- Basic multisampled anti-aliasing support (with further improvements to come).
- Functions for generating primitive shape meshes.
- A more flexible `Rectangle` type.
- Lots of bug fixes and docs improvements.

For full details, see the [changelog][tetra-changelog].

Additionally, work on [version 0.6][tetra-06-changelog] has begun, with a release
planned for some time in February!

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md
[tetra-06-changelog]: https://github.com/17cupsofcoffee/tetra/blob/0.6/CHANGELOG.md

## Library & Tooling Updates

### [`LDtk-rs`]

[`LDtk-rs`] is a Rust crate for reading the [LDtk] map file format. The bindings
to the LDtk format are 100% automatically generated from the LDtk JSON Schema,
with the option to download the latest JSON Schema at build time for automatic
updates.

[`LDtk-rs`]: https://github.com/katharostech/ldtk-rs
[LDtk]: https://ldtk.io

### [rkyv]

[rkyv] is a zero-copy deserialization framework for Rust. It's similar to
FlatBuffers and Cap'n Proto and can be used for data storage and messaging.

Version 0.3 was released this month and brought some highly-requested features:

- A new hashmap implementation using perfect hashing to decrease memory usage
  and fix portability issues.
- The `Unarchive` trait to enable more traditional data deserialization for
  archived types.
- Improved validation performance.
- Better error messages and API ergonomics.
- A [book][rkyv-book] with more narrative documentation on architecture and
  internals.
- More tests and realistic benchmarks against other popular serialization
  frameworks.

The next update will be [v0.4][rkyv-v0.4] and is on the way soon with a release
date around mid-February.

[rkyv]: https://github.com/djkoloski/rkyv
[rkyv-book]: https://djkoloski.github.io/rkyv
[rkyv-v0.4]: https://github.com/djkoloski/rkyv/milestone/5

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [Embark's open issues][embark-open-issues] ([embark.rs]).
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

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discussions of this post**:
[/r/rust](TODO),
[twitter](TODO).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
