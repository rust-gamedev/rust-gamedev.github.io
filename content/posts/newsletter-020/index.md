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

### [pGLOWrpg][pglowrpg-github]

![Improved text rendering](pglowrpg_progress.jpg)

[pGLOWrpg][pglowrpg-github] by [@Roal_Yr]
is a Procedurally Generated Living Open World RPG,
a long-term project in development, which aims to be a narrative text-based game
with maximum portability and accessibility.

Recent updates include:

- Reformatting a print interface, making it very easy to link text UI and code.
- Switching to .ron file format for storing configs and strings.
- Implementing individual strings coloring for better visual perception.

_Discussions: [Twitter][pglowrpg-twitter]_

[@Roal_Yr]: https://twitter.com/Roal_Yr
[pglowrpg-twitter]: https://twitter.com/pglowrpg
[pglowrpg-github]: https://github.com/roalyr/pglowrpg

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

### Stellary 2

[![Stellary 2 Anti-Missile Laser](stellary2-centered-view.gif)][stellary2-ppcv-tweet]
_▶️ Click to [watch the full video][stellary2-ppcv-tweet]_

Stellary 2 by [@CoffeJunkStudio][coffe-junk-studio] is a 3D real-time space
shooter in which the player has to control his spaceship to colonize each planet
in the solar system.

In the last month, the game concept has been overhauled. Most importantly:

- Planets become inhabitable over time, starting with the outermost one in order
  to bring head-to-head matches to an end eventually.
- Full focus on multiplayer, including AIs
- Players can’t die mid-game anymore. When defeated, they re-spawn and lose a
  colony for it (if they have one) instead of dying. This prevents long waiting
  times when playing against friends.

You can follow the development of Stellary 2 on [Twitter][coffe-junk-studio].

[coffe-junk-studio]: https://twitter.com/CoffeJunkStudio
[stellary2-ppcv-tweet]: https://twitter.com/CoffeJunkStudio/status/1378719827347509249

### [A/B Street]

![Elevation data in A/B Street](./abstreet.jpg)

[A/B Street] by [@dabreegster] is a traffic simulation game exploring how small
changes to roads affect cyclists, transit users, pedestrians, and drivers, with
support for any city with OpenStreetMap coverage.

In March, elevation data courtesy of [Eldan] was imported, letting cycling
speeds uphill be adjusted. Importing any area from OpenStreetMap can now be
done from the UI with no command-line experience, and custom travel demand
models based on UK-wide census data can now be generated. Some important
simulation fixes for roundabouts improve gridlock, and [Michael] and [Yuwen]
helped adjust the UI panel layout for smaller screens.

[A/B Street]: https://github.com/a-b-street/abstreet
[@dabreegster]: https://twitter.com/CarlinoDustin
[Eldan]: https://github.com/eldang/
[Michael]: https://github.com/michaelkirk
[Yuwen]: https://www.yuwen-li.com/

### [Egregoria]

![Egregoria city at dawn](egregoria.jpg)

[Egregoria] ([GitHub][Egregoria], [Discord][egregoria-discord])
by [@Uriopass]
is a simulation oriented city builder that tries
to replicate modern society as well as possible.

The [8th devlog][egregoria-blog-post] was published.
Updates include:

- Multiplayer based on deterministic lockstep
- Economy revamp inspired by Anno 1800
- Infinite world using procedural generation
- Many more QoL features

See also the [YouTube summary video][egregoria-youtube]
of the past 6 months of development.

[Egregoria]: https://github.com/Uriopass/Egregoria
[@Uriopass]: https://github.com/Uriopass
[egregoria-blog-post]: https://douady.paris/blog/egregoria_8.html
[egregoria-discord]: https://discord.gg/CAaZhUJ
[egregoria-youtube]: https://youtu.be/qH2SKWbRV5I

## Engine Updates

### [Tetra]

[Tetra] is a simple 2D game framework, inspired by XNA, Love2D, and Raylib. This
month, versions 0.6.1 and 0.6.2 were released, featuring:

- Support for blend modes and premultiplied alpha
- Scissor rectangles (useful for UI rendering)
- Word wrapping for text
- More events and methods for tracking/controlling the window's state
- Bugfixes and docs improvements

For more details, see the [changelog][tetra-changelog].

Additionally, a [template repository][tetra-template] has been created,
demonstrating some useful patterns for structuring a Tetra project.

[Tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md
[tetra-template]: https://twitter.com/17cupsofcoffee/status/1357750836370284544

### [Starframe]

![Current state of starframe graphics and physics](starframe.gif)

[Starframe] by [@moletrooper] is a work-in-progress game engine for physics-y
sidescrolling 2D games.

This month, its physics engine was revamped once more (for the last time,
hopefully), implementing a modern solver method called Extended Position-Based
Dynamics. Also, [a blog post][sf-blog-post] was published, covering the
development of the physics engine so far in a great deal of mathematical
detail.

_Discussions:
[twitter (physics update)][sf-update-tweet],
[twitter (blog post)][sf-blog-tweet]_

[starframe]: https://github.com/moletrooper/starframe
[@moletrooper]: https://twitter.com/moletrooper
[sf-blog-post]: https://moletrooper.github.io/blog/2021/03/starframe-devlog-constraints/
[sf-blog-tweet]: https://twitter.com/moletrooper/status/1377273607450136576
[sf-update-tweet]: https://twitter.com/moletrooper/status/1360723470414450688

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

### [Planck ECS]

![planck logo](planck_ecs.png)

[Planck ECS] ([GitHub][Planck ECS], [Blog][planck_blog],
[Patreon][planck_patreon]) by [@jojolepro]
is a brand new minimalist and safe ECS library.

The 1.0 release happened in the past month, featuring: various fixes,
quality of life improvements, removal of unsafe code and completion of tests and
documentation.

The library is currently considered completed, which means that all planned
features are implemented, tested and benchmarked. Future updates will focus on
performance improvements and usability improvements.

[Planck ECS] is also used in [Shotcaller][planck_shotcaller] which is featured in
this newsletter too.

You can read more about the library on the [Blog][planck_blog] and on
[GitHub][Planck ECS].

_Discussions: [/r/rust][planck_reddit], Discord: jojolepro#8057_

[@jojolepro]: https://github.com/jojolepro
[Planck ECS]: https://github.com/jojolepro/planck_ecs
[planck_shotcaller]: https://github.com/amethyst/shotcaller
[planck_blog]: https://jojolepro.com/blog/2021-01-13_planck_ecs/
[planck_patreon]: https://patreon.com/jojolepro
[planck_reddit]: https://www.reddit.com/r/rust/comments/m73ema/yet_another_ecs_library_except_much_safer/

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
_Rafx rendering an example tilemap from [LDTK level editor][rafx-ldtk]_

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

### [WhatTheFrame]

![whattheframe gui](whattheframe.png)

[WhatTheFrame] by [@JMS55]
is a frame-based cpu profiler crate along with a [GTK] ([gtk4-rs]) based GUI.

This project aims to answer the question: Which frames of my game are slow, and why?

It aims to be simple to use, consisting of only 3 functions: Call `let _r = Profiler::new_frame()`
at the start of each frame, `let _r = Profiler::new_task("task_name")` whenever you
want to profile a task, and finally `Profiler::end_profiling()` once at the end.

You can then open the resulting `.wtf` profile in the GUI and analyze the results.

This month was spent designing and implementing both the GUI and profiler crate.
The core functionality of both programs are complete, and all that remains is
cleanup, tweaks, optimization, and finally packaging the GUI up.

[WhatTheFrame]: https://github.com/JMS55/whattheframe
[@JMS55]: https://github.com/JMS55
[GTK]: https://gtk.org/
[gtk4-rs]: https://github.com/gtk-rs/gtk4-rs#gtk4-rs-

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
