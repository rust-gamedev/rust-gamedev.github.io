+++
title = "This Month in Rust GameDev #12 - July 2020"
date = 2020-08-03
transparent = true
draft = true
+++

Welcome to the twelfth issue of the Rust GameDev Workgroup’s
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
- [Library & Tooling Updates](#library--tooling-updates)
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

### [Wonder][Wonder]

[![A screenshot of Wonder: lines drawn with a ball ready to roll down them](wonder-screenshot.png)][Wonder]

Wonder is a casual physics puzzle game by [@kettlecorn]. The objective is to
collect all the stars on each level by drawing lines for the ball to roll along.

The game was made in 48 hours for the
[Ludum Dare game jam](ludum-dare) that occurred in April.

Wonder was made for the web with WebAssembly, browser APIs, and no game
framework.

[@kettlecorn] recently published an article going into the technical and
creative challenges encountered making the game:

[Making a Game in 48 hours with Rust and WebAssembly](48-hour-jam)

Wonder can be [played on itch.io](Wonder).

The source is [available on GitHub.](Wonder-source)

[Wonder]: https://kettlecorn.itch.io/wonder
[Wonder-source]: https://github.com/kettle11/LD46
[@kettlecorn]: https://twitter.com/kettlecorn
[ludum-dare]: https://ldjam.com
[48-hour-jam]: https://ianjk.com/rust-gamejam/

## Learning Material Updates

### [Rust on iOS with SDL2][rust-ios-sdl2-post]

[![Rust on iOS with SDL2 demo](rust-ios-sdl2-screenshot.png)][rust-ios-sdl2-post]

[@aclysma] published a [tutorial][rust-ios-sdl2-post] that describes setting up
Rust/SDL2 on iOS. The resulting app can run in the simulator as well as on
physical devices. [SDL2][sdl2-project] is a mature library providing basic rendering,
audio, and input support. It can also be used to set up an opengl or vulkan
surface. This demo is using [Rust-SDL2][rust-sdl2] for bindings.

[rust-ios-sdl2-post]: https://blog.aclysma.com/rust-on-ios-with-sdl2/
[@aclysma]: https://twitter.com/aclysma
[sdl2-project]: https://www.libsdl.org/download-2.0.php
[rust-sdl2]: https://crates.io/crates/sdl2

## Library & Tooling Updates

### Vulkan Renderer (Name TBD)

[![Vulkan renderer on iOS prototype](vulkan-renderer-prototype.jpeg)][vulkan-renderer-prototype-video]

^ _Click to watch [the video demo][vulkan-renderer-prototype-video] running on iOS._

[@aclysma] published a [new vulkan-based renderer][renderer-prototype] that
uses [atelier-assets] to load 3D scenes exported from blender.

> The objective of this repo is to build a scalable, flexible, data driven
> renderer. Scalable in the sense of performance as well as suitability for
> use in large, real-world projects. This means streaming, LODs, visibility
> systems, and multi-threaded draw call submission need to be possible.
> Additionally it means thinking through how an asset pipeline would work for
> a team with dedicated artists and supporting workflow-friendly features
> like hot reloading assets, possibly on remote devices.

This video demonstrates the renderer running on iOS and receiving asset updates
via wifi. The scene is "sponza" exported from blender. Vulkan is supported on
windows and linux natively. Support for macOS and iOS is via the
well-established [MoltenVK][moltenvk] project.

The demo was ported from PC to iOS over a single weekend and out of
approximately 300 crate dependencies (including complex, OS-specific ones like
tokio), all but a few worked out-of-the-box!

[@aclysma]: https://twitter.com/aclysma
[renderer-prototype]: https://github.com/aclysma/renderer_prototype
[atelier-assets]: https://github.com/amethyst/atelier-assets
[vulkan-renderer-prototype-video]: https://www.youtube.com/watch?v=Ks_HQbejHE4
[moltenvk]: https://github.com/KhronosGroup/MoltenVK

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
