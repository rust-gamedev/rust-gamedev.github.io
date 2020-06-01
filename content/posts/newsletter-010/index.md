+++
title = "This Month in Rust GameDev #10 - May 2020"
date = 2020-06-01
transparent = true
draft = true
+++

<!-- markdownlint-disable no-trailing-punctuation -->
<!-- markdownlint-enable line-length -->

Welcome to the tenth issue of the Rust GameDev Workgroup’s
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

### For The Quest

![For The Quest screenshot](forthequest.jpg)

For The Quest is the working title for a game in early development by
[@seratonik]. Written entirely in Rust and compiled to WebAssembly,
For The Quest is destined to become a MMORPG set in a post-apocalyptic
Earth where your goal is to band together into like-minded factions to
not only survive in this new world, but to unearth the cause of humanity's
downfall.

For The Quest is currently undergoing engine development with a focus on
running smoothly in modern browsers using WebGL 2.0 before moving onto
native desktop ports.

New developments in May:

- All game assets are now defined server-side in a database and are streamed
  to the client on demand as areas are requested
- New desert / sand assets added to test the new asset loading system
- Translucent water surfaces with primitive refraction effect added
- New "picking" system implemented that is aware of the 3D coordinates at
  location of selection in addition to being aware of which object selected
- A basic world editing UI has been built in React / Javascript and interfaced
  to the game engine via WASM bindings, features include: displaying info about
  currently selected object, deleting objects, adding any object type, creating
  new maps and teleporting to any existing map
- Map changes are persisted on the server and location of player is now
  restored when closing the client and coming back later

Follow [@seratonik] on Twitter for updates.

[@seratonik]: https://twitter.com/seratonik

## Learning Material Updates

## Library & Tooling Updates

### [Goods]

Asset management library that aims to be easy to use, flexible, extensible
and support virtually any use-case:

* Need to load compund asset that pulls subassets without boilerplate on
  call-site? All heavy-lifting for loading subassets can be done in `Format`
  implementation for the asset type.
* Asset is made of GPU resources and access to graphics device is required to
  create asset instance? `Asset::build` receives reference to `Asset::Context`.
* Targeting browser? `goods` support building for wasm
  and even bundle Fetch API based asset data source.
* Target doesn't have `std`? Core types and traits are `no_std` compatible.
  But `alloc` is required.
* Looking to keep things tidy and fast to build? Clean build of the crate
  with no features takes about ~3s on modern CPU.
* Integration with `serde` ecosystem? Special `Format` implementations can load
  assets whose representation implement `serde::de::DeserializeOwned`.
  Crate includes `Format`s for loading assets from JSON, YAML and RON docuemts.

Crate's repo has few examples with nearly each line of the code explained.

[goods]: https://crates.io/crates/goods

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label-meeting] including full text notes
or [join the next meeting][join].

[label-meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [Embark's open issues][embark-open-issues] ([embark.rs]);
- [winit's "Good first issue" and “help wanted” issues][winit-issues];
- [gfx-rs's "contributor-friendly" issues][gfx-issues];
- [wgpu's "help wanted" issues][wgpu-help-wanted];
- [luminance's "low hanging fruit" issues][luminance-fruits];
- [ggez's "good first issue" issues][ggez-issues];
- [Veloren's "beginner" issues][veloren-beginner];
- [Amethyst's "good first issue" issues][amethyst-issues];
- [A/B Street's "good first issue" issues][abstreet-issues];
- [Mun's "good first issue" issues][mun-issues];

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

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

---

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
