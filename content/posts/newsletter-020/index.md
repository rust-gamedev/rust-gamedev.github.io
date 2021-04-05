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

### [Orbital Decay][orbital-decay]

![Orbital Decay](orbital-decay.gif)
_Orbital Decay gameplay_

[Orbital Decay][orbital-decay] by [@stevebob] is an
[open-source][orbital-decay-source] turn-based tactical roguelike with a focus
on ranged combat.  Deal enough damage to enemies to get through their armour
without breaching the hull of the station, or risk being pulled into the void.
It was made for the [7 Day Roguelike 2021][7drl-2021] game jam.

Traverse a procedurally-generated space station to reach the fuel bay on the
5th floor. Choose your weapons and upgrades wisely to make it past the
station's former crew - now a horde of ravenous undead.

Read more about Orbital Decay on its [development blog][orbital-decay-blog].

[orbital-decay]: https://gridbugs.itch.io/orbital-decay
[orbital-decay-source]: https://github.com/stevebob/orbital-decay
[@stevebob]: https://github.com/stevebob
[7drl-2021]: https://itch.io/jam/7drl-challenge-2021
[orbital-decay-blog]: https://www.gridbugs.org/7drl2021-day7/

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

### [Reverse-Engineering NES Tetris to add Hard Drop][tetris-hard-drop]

![NES Tetris with Hard Drop and Ghost Piece](tetris-hard-drop.gif) _NES Tetris
with Hard Drop and Ghost Piece_

A [blog post][tetris-hard-drop] describing the process of reverse-engineering
the rendering and input-handling logic in the NES version of Tetris, and using
a [rust embedded domain-specific language][tetris-hard-drop-dsl-example] to
make a [patching tool][tetris-hard-drop-patch-tool] that generates code (6502
machine code) to add hard drop (instantly dropping the current piece) and to
render a ghost piece (the dotted outline showing where the current piece will
land).

The patching tool uses the crate
[mos6502_assembler][tetris-hard-drop-assembler] to specify 6502 assembly in
rust and generate machine code. Many of the reverse-engineering experiments
were done using [this rust NES emulator][tetris-hard-drop-nes-emulator].  The
result is available as an [IPS Patch][tetris-hard-drop-ips-patch].

_Discussions: [Hacker News](https://news.ycombinator.com/item?id=26530604),
[/r/rust](https://reddit.com/r/rust/comments/ma6jqz/using_a_rust_dsl_to_add_hard_drop_to_nes_tetris/)_

[tetris-hard-drop]:
https://www.gridbugs.org/reverse-engineering-nes-tetris-to-add-hard-drop/
[tetris-hard-drop-nes-emulator]:
https://github.com/stevebob/mos6502/tree/master/nes-emulator
[tetris-hard-drop-assembler]:
https://github.com/stevebob/mos6502/tree/master/assembler
[tetris-hard-drop-ips-patch]:
https://github.com/stevebob/mos6502/raw/master/tetris-hard-drop-patcher/tetris-hard-drop.ips
[tetris-hard-drop-patch-tool]:
https://github.com/stevebob/mos6502/tree/master/tetris-hard-drop-patcher
[tetris-hard-drop-dsl-example]:
https://github.com/stevebob/mos6502/blob/master/tetris-hard-drop-patcher/src/main.rs#L23

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
