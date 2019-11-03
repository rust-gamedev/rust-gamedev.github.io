---
title: "This Month in Rust GameDev #3 - October 2019"
---

<!-- markdownlint-disable no-trailing-punctuation -->

<!-- TODO: Check the post with markdownlint-->
<!-- TODO: sort entries (see Kvark's old comment) -->
<!-- TODO: break all long lines! -->

Welcome to the third issue of the Rust GameDev Workgroup’s
monthly newsletter.

[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.

We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

**TODO**: _Add a notice that PRs from the creators are encouraged, link to the instructions_.

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun

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

### [Sulis][sulis] - a Turn-Based RPG

![chest and inventory with items](/assets/newsletter-003/sulis-inventory.png)

[Sulis][sulis] is a Role Playing Game (RPG) with turn based, tactical combat,
deep character customization and an engaging storyline.
The game has been built from the ground up with modding
and custom content in mind.
Currently supported on Windows and Linux platforms.

The game is currently fully playable
and includes the first act of The Twin Expanse,
an old school RPG campaign in the vein of classic games
such as _Baldur's Gate_,
but mixing in modern elements from titles like
_Divinity: Original Sin_ and _Pillars of Eternity_.

The core game engine as well as the campaign
are still under heavy development.
Users are encouraged to [file issues with bugs][sulis-issues],
feature requests, or any other feedback.

![flaming fingers spell demonstration](/assets/newsletter-003/sulis-battle.png)

Features:

- Cross platform native binaries, currently [built for Windows and Linux][sulis-releases]
- Multiple campaigns with over 8 hours of playtime,
  featuring both handcrafted and procedural content.
- We are designing a detailed and fully realized world and story - check out
  the [Lore page][sulis-lore].
- Designed with modding in mind - although more work still needs
  to be done in this area.
- A powerful 2D graphics engine with zoom, scalable UI, HiDPI support,
  and a swappable graphics backend.
- Runs on very modest hardware - even software renderers
  (although at a reduced frame rate).

![ability tree gui](/assets/newsletter-003/sulis-abilities-tree.png)

The GPLv3-licensed [source code is hosted on GitHub][sulis-src].
Sulis is written in Rust, with scripting in Lua and most data files in the YAML format.

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/din01e/sulis_a_turnbased_rpg_written_in_rust_by_ugrokmoo)_

[sulis]: https://sulisgame.com
[sulis-issues]: https://github.com/Grokmoo/sulis/issues
[sulis-releases]: https://github.com/Grokmoo/sulis/releases
[sulis-lore]: https://sulisgame.com/lore
[sulis-src]: https://github.com/Grokmoo/sulis

### Veloren

![TODO: local, desc](https://media.discordapp.net/attachments/449654102553788417/631209513336438794/screenshot_1570562280617.png?width=1151&height=685)

[Veloren][veloren] is an open-world, open-source multiplayer voxel RPG.
The game is in an early stage of development, but is playable.

**TODO**: 0.4 was released.

**TODO:** mention "Player survey"

**TODO**: Here is a new video highlighting different structures in Veloren: <https://www.youtube.com/watch?v=iwP7SXdWcTg>

**TODO**: Render Analysis #2 by @Vercidium

rivers!

**TODO**: another img with items or UI?

Full weekly devlogs "This Week In Veloren...":
[#36](https://veloren.net/devblog-36),
[#37](https://veloren.net/devblog-37),
[#38](https://veloren.net/devblog-38),
[#39](https://veloren.net/devblog-39).

[veloren]: https://veloren.net

### PF Sandbox

by [@rukai]

- <https://twitter.com/thisIsRukai/status/1181208687081222154> -- textures!
- <https://twitter.com/thisIsRukai/status/1182945899485335552>
- <https://twitter.com/thisIsRukai/status/1181208687081222154>
- <https://twitter.com/thisIsRukai/status/1180477120113340417>
- <https://twitter.com/thisIsRukai/status/1188261107124727808>

**TODO**: check other tweets!

Exporting and hot-reloading assets from blender!
This is the start of a fork of pf sandbox to be its own game instead of a generic engine.

[@rukai]: https://twitter.com/thisIsRukai

### Antorum

![TODO: local, desc](https://dooskington.com/images/devlogs/10-img3.jpeg)

[@dooskington] published ... devlogs:

- <https://dooskington.com/dev-log/6>

- <https://dooskington.com/dev-log/7>

- <https://twitter.com/dooskington/status/1183771429222772736>

- <https://twitter.com/dooskington/status/1186296576282484737>

  <https://dooskington.com/dev-log/8>

- 9 ???

- <https://dooskington.com/dev-log/10> - terrain sync

**TODO**: _Format devlogs like it's done for Veloren?_

[@dooskington]:https://twitter.com/dooskington

### [Ferris Fencing][ferris-fencing]

![Two crabs fencing on a 1D map](/assets/newsletter-003/ferris-fencing.png)

[Ferris Fencing][ferris-fencing] is a live tournament in which
player-programmed bots combat each other on a [RISC-V] virtual machine.
It is a showcase of [CKB-VM], a simple implementation of the RISC-V instruction set,
written in the Rust programming language.

[Here're the rules][ferris-fencing-rules].

The Ferris Fencing tournament is not yet live,
but fencers may begin building their bots and testing them locally.
Instructions are in the [GitHub repo][ferris-fencing-repo].

[ferris-fencing]: http://ferrisfencing.org
[RISC-V]: https://riscv.org
[CKB-VM]: https://github.com/nervosnetwork/ckb-vm
[ferris-fencing-repo]: https://github.com/brson/ferris-fencing
[ferris-fencing-rules]:http://www.ferrisfencing.org/#rules

### Tennis Academy v0.03 & v0.0.4

**TODO**: img

by [@oliviff]

- <https://twitter.com/oliviff/status/1185576890746265600>

  v0.0.3 is here!

    🏘️ improved reception area queueing
    🎆 timed effects when players disappear
    ⛹️ click to collect coins from player

- v0.0.4 is here and it's a big gameplay update, finally feels more like a game!

  - 👟 4 courts on screen
  - ⛹️ matching t-shirts for players
  - 💯 money is now score
  - 🚥 court + t-shirt colour matching logic
  - 📊 score multipliers

  **TODO**: gif from: <https://twitter.com/oliviff/status/1185945850771660805>

[@oliviff]: https://twitter.com/oliviff

### [piano-rs]

![TODO: local](https://camo.githubusercontent.com/78c31430ea4c1a90b16bbf3ff96ba8fb57e7f787/68747470733a2f2f692e696d6775722e636f6d2f444f78307757662e706e67)

A multiplayer piano using UDP sockets that can be played using computer keyboard, in the terminal.

> Hi! A few years back I wrote a piano game for the terminal in Rust when I did not know much about general good code practices. However, recently I've been learning more on how to write good code and so, I spent the last 2 weeks trying to refactor the codebase along with adding a multiplayer feature.
>
> Here's the link: <https://github.com/ritiek/piano-rs>
>
> Feel free to try it out! In case you're going to dig into the codebase, I am open to any suggestions/feedback to further improve anything related to the codebase!

<https://reddit.com/r/rust/comments/de28rz/a_multiplayer_piano_game_for_the_terminal>

[piano-rs]: https://github.com/ritiek/piano-rs

### [Dissolve][dissolve]

![TODO: local, desc](https://img.itch.zone/aW1hZ2UvNDkxMDU3LzI1NTA5NzUuZ2lm/original/Tlf%2FKS.gif)

[dissolve] is a small puzzle game where you have to prepare the level so that it will automatically convert and dissolve in the future.

> Will it dissolve? A new puzzle game for the "Open Jam 2019" event. If you have time you can try it out.
> Programmed in #rustlang with the help of the Tetra engine. The source code is also available. Have fun!

[dissolve]: https://puppetmaster.itch.io/dissolve

**TODO**: img: <https://twitter.com/fischspiele/status/1180924034650984451>

### Garden

![TODO: local, desc](https://pbs.twimg.com/media/EH-gSkWW4AA-7hp?format=jpg)

<http://cyberplant.xyz/posts/october>

<https://epcc.itch.io/garden>

<https://twitter.com/logicsoup/status/1190754460575961089>

### [Godot][godot] and Rust

- Rendering a 2D game in 3D

  **TODO**: img

  <https://medium.com/@recallsingularity/rendering-a-2d-game-in-3d-bd24ddbee6eb>

  <https://twitter.com/RecallSingular1/status/1184059000242855936>

------

- First month #GameDev #Progress by ardawanizadi

TODO: img?

First month #GameDev #Progress.

- Realistic physics for #character & #weapon system.
- First-third person camera.
- Full rotation on first & limited on third person.
- Dynamic damage system based on distance & body part.
- Weapon switching.
- Animation management.

> almost a month working on my OpenWorld game to prepare all the base and necessary mechanics & logic. with my limited time due to a full-time job, I could manage to make some progress. Please take a look and leave your comments. Thank you.

TODO: remove? <https://reddit.com/r/rust_gamedev/comments/dilb5k/game_progress_for_almost_a_month_rust_godot>

<https://old.reddit.com/r/godot/comments/dilbar/game_progress_for_almost_a_month_rust_godot>

_Discussions:
[twitter](https://twitter.com/ardawanizadi/status/1184353596927688704)_

------

"Pong Clone in Godot Using `gdnative` Rust Bindings"

**TODO**: img

<https://reddit.com/r/godot/comments/dfam0p/i_made_a_pong_clone_in_godot_using_the_gdnative>

<https://github.com/you-win/godot-pong-rust>

> I couldn't find any full game examples that used godot-rust so I decided to make my own.
>
> The scripts for the paddles and ball are written in Rust, and I added a convenience script for restarting the scene written in GDscript.
>
> tl;dr: Using gdnative + Rust wasn't too bad.

[godot]: https://godotengine.org

### Ludum Dare 45

**TODO**: Some info about what is LD is.

- "Legally Dead"

  ![TODO: local, desc](https://static.jam.vg/raw/b88/z/268d9.png)

  (Uses GGEZ)

  <https://ldjam.com/events/ludum-dare/45/legally-dead/>

  <https://ldjam.com/events/ludum-dare/45/legally-dead/tools-and-tech-for-my-game-written-in-rust>

  <https://twitter.com/vilcans/status/1182402802640982016>

- "Working Title"

  **TODO**: _crop the image_

  ![TODO: local, desc](https://static.jam.vg/raw/11c/d/z/29943.png)

  <https://twitter.com/NoahRosenzweig/status/1181427776634736640>
  
  Working Title - Our #LD45 jam entry!

  <https://ldjam.com/events/ludum-dare/45/working-title>

  > _Experience a work in progress._
  >
  > Play through the development process of a 2D platformer game,
  > and watch your environment transform as you progress...
  >
  > The further you get, the more features are added, including
  > menacing enemies, destructive spikes, and adaptive music.

- "Mindmaze"

  **TODO**: logo/gif?

  A small and unhurried story about devious passages of the trapped human mind.
  Begin in the middle of oblivion as shadow and take a walk through
  every chamber of this place to find all shards of lost personality.
  Can you find the way out?!

  <https://ldjam.com/events/ludum-dare/45/mindmaze>

  code: <https://github.com/sigod/ludum-dare-45>

### Amethyst Games

- [Arrakis][arrakis]

  ![TODO](https://raw.githubusercontent.com/JPMoresmau/arrakis/master/screenshot1.png)

  A 80s game ported in Rust and Amethyst.

  Arrakis is a mini role-playing/adventure game. The goal? Walk through the streets of Arrakis to find the fabled Wizard of Arrakis, that can teach you arcane powers you've only dreamt of!

  <https://twitter.com/JpMoresmau/status/1180844507719450625>

- webshinra
  
  TODO: img: <https://twitter.com/Webshinra/status/1187982773547601920>

  Ok, our full switch to @AmethystEngine is over, and it rox, no more semi-customized hybrids layer to 5 libs (including parts of Amethyst).

  We are now ready to build gameplay in the upcoming months \o/

- Grumpy Visitors

  TODO: img

  <https://amethyst.rs/posts/showcase-game-4-grumpy-visitors>

  (/r/rust (<https://www.reddit.com/r/rust/comments/dm5l9t/amethyst_showcase_game_grumpy_visitors>))

  @mvlabat

  <https://twitter.com/AmethystEngine/status/1187112150751436800>

- Hex Game from takeryo_eeic

  TODO: gif from <https://twitter.com/takeryo_eeic/status/1187700437849296896>

  <https://twitter.com/takeryo_eeic/status/1184377712946761728>

  <https://twitter.com/takeryo_eeic/status/1190142474062184448>

- Space Shooter - <https://github.com/amethyst/space_shooter_rs>

  > @carlosupina
  >
  > No new release for this month. I spent most of the time working on refactoring the existing code.
  >
  >However, I was delighted to see people contributing to the project. From the community we got 2 new items and 1 new enemy.

  <https://twitter.com/carlosupina/status/1188579937709707266>

[arrakis]: https://github.com/JPMoresmau/arrakis

### Other Game News

- Eva online (TODO: ?)

  <https://twitter.com/aidanhs/status/1181584776584675328>

  > To double the tick rate to 30Hz, our underlying @rustlang layer from last time (<https://twitter.com/aidanhs/status/1110607519385350150>) needed...a two line bugfix and some metrics support. Nice proof point for reliable software in Rust!

- <https://roboinstruct.us>

  **TODO**: img?

  <https://store.steampowered.com/app/1032170/Robo_Instructus/>

  1.12 - 1.14

  **TODO**: mention <https://github.com/big-ab-games/robo-instructus-translation#about>

## Library & Tooling updates

### Dev Time Optimization -- Part 1 (1.9x speedup, 65% less disk usage)

by Azriel

**TODO**: img?

<https://azriel.im/will/2019/10/08/dev-time-optimization-part-1-1.9x-speedup-65-less-disk-usage>

**TODO**: Any discussions?

### RUSTFLAGS Tip (TODO: title)

```sh
RUSTFLAGS="-C link-arg=-fuse-ld=lld" cargo run
```

Reduced my average compilation time from 10-20s(which is a bit crazyness for gamedev iteration) to 5-7s. Wonder why haven't I tried this before?🤔

<https://twitter.com/VladZhukov0/status/1186412587958845442>

**TODO**: Link the reddit thread

<https://reddit.com/r/rust/comments/dl4c8o/is_the_rust_compiler_really_that_slow>

### RLSL: a Rust to SPIR-V Compiler

**TODO**: img from slides

"Rlsl - Rust Like Shading Language"

<https://twitter.com/MaikKlein_DEV>

<https://github.com/MaikKlein/rlsl>

<https://docs.google.com/presentation/d/1_cB-sxUusYVoCYdXnqwAg2u3-lrqBfgrUj205ytxYaw>

<https://reddit.com/r/rust/comments/dlcjet/rlsl_a_rust_to_spirv_compiler>

<https://twitter.com/MaikKlein_DEV/status/1186248536633024512> slides about Rust->SPIR-V

<https://news.ycombinator.com/item?id=21314679>

> Raycasting a sphere with rlsl Sep 20, 2018
> Old video from 2018: <https://youtube.com/watch?v=XhAvIVs7lOA>

[Support maikklein on Patreon](https://patreon.com/maikklein).

### gfx-rs & wgpu

**TODO**: img

**TODO**: ping @Kvark

**TODO**: <https://reddit.com/r/rust/comments/dm89t2/gfxhal_version_04_release>

### Vulkano: Why Command Buffers Are So Complicated?

by @Tomaka

> Small thread about why command buffers in vulkano
> (a Rust library that wraps around Vulkan) are so complicated.

<https://twitter.com/tomaka17/status/1188513260473110528>

### splines-3.0.0: “stroke” Bézier support

**TODO**: img?

by [@phaazon]

[splines], a crate to handle spline interpolation, just got released in version 3.0.0. That version adds support for stroke Bézier interpolation, which is a Bézier interpolation but allows you to break the handles (instead of the regular 180° angle formed by the handle with the `Interpolation::Bezier` mode).

spline-editor got a patch to allows you to try stroke Bézier. Just put some points and set them all to Bézier interpolation (use the space key). Then select a point and press space again to switch to stroke Bézier. You can move each handle independently from the other.

<https://github.com/phaazon/spline-editor>

<https://reddit.com/r/rust/comments/dln7yd/splines300_stroke_b%C3%A9zier_support>

[splines]: https://crates.io/crates/splines
[@phaazon]: https://twitter.com/phaazon_

### This Month in Mun - October 2019

**TODO**: img?

> This Month in #Mun -Oct 2019: Having built a runtime prototype and framework for lexing, parsing, type checking, and LLVM IR code generation; our goal for the remainder of October was to extend, polish, and stabilise this into a Mun v0.1 release.

<https://mun-lang.org/blog/2019/10/28/this-month-october/>

------

<https://reddit.com/r/rust/comments/de51ai/the_mun_programming_language_is_going_live>

<https://twitter.com/wodannson/status/1180871977495617536>
<https://twitter.com/wodannson/status/1179698233737650176>

### ultraviolet

**TODO**: img (benches?)

<https://www.reddit.com/r/rust/comments/dpknd1/ultraviolet_a_crate_to_do_lots_of_linear_algebra>

### This month in rustsim #8 (August − September - October 2019)

![salva's logo (TODO: local)](https://salva.rs/img/logo_salva_full.svg)

<https://salva.rs>

<https://rustsim.org/blog/2019/11/01/this-month-in-rustsim>

VIDEO: <https://www.youtube.com/watch?v=356unTmeVUk>

TODO: Improvements on nphysics 0.13

New sponsorship platform: GitHub sponsor

<https://reddit.com/r/rust/comments/doheby/this_month_in_rustsim_8_august_september_october>

### cyclone-physics-rs

TODO: extract gif: <https://twitter.com/heyrutvik/status/1180072669250834432>

> I've spent last few weekends on the long-standing item in my wishlist, the game physics engine, here is the little demo of "particle" simulation. Still long way to go, but you've got to start somewhere, no? 🤓

<https://github.com/heyrutvik/cyclone-physics-rs>

### Rust Roguelike Tutorial

![TODO: check size, local, desc](http://bfnightly.bracketproductions.com/rustbook/c40-s4.gif)

<https://twitter.com/herberticus/status/1179439105404493825> TODO

<https://twitter.com/herberticus/status/1183815235368574981> TODO

<https://twitter.com/herberticus/status/1187358052107862016>

My Rust Roguelike Tutorial just hit chapter 40! The newest chapter is about doors, and their placement. 38/39 improve rooms/corridors, 37/38 expand the procgen layer system.

<http://bfnightly.bracketproductions.com/rustbook/>

### [Pixels][pixels]

![TODO: local, smaller, desc](https://raw.githubusercontent.com/parasyte/pixels/master/img/pixels.png)

> [Pixels][pixels] is a tiny hardware-accelerated pixel frame buffer. crab

TODO: Uses wgpu.

[pixels]: https://github.com/parasyte/pixels

### [Nannou awarded Mozilla grant for foundational audio development][nannou-post]

![TODO: local, desc](https://nannou.cc/static/9bd3d69917cfc005e44b068a1fefc46c/35c67/mission_partners_nannou_mozilla.png)

[Post][nannou-post]

[Nannou][nannou] is a creative coding framework that aims to make it easy for artists to express themselves with simple, fast, reliable code.

[Nannou][nannou] the creative coding framework awarded Mozilla grant for Rust audio development

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/dlz3fb/nannou_the_creative_coding_framework_awarded)_

[nannou]: https://nannou.cc
[nannou-post]: https://nannou.cc/posts/moss_grant_announce

### WIP Rendering Engine by @Cynic64 (TODO: Title?)

**TODO**: img

<https://youtube.com/watch?v=UrnSCpf_yw0>

<https://reddit.com/r/rust/comments/dpa3ar/wip_rendering_engine>

**TODO**: Details

> Made with Rust and Vulkano.
>
> Repositories for the curious:
>
> - <https://github.com/cynic64/re-ll> (low level abstractions for Vulkano's command buffers and windows)
>
> - <https://github.com/cynic64/render-engine> (Vulkan abstraction. I should probably rename it as although my original intention was to make it a more complete rendering engine with built-in support for mesh loading, lighting, etc., it's become something different.)
>
> - <https://github.com/cynic64/test-render-engine>. (various little programs created with render-engine. "pretty" is the one shown in the video, "base" shows the basic functionality.)
>
> This is more of a demo than a something you should try and use in your own project. The test-render-engine repository in particular is a real mess, as I had to rush because it's a school project and the deadline was looming. Pretty.rs is a real abomination. I apologize...

### Jakar Engine

**TODO** add img from: <https://twitter.com/siebencorgie/status/1187021315657605120>

> Reflections are now working and there is a gltf importer/voxelizer.
The performance is not exactly good at the moment but several optimizations are not implemented.
This is 3440x1440 @ 50 fps on AMD Vega 56.

<https://gitlab.com/Siebencorgie/jakar-engine>

### Amethyst

- Specs Parallel ECS moved to @AmethystEngine organization:
  
  <https://users.rust-lang.org/t/specs-parallel-ecs-moved-to-amethyst-organization/33815>

- @_AndreaCatania published two video tutorials

  <https://youtu.be/7GZc4P_v_DY> - third tutorial about ...

  TODO: find other stuff!

  <https://www.reddit.com/r/rust_gamedev/comments/dk2bin/dispatching_mechanism_of_amethyst_physics/>

  <https://reddit.com/r/rust_gamedev/comments/dgsq9e/3rd_person_character_controller_amethyst>

- <https://reddit.com/r/rust_gamedev/comments/dm3jsf/amethyst_v011_contacts_events>

**TODO**: _Ping @erlend_sh_

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

- [rust-gamedev/wg](https://github.com/rust-gamedev/wg):
  - [#60 "Ecosystem At Risk: Custom Allocators (and more?) in std"](https://github.com/rust-gamedev/wg/issues/60);
  - [#61 "Tracking: Important Issues Filed Elsewhere"](https://github.com/rust-gamedev/wg/issues/61);
  - [#64 "Transfer Ownership of AreWeGameYet to Gamedev WG"](https://github.com/rust-gamedev/wg/issues/64);
- [rust-gamedev/rust-gamedev.github.io](https://github.com/rust-gamedev/rust-gamedev.github.io):
  - [#24 "Email Subscription"](https://github.com/rust-gamedev/rust-gamedev.github.io/issues/24);

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [/r/rust: "Need help porting steam libraries to rust"][help-steam-libs];
- [Embark's open issues][embark-open-issues] ([embark.rs]);
- [winit's "Good first issue" and “help wanted” issues][winit-issues];
- [gfx-rs's "contributor-friendly" issues][gfx-issues];
- [wgpu's "help wanted" issues][wgpu-help-wanted];
- [luminance's "low hanging fruit" issues][luminance-fruits];
- [ggez's "good first issue" issues][ggez-issues];
- [Veloren's "beginner" issues][veloren-beginner];

[help-steam-libs]: https://reddit.com/r/rust/comments/diuqg7/need_help_porting_steam_libraries_to_rust
[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[winit-issues]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

**TODO**: ???

- <https://github.com/bcamp1/Gravisim>

- <https://reddit.com/r/rust/comments/atdkeg/ive_been_making_a_gravity_simulator_using>

------

<!-- TODO: check that the first and the last image/gif looks nice:
they may become a preview on different sites -->

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
