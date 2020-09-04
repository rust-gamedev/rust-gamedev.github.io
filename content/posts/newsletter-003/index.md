+++
title = "This Month in Rust GameDev #3 - October 2019"
date = 2019-11-07
transparent = true
aliases = ["/2019/11/027/newsletter-003", "2019/11/07/newsletter-003.html"]
+++

Welcome to the third issue of the Rust GameDev Workgroup’s
monthly newsletter.

[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.

We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

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

![chest and inventory with items](sulis-inventory.png)

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

![flaming fingers spell demonstration](sulis-battle.png)

Features:

- Cross platform native binaries, currently [built for Windows and Linux][sulis-releases]
- Multiple campaigns with over 8 hours of playtime,
  featuring both handcrafted and procedural content.
- A detailed and fully realized world and story - check out
  the [Lore page][sulis-lore].
- Designed with modding in mind - although more work still needs
  to be done in this area.
- A powerful 2D graphics engine with zoom, scalable UI, HiDPI support,
  and a swappable graphics backend.
- Runs on very modest hardware - even software renderers
  (although at a reduced frame rate).

![ability tree gui](sulis-abilities-tree.png)

The GPLv3-licensed [source code is hosted on GitHub][sulis-src].
Sulis is written in Rust, with scripting in Lua and most data files in the YAML format.

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/din01e/sulis_a_turnbased_rpg_written_in_rust_by_ugrokmoo)_

[sulis]: https://sulisgame.com
[sulis-issues]: https://github.com/Grokmoo/sulis/issues
[sulis-releases]: https://github.com/Grokmoo/sulis/releases
[sulis-lore]: https://sulisgame.com/lore
[sulis-src]: https://github.com/Grokmoo/sulis

### [Veloren][veloren]

![Bumpy terrain with a rivers and trees](veloren.png)

[Veloren][veloren] is an open-world, open-source multiplayer voxel RPG.
The game is in an early stage of development, but is playable.

This month [a v0.4 version was released](https://veloren.net/devblog-37)
and a [player survey results was published][veloren-survey].

Some of October's improvements:

- lots of bugfixes and optimizations;
- improved erosion, rivers and water flow physics;
- user interface improvements;
- improved game lore;
- RFC procedure for 0.5 development.

New video: ["Cities, dungeons and other structures"][veloren-video]
\[[/r/veloren](https://reddit.com/r/Veloren/comments/ddp0n9/veloren_cities_dungeons_and_other_structures)].

The full weekly devlogs "This Week In Veloren...":
[#36](https://veloren.net/devblog-36),
[#37](https://veloren.net/devblog-37),
[#38](https://veloren.net/devblog-38),
[#39](https://veloren.net/devblog-39).

Also, check out [/r/veloren subreddit](https://reddit.com/r/Veloren),
it's pretty active.

[veloren]: https://veloren.net
[veloren-survey]: https://veloren.net/devblog-36/#player-survey
[veloren-video]: https://www.youtube.com/watch?v=iwP7SXdWcTg

### [Canon Collision][canon-collision]

![Exported models with textureas and skeletal animations](pf-sandbox.jpg)

[Canon Collision][canon-collision] by [@rukai] is an Undertale + Homestuck
fan-made platform fighter with powerful tools for modding.
It was forked from another project of rukai's
[PF Sandbox](https://github.com/rukai/PF_Sandbox) so he could focus on making
a game rather then an engine.

This month,
[exporting and hot-reloading assets from blender](https://twitter.com/thisIsRukai/status/1180477120113340417),
[freelook camera](https://twitter.com/thisIsRukai/status/1182945899485335552),
[textures](https://twitter.com/thisIsRukai/status/1182945899485335552),
and [animations](https://twitter.com/thisIsRukai/status/1188261107124727808)
were added to the project.

[canon-collision]:https://canoncollision.com
[@rukai]: https://twitter.com/thisIsRukai

### [Antorum][antorum]

![Antorum screenshot: a few human characters, a few rats and an inventory UI](antorum.jpeg)

[Antorum][antorum] is a multiplayer RPG where players build their characters
and fight against the growing threats on the isle.
The game server is authoritative and written in Rust,
while the client is written in Unity/C#.

This month, [@dooskington] published a bunch of devlogs:

- [#6 "Items And Inventory"](https://dooskington.com/dev-log/6);
- [#7 "Grubbnet"](https://dooskington.com/dev-log/7);
- [#8 "The Editor"](https://dooskington.com/dev-log/8);
- [#9 "The Editor, Pt. 2"](https://dooskington.com/dev-log/9);
- [#10 "Terrain Sync"](https://dooskington.com/dev-log/10).

------

As described in the [7th devlog](https://dooskington.com/dev-log/7),
an initial version of a "[grubbnet]" crate was published.

It's a lightweight TCP client/server
for writing networked applications and games.
It abstracts socket code, keeps track of connections,
and delivers everything back to the developer in a nice list of events.
In addition to handling network events
(such as client connects and disconnects),
handling incoming packets is as easy as grabbing an iterator
over the incoming packet queue.

It's the same networking crate that the Antorum game server uses
under the hood.

[@dooskington]:https://twitter.com/dooskington
[antorum]: https://dooskington.com
[grubbnet]: https://github.com/Dooskington/grubbnet

### [Ferris Fencing][ferris-fencing]

![Two crabs fencing on a 1D map](ferris-fencing.png)

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

### [Tennis Academy] v0.03 & v0.0.4

![4 courts with players](tennis-academy.png)

[@oliviff] released [v0.0.3][tennis-academy-v0-0-3]
and [v0.0.4][tennis-academy-v0-0-4] updates for [Tennis Academy]:

- 🏘️ improved reception area queueing
- 🎆 timed effects when players disappear
- ⛹️ click to collect coins from player
- 👟 4 courts on screen
- ⛹️ matching t-shirts for players
- 💯 money is now score
- 🚥 court + t-shirt colour matching logic
- 📊 score multipliers

[@oliviff]: https://twitter.com/oliviff
[Tennis Academy]: https://iolivia.me/posts/6-months-of-rust-game-dev
[tennis-academy-v0-0-3]: https://twitter.com/oliviff/status/1185576890746265600
[tennis-academy-v0-0-4]: https://twitter.com/oliviff/status/1185945850771660805

### [piano-rs]

![Virtual piano keyboard](piano.png)

[piano-rs] is a multiplayer piano using UDP sockets
that can be played using computer keyboard, in the terminal.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/de28rz/a_multiplayer_piano_game_for_the_terminal)_

[piano-rs]: https://github.com/ritiek/piano-rs

### [Will it dissolve?][dissolve]

![Dissolve gameplay demo](dissolve.gif)

["Will it dissolve?"][dissolve] is a small puzzle game
for ["Open Jam 2019"](http://openjam.io)
where you have to prepare the level so that it will
automatically convert and dissolve in the future.

Programmed with the help of the [Tetra engine][tetra].
[The source code is available here][dissolve-src].

[dissolve]: https://puppetmaster.itch.io/dissolve
[tetra]: https://github.com/17cupsofcoffee/tetra
[dissolve-src]:https://github.com/puppetmaster-/will_it_dissolve

### [Garden Devlog: October][garden-october]

![Garden screenshot: a tree, leaves, water and ruins](garden.jpeg)

[Garden][garden-itch] is an upcoming game centered around
growing realistic plants.

The following changes were made since the last devlog:

- Improved flowers were added.
- The plant simulation code is almost finalized,
  and developers will be able to start adding new species soon.
- The procedural ruin generation was improved:
  no more floating concrete chunks.

[Watch the video demo here](https://twitter.com/logicsoup/status/1190754460575961089).

Also, a new design plan was created:

- The main objective is to restore the luscious ecosystem
  in a polluted wasteland.
  The player will have to continuously figure out how to handle different
  environmental constraints to keep trees growing, collect enough fruit
  and figure out what to do with them, and unlock new goals and flora.
- But for players who are interested in wild, goalless plant growth,
  there’ll also be a sandbox mode.
  As one progresses in the main game and “unlocks” more trees,
  playing around with creating flourishing jungle troves will be possible.

To stay informed of smaller updates, screenshots, and new devlogs,
follow [@logicsoup] on Twitter.

[garden-itch]: https://epcc.itch.io/garden
[garden-october]: http://cyberplant.xyz/posts/october
[@logicsoup]: https://twitter.com/logicsoup

### [EVE Aether Wars] Backend Optimization

[@aidanhs shared](https://twitter.com/aidanhs/status/1181584776584675328)
a small [EVE Aether Wars] backend optimization success story:

> To double the tick rate to 30Hz, our underlying @rustlang layer
> [from last time](https://twitter.com/aidanhs/status/1110607519385350150)
> needed...a two line bugfix and some metrics support.
> Nice proof point for reliable software in Rust!

[EVE Aether Wars]: https://store.steampowered.com/app/1165670/EVE_Aether_Wars__Tech_Demo/

### [Robo Instructus]

[Alex Butler] continues to polish their "[Robo Instructus]" game;
[1.12, 1.13, and 1.14 versions were released][robo-news]:
non-ascii code input, new icons, bugfixes, and better translations.

[You can contribute to translations here][robo-transaltion].

![translated menu items](robo-ru.png)

[Alex Butler]: https://twitter.com/bigabgames
[Robo Instructus]: https://store.steampowered.com/app/1032170/Robo_Instructus/
[robo-news]: https://steamcommunity.com/app/1032170/allnews
[robo-transaltion]: https://github.com/big-ab-games/robo-instructus-translation#about

### [Godot][godot] and Rust

- ["Rendering a 2D game in 3D"](https://medium.com/@recallsingularity/rendering-a-2d-game-in-3d-bd24ddbee6eb)
  \- [Tom Leys] is working on a “The Recall Singularity” [Godot][godot]/Rust game
  about designing autonomous factory ships and stations
  and this month they published
  a post about evolution of the game's rendering.

  ![Recall Singularity screenshot: map, a few belts and processing nodes](recall-singular.png)

- [@ardawanizadi] shared a
  [short text report](https://reddit.com/r/godot/comments/dilbar/game_progress_for_almost_a_month_rust_godot)
  and a [video demo](https://twitter.com/ardawanizadi/status/1184353596927688704)
  of their progress with a project of an OpenWorld game this month:
  character physics, weapon system, cameras, animations system,
  dynamic damage system.

- ["Pong Clone in Godot Using 'gdnative' Rust Bindings"](https://reddit.com/r/godot/comments/dfam0p/i_made_a_pong_clone_in_godot_using_the_gdnative)
  \- [@you-win] couldn't find any full game examples that used [godot-rust]
  so they made their own
  \[[source code](https://github.com/you-win/godot-pong-rust)].

[godot]: https://godotengine.org
[Tom Leys]: https://twitter.com/RecallSingular1
[@ardawanizadi]: https://twitter.com/ardawanizadi
[@you-win]: https://github.com/you-win
[godot-rust]: https://github.com/GodotNativeTools/godot-rust

### Ludum Dare 45

[Ludum Dare][ld] is a regular game jam event,
during which developers create games from scratch in a weekend
based on a theme suggested by the community.

LD45's theme was "Start with nothing".
Here are some of the games made with Rust:

- ["Working Title"][working-title] by [@NoahRosenzweig] made with Amethyst
  ([source code][working-title-src]).

  > _Experience a work in progress._
  >
  > Play through the development process of a 2D platformer game,
  > and watch your environment transform as you progress...
  > The further you get, the more features are added, including
  > menacing enemies, destructive spikes, and adaptive music.

  ![Working Title: an early stage of the game](working-title.png)

- ["Mindmaze"][mindmaze] by [@sigodme]
  ([source code][mindmaze-src]).

  > A small and unhurried story about devious passages
  > of the trapped human mind.
  > Begin in the middle of oblivion as shadow and take a walk through
  > every chamber of this place to find all shards of lost personality.
  > Can you find the way out?!

  ![Mindmaze: main menu](ld45-mindmaze.png)

- ["Legally Dead"][legally-dead] by [@vilcans] made with [ggez]
  ([source code][legally-dead-src]).

  > With nothing, not even memories, you find yourself maneuvering
  > some kind of craft in strange caves.

  ![ultra-low-poly ship in low-poly caves](legally-dead.png)

  Check out the devlog post:
  ["Tools and tech for my game written in Rust"][legally-dead-post].

[ld]: https://en.wikipedia.org/wiki/Ludum_Dare
[working-title]: https://ldjam.com/events/ludum-dare/45/working-title
[working-title-src]: https://github.com/Noah2610/LD45-WorkingTitle
[@NoahRosenzweig]: https://twitter.com/NoahRosenzweig
[mindmaze]: https://ldjam.com/events/ludum-dare/45/mindmaze
[mindmaze-src]: https://github.com/sigod/ludum-dare-45
[@sigodme]: https://twitter.com/sigodme
[legally-dead]: https://ldjam.com/events/ludum-dare/45/legally-dead
[legally-dead-post]: https://ldjam.com/events/ludum-dare/45/legally-dead/tools-and-tech-for-my-game-written-in-rust
[legally-dead-src]: https://github.com/vilcans/ld45
[@vilcans]: https://twitter.com/vilcans
[ggez]: https://ggez.rs

### Amethyst Games

- See the "Working Title" LD45 game above.

- A top-down 2D shooter ["Grumpy Visitors"][grumpy] by [@mvlabat]
  became an official showcase game.

  Read the announcement post: ["Showcase game #4: Grumpy Visitors"][grumpy-ann].

  Current game features:
  - Cooperative multiplayer;
  - Spawning monsters with basic AI;
  - Sprite animations and custom shaders (health HUD).

  [The source code is available here][grumpy].

  ![A magician shooting missiles at giant bugs](grumpy-visitors.png)

- [Arrakis][arrakis] by [@JpMoresmau] is a 80s game ported in Rust and Amethyst.

  > It's a mini role-playing/adventure game. The goal?
  > Walk through the streets of Arrakis to find the fabled Wizard of Arrakis,
  > that can teach you arcane powers you've only dreamt of!

  ![Arrakis screenshot](arrakis.png)

- [@webshinra] finished porting their hexagonal game to Amethyst
  and is now preparing to build gameplay.

  ![hexagonal pam with a few mechs](webshinra-hex.jpg)

- [@takeryo_eeic] is also working on a turn-based hexagonal game.
  [Watch the video demo here][takeryo-video].

  [![a small hex field with a few fighters](takeryo-eeic-hex-game.png)][takeryo-video]

- [Space Shooter] by [@carlosupina] got
  [2 new items](https://github.com/amethyst/space_shooter_rs/pull/19)
  and [1 new enemy](https://github.com/amethyst/space_shooter_rs/pull/18).

[grumpy-ann]: https://amethyst.rs/posts/showcase-game-4-grumpy-visitors
[grumpy]: https://github.com/amethyst/grumpy_visitors
[@mvlabat]: https://twitter.com/mvlabat
[arrakis]: https://github.com/JPMoresmau/arrakis
[@JpMoresmau]: https://twitter.com/JpMoresmau
[@Webshinra]: https://twitter.com/Webshinra
[@takeryo_eeic]: https://twitter.com/takeryo_eeic
[takeryo-video]: https://twitter.com/takeryo_eeic/status/1190142474062184448
[Space Shooter]: https://github.com/amethyst/space_shooter_rs
[@carlosupina]: https://twitter.com/carlosupina

## Library & Tooling updates

### [Dev Time Optimization -- Part 1 (1.9x speedup, 65% less disk usage)][dev-time-opt]

Compile times (full and incremental) are one of Rust's pain points.
[Azriel] published a devlog about optimizing [Will]'s build times.
Summary:

> In a 45k LOC / 102-crate workspace,
> moving tests from member crates into a single workspace_tests crate
> achieved the following improvements:
>
> - Build and test duration in release mode reduced
>   from 23 minutes to 13 minutes.
> - Debug artifact disk usage reduced from 20 G to 7 G
>   (65% reduction, fresh build),
>   or 230 G to 50 G (78% reduction, ongoing development).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/desc3q/dev_time_optimization_part_1_19x_speedup_65_less)_

[Azriel]: https://azriel.im
[Will]: https://azriel91.itch.io/will
[dev-time-opt]: https://azriel.im/will/2019/10/08/dev-time-optimization-part-1-1.9x-speedup-65-less-disk-usage

### 🛈 Tip: Speed Up Iteration Time By Using [LLD Linker][lld]

Takeaways from [an interesting tweet](https://twitter.com/VladZhukov0/status/1186412587958845442)
from [VladZhukov0]
and a [/r/rust thread "Is the rust compiler really THAT slow?"][r_rust_slow]:

- Try switching to [LLD linker][lld]:

  ```sh
  RUSTFLAGS="-C link-arg=-fuse-ld=lld" cargo run
  # Alternatively, you can set `rustflags` in your `.cargo/config`
  ```

  Depending on your project structure, OS, and toolchain
  this can potentially speed up the incremental compilation a few times.

- Also, try disabling debug information (if you don't need it):

  ```toml
  # in your `Cargo.toml`

  [profile.dev]
  debug = 0
  ```

> Now the linking only takes around one second,
> compared to 10 seconds previously.
>
> Reduced my average compilation time from 10-20s
> (which is a bit crazyness for gamedev iteration) to 5-7s.
> Wonder why haven't I tried this before?🤔

Also, see this GameDev WG tracker/complaint issue:
[#50 "Linking Time"](https://github.com/rust-gamedev/wg/issues/50).

[lld]: https://lld.llvm.org
[VladZhukov0]: https://twitter.com/VladZhukov0
[r_rust_slow]: https://reddit.com/r/rust/comments/dl4c8o/is_the_rust_compiler_really_that_slow

### [RLSL][rlsl]: a Rust to SPIR-V Compiler

![RLSL code sample](rlsl-example.png)

^ _a simple fragment shader that renders a red circle (temporary syntax)_

This month, [@MaikKlein_DEV] gave a talk at
[The Khronos Group](https://www.khronos.org)'s meetup in Munich
about bringing Rust to the GPU:
[here're the slides][rlsl-slides].

[RLSL][rlsl] (Rust Like Shading Language) is an _experimental_ project
that allows compiling Rust to [SPIR-V][spir-v].

Current features:

- Supports cargo;
- Multiple entry points can be defined in the same SPIR-V module;
- Currently supports Vertex, Fragment and Compute shaders;
- Shader code can run on the CPU because rlsl is a subset of Rust.

Also, check out older posts:

- ["RLSL Progress report" (2018.02.09)](https://maikklein.github.io/rlsl-progress-report),
- ["Raycasting a sphere with RLSL" (2018.10.20, video)](https://youtube.com/watch?v=XhAvIVs7lOA).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/dlcjet/rlsl_a_rust_to_spirv_compiler),
[hacker news](https://news.ycombinator.com/item?id=21314679)_

[@MaikKlein_DEV]: https://twitter.com/MaikKlein_DEV
[spir-v]: https://www.khronos.org/registry/spir-v
[rlsl]: https://github.com/MaikKlein/rlsl
[rlsl-slides]: https://docs.google.com/presentation/d/1_cB-sxUusYVoCYdXnqwAg2u3-lrqBfgrUj205ytxYaw

### [gfx-rs v0.4][gfx-v0-4]

![sailor screenshot: vector terrain map and some basic UI](sailor.png)

^ _a screenshot from [Yatekii/sailor] - a wgpu-based sailing navigation application_

[gfx-rs v0.4 was released](https://reddit.com/r/rust/comments/dm89t2/gfxhal_version_04_release):
major changes were described in [the last blog post](https://gfx-rs.github.io/2019/10/01/update.html),
for the detailed list of changes, see the
[CHANGELOG](https://github.com/gfx-rs/gfx/blob/master/CHANGELOG.md#hal-040-23-10-2019).

[gfx-v0-4]: https://reddit.com/r/rust/comments/dm89t2/gfxhal_version_04_release
[Yatekii/sailor]: https://github.com/Yatekii/sailor

### [Vulkano: Why Command Buffers Are So Complicated?][vulkano-thread]

![vulkano logo](vulkano-logo.png)

[A twitter thread by @Tomaka][vulkano-thread] about why command buffers
in [Vulkano] (a Rust library that wraps around [Vulkan graphics API][Vulkan])
are so complicated.

[vulkano-thread]: https://twitter.com/tomaka17/status/1188513260473110528
[Vulkano]: http://vulkano.rs
[Vulkan]: https://www.khronos.org/vulkan

### [splines v3.0][splines]

![a spline sample with node handles](splines.png)

[splines], a crate by [@phaazon] to handle spline interpolation,
[just got released in version 3.0.0][splines-v3].

That version adds support for stroke Bézier interpolation,
which is a Bézier interpolation but allows you to break the handles
(instead of the regular 180° angle formed
by the handle with the `Interpolation::Bezier` mode).

[spline-editor] got a patch to allows you to try stroke Bézier.

[splines]: https://crates.io/crates/splines
[spline-editor]: https://github.com/phaazon/spline-editor
[splines-v3]: https://reddit.com/r/rust/comments/dln7yd/splines300

[@phaazon]: https://twitter.com/phaazon_

### [This Month in Mun - October 2019][mun-oct]

[Mun][mun-lang.org] is a scripting language for gamedev
focused on quick iteration times that is written in Rust.

The Mun Team started October with the launch of the [mun-lang.org] website,
[Discord server][mun-discord], and [OpenCollective][mun-oc]
and processing the feedback from a larger audience.
Now the team is moving towards v0.1 release.

Also, check out /r/rust ["The Mun programming language is going live!" post][mun-live].

[mun-oct]: https://mun-lang.org/blog/2019/10/28/this-month-october
[mun-lang.org]: https://mun-lang.org
[mun-discord]: https://discord.gg/SfvvcCU
[mun-oc]: https://opencollective.com/mun
[mun-live]: https://reddit.com/r/rust/comments/de51ai/the_mun_programming_language_is_going_live

### [ultraviolet]

![ultraviolet benchmarks table](ultraviolet-benches.png)

[ultraviolet] by [@fu5ha] is a crate to do basic, computer-graphics-related,
linear algebra, but fast, by taking full advantage of [SIMD].

> <...> To do this, it uses an "SoA" ([Structure of Arrays][aos_soa])
> architecture such that each Wec (wide-vec) actually contains the data
> for 4 Vecs and will do any operation on all 4 of the vector 'lanes'
> at the same time.
> Doing this is potentially much (factor of 10) faster than
> an "AoS" ([Array of Structs][aos_soa]) layout,
> as all current Rust linear algebra libraries do, depending on your work load.
> However, algorithms must be carefully architected
> to take full advantage of this, and doing so can be easier said than done,
> especially if your algorithm involves significant branching.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/dpknd1/ultraviolet_a_crate_to_do_lots_of_linear_algebra)_

[ultraviolet]: https://github.com/termhn/ultraviolet
[@fu5ha]: https://twitter.com/fu5ha
[SIMD]: https://en.wikipedia.org/wiki/SIMD
[aos_soa]: https://en.wikipedia.org/wiki/AoS_and_SoA

### [This month in rustsim #8 (Aug - Sep - Oct 2019)][rustsim-8]

![salva's logo](salva.png)

Main updates:

- [salva.rs] - two new crates for fluid simulation: salva2d and salva3d!

  > Salva is a new project dedicated to fluid simulation.
  > The goal of salva is to provide CPU-based, particle-based, 2D and 3D,
  > fluid simulation libraries that can be used for interactive and offline
  > application like animation.
  > It could be used, to some extents, for video games (especially the 2D version),
  > as long as the number of particles is kept small.

  Watch a ["Fluid simulation with salva 0.1 and nphysics 0.13"][rustsim-video]
  video or play with the online [2D][salva-demo-2d] or [3D][salva-demo-3d]
  WASM demos yourself.

- [nphysics 0.13][nphysics.rs] brings:
  some support of breakable joint constraints,
  and more improvements on the integration with ECS.

- [@sebcrozet](https://github.com/sebcrozet)
  (the main developer of all the current rustsim projects)
  [have been added to the GitHub sponsor beta](https://github.com/sponsors/sebcrozet).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/doheby/this_month_in_rustsim_8)_

[rustsim-8]: https://rustsim.org/blog/2019/11/01/this-month-in-rustsim
[rustsim-video]: https://www.youtube.com/watch?v=356unTmeVUk
[salva.rs]: https://salva.rs
[salva-demo-2d]: https://www.salva.rs/demo_all_examples2
[salva-demo-3d]: https://www.salva.rs/demo_all_examples3
[nphysics.rs]: https://nphysics.org

### [cyclone-physics-rs]

[![cyclone physics demo](cyclone-physics-demo.gif)][cyclone-video-demo]

^ _a little demo of "particle" simulation_

[cyclone-physics-rs] by [@heyrutvik] a new WIP game physics engine
based on the ["Game Physics Engine Development" book][cyclone-physics-book].

[@heyrutvik]: https://twitter.com/heyrutvik
[cyclone-physics-rs]: https://github.com/heyrutvik/cyclone-physics-rs
[cyclone-video-demo]: https://twitter.com/heyrutvik/status/1180072669250834432
[cyclone-physics-book]: https://www.crcpress.com/Game-Physics-Engine-Development-How-to-Build-a-Robust-Commercial-Grade/Millington/p/book/9780123819765

### [Cynic64's WIP Rendering Engine][cynic64-ann]

[@cynic64] shared a [demo video][cynic64-video] and
a [report about their WIP rendering engine][cynic64-ann].

It's based on Vulkano and consists of three repos:

- [re-ll] - low level abstractions for Vulkano's command buffers and windows.
- [render-engine] - Vulkan abstraction.
- [test-render-engine] - various little programs created with render-engine.
  "pretty" is the one shown in the video, "base" shows the basic functionality.

[@cynic64]: https://github.com/cynic64
[cynic64-ann]: https://reddit.com/r/rust/comments/dpa3ar/wip_rendering_engine
[cynic64-video]: https://youtube.com/watch?v=UrnSCpf_yw0
[re-ll]: https://github.com/cynic64/re-ll
[render-engine]: https://github.com/cynic64/render-engine
[test-render-engine]: https://github.com/cynic64/test-render-engine

### [Rust Roguelike Tutorial][roguelike-book]

[!["Doors" demo](rogulike-demo.gif)][doors-demo]

[The Roguelike Tutorial][roguelike-book] by [@blackfuture]
includes almost 40 chapters now and continues to grow.

Some of the October's updates:

- traps and doors;
- mapgen algorithms including Waveform Collapse;
- prefab levels and sections;
- guided procgen for towns.

All chapters have links to WASM demos.

------

Also, 0.5 version of [rltk-rs] brings
abstraction between back-ends, better compile time,
web version improvements, and more examples.

[roguelike-book]: http://bfnightly.bracketproductions.com/rustbook
[doors-demo]: http://bfnightly.bracketproductions.com/rustbook/wasm/chapter-40-doors
[rltk-rs]: https://github.com/thebracket/rltk_rs
[@blackfuture]: https://patreon.com/blackfuture

### [Nannou awarded Mozilla grant for foundational audio development][nannou-post]

[![Nannou & mozilla logos](mission_partners_nannou_mozilla.png)][nannou-post]

[Nannou][nannou] is a creative coding framework that aims to make it easy
for artists to express themselves with simple, fast, reliable code.

[Nannou has been awarded 10K USD in funding][nannou-post]
as a part of the [MOSS Mission Partners] track.
The proposed work is aimed towards improving the state
of some foundational crates within the Rust audio ecosystem
over the next three to four months.

Key areas of our work will include:

- Addressing some long-standing issues in [CPAL].
- Review and improve CPAL's web audio support.
- Implement a simple web app and guide demonstrating CPAL's web audio support.
- Design, develop and document a standard audio graph abstraction and crate,
  reflecting on lessons learned and limitations of prior efforts,
  and the requirements of the wider rust audio community.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/dlz3fb/nannou_the_creative_coding_framework_awarded)_

[nannou]: https://nannou.cc
[nannou-post]: https://nannou.cc/posts/moss_grant_announce
[MOSS Mission Partners]: https://mozilla.org/en-US/moss/mission-partners
[CPAL]: https://github.com/rustaudio/cpal

### Amethyst

![amethyst logo](/amethyst-logo.png)

- [specs] and its related repositories [awesome-specs], [hibitset] and [shred]
  were moved to [Amethyst organization] \[[URLO][specs-moved]].

- [amethyst_physics v0.1.1 was released](https://www.reddit.com/r/rust_gamedev/comments/dm3jsf/amethyst_v011_contacts_events):
  now it's possible to fetch Rigid body contacts events.

- [@_AndreaCatania] published two video tutorials:

  - ["Character controller - Amethyst physics tutorial #2"](https://youtube.com/watch?v=-RTPZPYR5CI)
  - ["Physics Batch Dispatcher - Amethyst physics tutorial #3"](https://youtube.com/watch?v=7GZc4P_v_DY)

[specs]: https://github.com/amethyst/specs
[specs-moved]: https://users.rust-lang.org/t/specs-parallel-ecs-moved-to-amethyst-organization/33815
[awesome-specs]: https://github.com/amethyst/awesome-specs
[hibitset]: https://github.com/amethyst/hibitset
[shred]: https://github.com/amethyst/shred
[Amethyst organization]: https://github.com/amethyst
[@_AndreaCatania]: https://twitter.com/_AndreaCatania

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
- [Amethyst's "good first issue" issues][amethyst-issues];

[help-steam-libs]: https://reddit.com/r/rust/comments/diuqg7/need_help_porting_steam_libraries_to_rust
[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[winit-issues]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

[![Gravisim screenshot](gravisim.png)][gravisim-ann]

[Gravisim][gravisim-src] by [@bcamp1]
is a simulation of universal gravitation.
It uses [Newton's Law for Universal Gravitation][unigrav]
to run an n-body physics simulation.

[Check out a video demo in this /r/rust announcement.][gravisim-ann]

[gravisim-src]: https://github.com/bcamp1/Gravisim
[gravisim-ann]: https://reddit.com/r/rust/comments/atdkeg/ive_been_making_a_gravity_simulator_using/
[@bcamp1]: https://github.com/bcamp1
[unigrav]: https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation

------

<!-- TODO: check that the first and the last image/gif looks nice:
they may become a preview on different sites -->

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].
Feel free to send PRs about your own projects!

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

**Discussions of this post**:
[/r/rust](https://reddit.com/r/rust/comments/dt3uc9/this_month_in_rust_gamedev_3_october_2019),
[twitter](https://twitter.com/rust_gamedev/status/1192539926161702913).

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
