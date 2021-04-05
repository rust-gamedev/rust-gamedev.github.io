+++
title = "This Month in Rust GameDev #20 - March 2021"
date = 2021-04-06
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the 20th issue of the Rust GameDev Workgroup's
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

### Emerald

![emerald_logo](./em_desktop_icon.png)

[Emerald][emerald_github] by [@bombfuse][bombfuse_twitter]
is a 2D game engine focused on being as portable as possible.

The ultimate goal of Emerald is to be a fully
featured engine that you can slap onto any
device with relative ease.
It's currently able to run on WASM,
Raspberry Pi, Mac, Windows, and Linux
thanks to [miniquad][miniquad_git].

Features:

- Physics via [rapier2d][rapier_2d]
- ECS via [hecs][hecs_git]
- Font rendering via [fontdue][fontdue_git]

New Updates:

- Rendering to textures
- [WASM game sample][em_wasm_example]

[bombfuse_twitter]: https://twitter.com/bombfuse_dev
[emerald_github]: https://github.com/Bombfuse/emerald
[rapier_2d]: https://github.com/dimforge/rapier
[miniquad_git]: https://github.com/not-fl3/miniquad
[em_wasm_example]: https://bombfuse.itch.io/him-character-demo-harvest-hero
[hecs_git]: https://github.com/Ralith/hecs
[fontdue_git]: https://github.com/mooman219/fontdue

## Learning Material Updates

## Library & Tooling Updates

### [wgpu]

![voxel bunny on wgpu](wgpu-conservative-bunny.png)
Voxel Bunny rendering with conservative rasterization

[wgpu] is a [WebGPU] implementation in Rust. It is safe, efficient,
and portable: can target both native (Vulkan/D3D/Metal) and the Web.

Most progress in April was focused around [WGSL] shaders and validation.
[naga] has seen a lot of improvements in the SPIR-V and WGSL parsing, as well
as backend code generation. Most importantly, it now fully validates both
statements and expressions. No more accidental foot shots from adding vec2
and vec3 in the shaders!

The last and the biggest (in terms of shader complexity) example - "water"
has been successfully ported to WGSL 🎉.

A small addition to our native-only features - conservative rasterization
feature - was added by [@wumpf] and demonstrated on a voxel bunny 🐇

Finally, there is a blog post on Mozilla [graphics team blog] about the
progress using [wgpu] in Gecko.

_Discussions: [/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/mgvd8d/last_big_wgpurs_example_shaders_are_fully_ported/)_

[naga]: https://github.com/gfx-rs/naga
[wgpu]: https://github.com/gfx-rs/wgpu
[WebGPU]: https://gpuweb.github.io/gpuweb/
[WGSL]: https://gpuweb.github.io/gpuweb/wgsl/
[@wumpf]: https://github.com/Wumpf
[graphics team blog]: https://mozillagfx.wordpress.com/2021/03/10/webgpu-progress/

### [rafx]

![rafx tilemap rendering](rafx-tilemap-rendering.png)
Rafx rendering an example tilemap from [LDTK level editor][rafx-ldtk]

Rafx is a multi-backend renderer that optionally integrates with the
[distill][rafx-distill] asset pipeline. This month, we introduced a fourth
layer to the library, `rafx-renderer`. It provides a plugin system, simplifying
framework setup in a project.

The demo now includes a tilemap renderer that integrates with the [LDTK level
editor][rafx-ldtk]. The `distill` integration processes the level files offline
for very efficient loading/rendering at runtime.

Sprite rendering in general is also much faster now. Scenes with 40k-100k
sprites can render at 60fps (measured on M1 mini) depending on
transparency/distinct Z values in the scene. New examples demonstrate tilemap
and sprite rendering.

Early work was also done to reuse descriptor sets across frames and reduce
dynamic memory allocation when working with descriptor sets. Rafx also
includes more options for HDR tonemapping.

[rafx]: https://github.com/aclysma/rafx
[rafx-distill]: https://github.com/amethyst/distill
[rafx-ldtk]: https://ldtk.io

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

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
**Discussions of this post**:
[/r/rust](TODO),
[twitter](TODO).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
