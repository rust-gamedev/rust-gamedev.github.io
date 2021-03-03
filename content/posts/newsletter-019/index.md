+++
title = "This Month in Rust GameDev #19 - February 2021"
date = 2021-03-03
transparent = true
draft = true
+++

Welcome to the 19th issue of the Rust GameDev Workgroup's
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

## Game Updates

### [Teki (敵)][teki]

![teki preview](teki.gif)

[Teki][teki] is a free and open-source fangame of the [Tōhō] series
using [SDL2] and [Legion] for ECS. It is aimed to be a shoot ’em up game with
"lots of bullets" a.k.a danmaku 弾幕 - literally "barrage" or "bullet curtain" in
Japanese.

The project is still at a “very” early stage of development (Dec. 2020).

This month's updates include:

- New enemy type: big fairy
- New special card: Stellar Vortex
- Add yin yang orbs

[teki]: https://github.com/o2sh/teki
[Tōhō]: https://en.wikipedia.org/wiki/Touhou_Project
[SDL2]: https://github.com/Rust-SDL2/rust-sdl2
[Legion]: https://crates.io/crates/legion

## Learning Material Updates

## Engine Updates

### [Tetra]

![Tetra's demo game](./tetra.png)
_Tetra's demo game_

[Tetra] is a simple 2D game framework, inspired by XNA, Love2D and Raylib.
This month, version 0.6 was released, with some big changes and features:

- A simpler drawing API
- Less global state for mesh drawing
- Multisampled canvases
- Better font rendering

For more details, see the [changelog][tetra-changelog], or
[17cupsofcoffee's twitter thread][tetra-twitter] about the release.

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md
[tetra-twitter]: https://twitter.com/17cupsofcoffee/status/1357750836370284544

## Library & Tooling Updates

### [Rafx][rafx-github]

![Screenshot from Rafx Rendering Framework](rafx-screenshot.png)

Rafx is a multi-backend renderer that prioritizes performance, flexibility,
and productivity. It optionally integrates with the [distill][rafx-distill] 
asset pipeline to provide workflows and tools suitable for real-world projects
with multidisciplinary teams. Rafx is divided into three tiers of
functionality:

`rafx-api` provides a custom GPU API abstraction layer that currently supports
vulkan and metal. It has a reduced API footprint that is easily supported
across modern platform APIs. This keeps backends simple to read and debug,
while hopefully improving ease of use. However, the underlying platform API is
exposed allowing full access to use it directly if necessary.
([API in rust psuedocode][rafx-api-design])

`rafx-framework` builds on the API layer using ideas found in modern shipping
AAA titles. Similarly to this 2015 GDC talk
["Destiny's Multithreaded Rendering Architecture"][rafx-gdc-2015],
rendering is pipelined in a separate thread in three phases, using jobs to
extract data from the main thread, process the data on the render thread, and
write the draw calls to command buffers. A render graph (as described in this
2017 GDC talk
["FrameGraph: Extensible Rendering Architecture in Frostbite"][rafx-gdc-2017])
ensures correct synchronization. The framework also provides a material
abstraction and shader pipeline.

`rafx-assets` adds integration with the distill asset pipeline. This ensures
that when an asset like a mesh is loaded, other related assets like
textures/material/vertex data are loaded. By integrating with distill,
rafx provides advanced features like streaming live asset updates to remote
devices.

A demo project shows some advanced rendering features (dynamic lights/shadows,
PBR shading) and more "systemic" features (pipelined rendering via the job
system, render graph, shader workflow).

More information about rafx:

- [Github][rafx-github]
- [Documentation][rafx-documentation]
- [Why Rafx?][why-rafx] (includes similarities/differences with other rust
  and non-rust alternatives)

[rafx-github]: https://github.com/aclysma/rafx
[rafx-documentation]: https://github.com/aclysma/rafx/blob/master/docs/index.md
[why-rafx]: https://github.com/aclysma/rafx/blob/master/docs/why_rafx.md
[rafx-api-design]: https://github.com/aclysma/rafx/blob/master/docs/api/api_design_in_rust_psuedocode.rs
[rafx-api-triangle-example]: https://github.com/aclysma/rafx/blob/master/rafx/examples/api_triangle/api_triangle.rs
[rafx-gdc-2015]: http://advances.realtimerendering.com/destiny/gdc_2015/Tatarchuk_GDC_2015__Destiny_Renderer_web.pdf
[rafx-gdc-2017]: https://www.gdcvault.com/play/1024612/FrameGraph-Extensible-Rendering-Architecture-in
[rafx-distill]: https://github.com/amethyst/distill

### [basis-universal-rs]

A new crate `basis-universal` is now available that provides bindings for
[Binomial LLC][binomial-llc]'s
[Basis Universal texture codec][basis-universal-upstream].

Basis Universal is a state-of-the art
[supercompressed][basis-universal-supercompression] texture codec that
was recently [open-sourced][basis-universal-open-sourced] by Binomial in
partnership with Google. It has
been [contributed][basis-universal-contributed-kronos] to the Khronos glTF
3D Transmission Open Standard.

The library has two primary uses:

- Encoding: Compresses and encode textures (optionally combining multiple
  images and mipmap layers in a single file/binary blob)
- Transcoding: Unpacks the texture into GPU-friendly compressed formats.
  The final format can be chosen at game runtime based on what the available
  GPU hardware can support.

This library is also useful for storing mipmapped textures and cubemaps,
neither of which is possible with "normal" file formats. In this way
it is similar to a .dds or .ktx file. The mipmaps can be generated by the
library during compression.

While compression is very slow (around 7-10s for a 2k texture), transcoding is
relatively fast (around 5-40ms for a 2k texture depending on quality) and is
direct from one compressed format to another. This can result in substantial
memory savings at runtime (generally >= 75% depending on the transcode format
and quality)

[binomial-llc]: http://www.binomial.info
[basis-universal-rs]: https://github.com/aclysma/basis-universal-rs
[basis-universal-upstream]: https://github.com/BinomialLLC/basis_universal
[basis-universal-supercompression]: http://gamma.cs.unc.edu/GST/gst.pdf
[basis-universal-open-sourced]: https://opensource.googleblog.com/2019/05/google-and-binomial-partner-to-open.html
[basis-universal-contributed-kronos]: https://www.khronos.org/blog/google-and-binomial-contribute-basis-universal-texture-format-to-khronos-gltf-3d-transmission-open-standard

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
[abstreet-issues]: https://github.com/a-b-street/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
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
