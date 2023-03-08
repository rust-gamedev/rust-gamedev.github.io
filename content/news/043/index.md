+++
title = "This Month in Rust GameDev #43 - February 2023"
transparent = true
date = 2023-03-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 43rd issue of the Rust GameDev Workgroup's
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

- [Announcements](#announcements)
- [Game Updates](#game-updates)
- [Engine Updates](#engine-updates)
- [Learning Material Updates](#learning-material-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Other News](#other-news)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)

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

## Announcements

## Game Updates

### Cootsmania

![Cootsmania gameplay](cootsmania-gameplay.jpg)

[Cootsmania] ([GitHub][coots-github])
is a multiplayer racing game made for [Ludwig Jam 2023][ludwig-jam] in 10 days
by [@kuviman] (programming), [@rincs] (art), and [@Brainoid] (music & sfx).

The game is about racing other players around Ludwig's house
towards the next Coots (Ludwig's cat) location.
Every round half of the players get eliminated and eventually winner is decided.

[See trailer on YouTube][coots-trailer].

The game is written using a custom engine: [Geng][geng].

[Cootsmania]: https://kuviman.itch.io/cootsmania
[ludwig-jam]: https://itch.io/jam/ludwig-2023
[coots-github]: https://github.com/kuviman/cootsmania
[coots-trailer]: https://youtu.be/N0bQDZTDr2Y
[geng]: https://github.com/kuviman/geng
[@kuviman]: https://github.com/kuviman
[@rincs]: https://rincsart.com
[@Brainoid]: https://twitter.com/brainoidgames

### [Tunnet][tunnet-itch]

![Tunnet preview](tunnet.jpg)
_Tunnels and computer networks_

Tunnet ([Steam][tunnet-steam], [Itch.io][tunnet-itch]) by
[@puzzled\_squid][puzzled_squid] is a small puzzle/exploration game where you
play as a robot technician who has been tasked with building a computer network
in an underground complex.

The project is implemented using the Bevy engine. It is currently under
development and is expected to be released later this year.
This month, the announcement trailer and the first few pages of the manual have
been published on the [project page][tunnet-itch].

[tunnet-itch]: https://puzzled-squid.itch.io/tunnet
[tunnet-steam]: https://store.steampowered.com/app/2286390/Tunnet
[puzzled_squid]: https://puzzledsquid.xyz

### [Open Combat][OpenCombat_website]

![Debug window: terrain tiles, units, and paths](open_combat.png)
_Game now includes live debug window_

Open Combat ([Website][OpenCombat_website], [GitHub][OpenCombat_github],
[Discord][OpenCombat_discord]) is a real time tactical game
which takes place during the 2nd World War.

Some major changes this month :

- A live debug window has been introduced (using [egui][egui_github]
  and its [ggegui][ggegui_github] integration). It allows to live-modify and
  adjust the gameplay of the running game.
- A big source code split has been done (see [the merge request][OpenCombat_split_mr])
  which separated the game logic and GUI.
  It allows running the game logic as a standalone server
  and working on different game parts more easily.
- Integration of [puffin][puffin_github] to inspect performances

The developers are also working on high-definition infantry sprites integration
and on a high-definition map (and are searching for graphic
designer help!).

[OpenCombat_website]: https://opencombat.bux.fr/
[OpenCombat_github]: https://github.com/buxx/OpenCombat
[OpenCombat_discord]: https://discord.gg/6P2vtFh2Px
[OpenCombat_split_mr]: https://github.com/buxx/OpenCombat/pull/104
[egui_github]: https://github.com/emilk/egui
[ggegui_github]: https://github.com/NemuiSen/ggegui
[puffin_github]: https://github.com/EmbarkStudios/puffin

### [Tiny Glade]

![tiny_glade_sheep_umbrella](tiny_glade_sheep_umbrella.gif)

[@anopara] and [@h3r2tic] recently added [terrain editing] to [Tiny Glade].
They then faced an important game design question: how would sheep handle
it? Well, these cuddly little floofs are not mountain goats,
so the developers gave them tiny umbrellas.

Read more in their latest [Steam blogpost].

[@anopara]: https://twitter.com/anastasiaopara
[@h3r2tic]: https://twitter.com/h3r2tic
[Tiny Glade]: https://store.steampowered.com/app/2198150/Tiny_Glade/
[terrain editing]: https://store.steampowered.com/news/app/2198150/view/3651890488940565185
[Steam blogpost]: https://store.steampowered.com/news/app/2198150/view/3669907614196390626

### [Cargo Space]

![Screenshot of Cargo Space](cargo-space-physics.png)

[Cargo Space] ([Discord][cargospace_discord]) by
[@johanhelsing][johanhelsing_mastodon] is a co-op 2d space game where you build
a ship and fly it through space looking for new parts, fighting pirates and the
environment.

The game uses its own homemade XPBD-based physics engine implemented directly
using [Bevy] systems and types. This month the implementation was fleshed out
adding important features such as collision layers, composite colliders, one-way
platforms and an efficient collision broadphase.

In other words, this means ship-to-ship collisions a are finally happening. This
was previously tricky, since ships are a combination of box colliders when
colliding with each other and bevy_ecs_tilemap colliders (when colliding with
the player).

One part of the broadphase implementation was split out into a new crate,
[bevy_sparse_grid_2d]. It provides a simple and convenient way to query for
entities that share one or more grid cells based on their axis aligned bounding
box (AABB).

Read more about Cargo Space's physics in [the long and detailed blog
post][cargospace_devlog_5].

[Cargo Space]: https://helsing.studio/cargospace
[cargospace_devlog_5]: https://johanhelsing.studio/posts/cargo-space-devlog-5
[cargospace_discord]: https://discord.gg/ye9UDNvqQD
[johanhelsing_mastodon]: https://mastodon.social/@johanhelsing
[bevy_sparse_grid_2d]: https://github.com/johanhelsing/bevy_sparse_grid_2d

### [CyberGate][cybergate-yt]

![Many creatures flying and casting shadows](cybergate.gif)
_Many creatures flying and casting shadows_

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]) is an
ambitious multiplayer project from CyberSoul, currently in development.
With cutting-edge procedural generation and artificial intelligence,
it promises to immerse players in a mysterious and enigmatic universe
filled with strange creatures and hidden secrets.

The latest updates to CyberGate include:

- A rebuilt renderer, providing improved graphics and performance.
- Shadow map cascades with seamless transitions for smooth shadow rendering.
- Soft shadows for more realistic shadow effects.
- A fog effect to create atmospheric depth and immersion.
- A sky box to add visual interest and realism to the game world.
- Support for importing GLTF models, expanding the range of assets available.

Join the journey into the unknown and help shape the future of CyberGate!
[Join the Discord server][cybergate-dis] to participate in upcoming Phase 7.0!

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

### [Legend of Worlds][low-website]

![legend_of_worlds](legend_of_worlds.jpg)

[Legend of Worlds][low-website] ([Discord][low-discord], [Twitter][low-twitter])
is a cross-platform, cross-play, 2D online sandbox multiplayer
experience where you can join, play, create and share player-created worlds.

[The latest dev log][low-devlog] from [Rou][low-twitter] covers an update
to the open-source game engine created for this game.

Legend of Worlds uses Toxoid Engine. Toxoid is a cross-platform, polyglot,
open-source WebAssembly game engine written in Rust.
The architecture has been updated so that Toxoid games can now share memory
directly between WASM components, and map access to the data values rather than
deserializing a set of values every time, resulting in "massive performance gains".

[low-website]: http://legendofworlds.com
[low-twitter]: https://twitter.com/DreamsectGames
[low-discord]: https://discord.gg/aqD7H3F7nz
[low-devlog]: http://legendofworlds.com/dev-log-2

### [Hydrofoil Generation]

![hgs_screen](hydrofoil_43.jpg)

[Hydrofoil Generation]
([Steam][hgs_steam], [Facebook][hgs_facebook], [Discord][hgs_discord])
is a realistic sailing/foiling inshore simulator in development for PC/Steam
that puts you in the driving seat of modern competitive sailing.

Hydrofoil Generation released February 16th 2023 on Steam Early Access after
almost 3 years of development.

The game is written completely in Rust, using a custom engine based on
DirectX 11, physics powered by Rapier-3D.

Stefano Casillo, programmer commented: "Rust delivered on every single
promise. I never experienced such an uneventful launch and QA like the one
we had for Hydrofoil Generation. The software stability has been impressive
since the beginning of the project and confirmed the trend at release with
very few problems all very easy to address".

Hydrofoil Generation currently sits at a very positive review rate of 96%
on the Steam page and is praised for its challenging gameplay, performance
and realistic physics.

[Hydrofoil Generation]: https://hydrofoil-generation.com/
[hgs_facebook]: https://facebook.com/HydrofoilGenerationSailing/
[hgs_discord]: https://discord.gg/DtKgt2duAy/
[hgs_steam]: https://store.steampowered.com/app/1448820/Hydrofoil_Generation/
[hgs_twitch]: https://twitch.tv/kunosstefano

## Engine Updates

### [godot-rust][gd-github]

![godot-rust GDExtension](godot-rust-gdextension.png)

The [release of Godot version 4.0][gd-godot4] marks a significant milestone in
the game development ecosystem. godot-rust aims to bring the open-source
game engine to the Rust community.

For the [Godot 4 (GDExtension) binding][gd-gdextension], February was a very
productive month, with a handful of new contributors and [16 merged pull
requests][gd-pulse]. An up-to-date feature overview is available
[in issue #24][gd-24]. Last month's changes include:

- Support for arrays, packed arrays and dictionaries
- Support for some geometric types (vectors, quaternions, colors)
- Bugfixes regarding ref-counts, use-after-free, memory leaks

On the [Godot 3 (GDNative) side][gd-gdnative], lots of quality-of-life
improvements have found their way into the library:

- Class self-registration based on `inventory` crate
- Flexible self types: `fn instance(#[self] this: Instance<Self>)`
- Trait entry point: `#[callbacks] impl GDNativeCallbacks for MyLibrary {...}`

Both bullet lists are examples for how the GDNative and GDExtension bindings
mutually benefit each other, reusing proven designs for user-friendly Rust APIs.

[gd-github]: https://github.com/godot-rust
[gd-gdextension]: https://github.com/godot-rust/gdextension
[gd-gdnative]: https://github.com/godot-rust/gdnative
[gd-godot4]: https://godotengine.org/article/godot-4-0-sets-sail/
[gd-pulse]: https://github.com/godot-rust/gdextension/pulse/monthly
[gd-24]: https://github.com/godot-rust/gdextension/issues/24

### [Blue Engine][be-github]

![blue_engine egui-plugin demo: color picker](blue_engine_egui_plugin_update.png)

[Blue Engine][be-github] by [@ElhamAryanpur] is an easy to use, extendable, and
portable graphics engine built to make it easier to render 2D or 3D graphics.

Although the month of Febuary was slow for the development of the engine, there
have been significant efforts towards addition of [documentation][be-docs] and the
eventual release of the next version. In the meantime, the plugins have favored significant
updates and development in the month, notably the [egui][be-egui] plugin.

Now the [egui plugin][be-egui] allow you to render objects of the engine direction
inside an egui window. This feature was built in collaboration with [@Noswad].

This also introduced a new option in Objects: `is_visible: bool`
which hides an object
from getting rendered if set to false (set to `true` as default). This allows
you to hide an object from getting rendered on the background of egui, and can then
add it to be rendered inside an egui window instead. So far the system on the second
design, suggestions are welcome to cement a better design. Refer to [example][be-egui-example].

[be-github]: https://github.com/AryanpurTech/BlueEngine
[be-egui]: https://github.com/AryanpurTech/BlueEngineEGUI
[be-egui-example]: https://github.com/AryanpurTech/BlueEngineEGUI/blob/master/examples/custom_3d.rs
[be-docs]: https://docs.rs/blue_engine
[@ElhamAryanpur]: https://github.com/ElhamAryanpur
[@Noswad]: https://github.com/TheNoswad

### [Ambient][ambient-github]

![Image of a scene made with Ambient](made_with_ambient.jpg)

After over a year in development, [version 0.1 of Ambient][ambient-blog]
(formerly known as Dims) was unveiled to the public. It is an open-source
multiplayer 3D game runtime, compatible with any language that compiles
to/runs on WebAssembly, and designed to make it easy to build and deploy
rich multiplayer worlds and experiences.

It is guided by several core principles, including seamless networking,
data-oriented design, interoperability, and more.
The core runtime is written in Rust and uses WGPU for graphics, Quinn
for networking and WebAssembly for user logic. This allows it to run on
all major desktop platforms, with active work underway for the Web and
other targets.

Check out [the GitHub][ambient-github] (2600 stars!) to get started with
building for/or on Ambient yourself, or chat to the developers and other
explorers on [the Discord][ambient-discord].

_Discussion: [/r/rust][ambient-reddit], [Hacker News][ambient-hn]_

[ambient-github]: https://github.com/AmbientRun/Ambient
[ambient-blog]: https://ambient.run/post/introducing-ambient
[ambient-reddit]: https://reddit.com/r/rust/comments/118wlda/introducing_ambient_01
[ambient-hn]: https://news.ycombinator.com/item?id=34906166
[ambient-discord]: https://discord.gg/ambient

### [Geng][geng]

[Geng][geng] by [@kuviman] is a game engine that is used by him & friends
for mostly making small games for game jams.

The focus is to work on the web first (using WebGL1),
but can also work easily on native platforms.

Font rendering is done using sdf textures,
which are being created on GPU based on [this article][sdf-on-gpu].
Some font improvements from February:

- better curve approximation (still can be done better like in the article)
- use euclidean distance instead of manhattan
- added a method to create sdf texture for text
  (previously font only had sdf texture atlas with every glyph)
  
Support was added for OpenGL blend equations - e.g. minmax blending,
which is now used instead of depth buffer for sdf textures

Also, some improvements related to sound:
API to query `Sound` duration,
starting sound playback from specific position,
and changing the speed of `SoundEffect`.

[sdf-on-gpu]: https://astiopin.github.io/2019/01/06/sdf-on-gpu.html

## Learning Material Updates

### [Write a First Person Game in 2KB with Rust][firstperson-wasm4]

![Game Preview](firstperson.png)

[@grantshandy] published an [article][firstperson-wasm4] about creating a simple
first-person game in Rust with [WASM-4]. It covers the basics of a ray casting
algorithm and minifying Rust with WebAssembly. You can play the finished game
[here][firstperson-wasm4-game].

_Discussion: [/r/rust](https://reddit.com/r/rust/comments/11bdsys/fps_game_2kb_rust)_

[@grantshandy]: https://github.com/grantshandy/
[firstperson-wasm4]: https://grantshandy.github.io/posts/raycasting
[firstperson-wasm4-game]: https://grantshandy.github.io/wasm4-raycaster/
[WASM-4]: https://wasm4.org

## Tooling Updates

### Sprite and Pixel Art Editor

![Image editor screenshot](sprite_pixel_art_editor.png)
_Screenshot of the editor_

A sprite and pixel art editor made with egui and macroquad is being
developed by @yds12 ([github][yds-github], [mastodon][yds-mastodon]).
The project is already usable, but has not been made public yet. Current
features are

- Drawing w/ brush, eraser, lines, rectangles, bucket (fill w/ color)
- Color selector, editable palette and eyedropper (pick color from canvas)
- Resize or completely erase the canvas
- Move camera, zoom in and out
- Selection (rectangular only for now), deleted, copied and pasted; flip
  selection (horizontal or vertical)
- Layers: create, remove, moved up/down, control visibility and opacity
- Spritesheet: specify how many columns and rows your image has, and an
  animated preview will be displayed in a window w/ configurable scale
- Save/load projects (with all its settings), export and import PNG/JPG
- Status bar w/ info about canvas size, canvas position, color under mouse, etc

The source is planned to be released in the next few weeks

[yds-github]: https://github.com/yds12
[yds-mastodon]: https://fosstodon.org/@yds/

### [Graphite][graphite-website]

![Graphite logo](graphite.png)

Graphite ([website][graphite-website], [GitHub][graphite-repo],
[Discord][graphite-discord], [Twitter][graphite-twitter]) is a free,
in-development raster and vector 2D graphics editor based around a Rust-powered
node graph compositing engine.

New features from February's [sprint 23][graphite-sprint-23]:

- _Shaping up:_ Editing shapes is now easier thanks to point selection and
  manipulation improvements.
- _Deep dive:_ The user experience of nested layer selection is improved by
  introducing "Deepest" and "Shallowest" modes.
- _Scroll settings:_ Scroll up-and-down, or zoom in-and-out, at your preference
  using the new configuration for scroll wheel behavior.
- _Graph growth:_ Additional node graph engineering introduces graceful type
  checking and brings GPU-accelerated compositing closer to realization.

As always, new contributors are kindly invited to
[get involved][graphite-contribute] and take on
[approachable issues][graphite-approachable-issues] with help from the
project's friendly and supportive developer community on Discord.

[Open Graphite][graphite-editor] in your browser and start creating! Share your
designs with #MadeWithGraphite on Twitter.

[graphite-website]: https://graphite.rs
[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://discord.graphite.rs
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-sprint-23]: https://github.com/GraphiteEditor/Graphite/milestone/23
[graphite-contribute]: https://graphite.rs/contribute
[graphite-approachable-issues]: https://github.com/GraphiteEditor/Graphite/labels/Good%20First%20Issue
[graphite-editor]: https://editor.graphite.rs

## Library Updates

### [hexx]

![2D example with various groups of tiles highlighted](hexx.jpeg)

[hexx] is a hexagonal tools library made by [@ManevilleF]:

- Manipulate hexagonal coordinates, draw rings, lines, wedges, etc.
- Generate hexagonal grids, with conversion between your world
  and the hexagonal coordinates system.
- Compute 3d meshes for your hexagons.

It's engine-agnostic, but was made with [bevy] integration in mind
and provides 2D and 3D [examples][hexx-examples].

_Discussions: [Twitter](https://twitter.com/ManevilleF/status/1625159292490854400)_

[hexx]: https://github.com/ManevilleF/hexx
[bevy]: https://github.com/bevyengine/bevy
[@ManevilleF]: https://linktr.ee/ManevilleF
[hexx-examples]: https://github.com/ManevilleF/hexx/tree/main/examples

### [nanoshredder]

![nanoshredder demo: windows with shader code and result behind](nanoshredder.gif)
_macroquad's shadertoy example with metal/glsl preview_

[Nanoshredder] is an experimental fork of
[makepad's shader-compiler][makepad-shader-compiler].

It compiles rust-like DSL into GLSL, Metal and HLSL.

This month it got a little [web demo]:
[macroquad's shadertoy][macroquad-shadertoy], a live editor with
generated Metal/GLSL preview.

[nanoshredder]: https://github.com/not-fl3/nanoshredder
[makepad-shader-compiler]: https://github.com/makepad/makepad/tree/master/platform/shader_compiler
[web demo]: https://not-fl3.github.io/miniquad-samples/shadertoy_cross.html
[macroquad-shadertoy]: https://github.com/not-fl3/macroquad/blob/master/examples/shadertoy.rs

### [blink-alloc]

[blink-alloc] is a brand new arena-allocator with bunch of improvements
over existing solutions that is
tested with [Miri] and follows ["Strict Provenance Rules"][strict-provenance].

> Arena-allocators offer extremely fast allocations and deallocations.
> Allocation is just a few pointer arithmetic operations.
> And deallocation is nearly no-op.
> In exchange arena-allocator requires a point in time when all
> previous allocations are unused to reset state.\
> Rust's borrow-checker ensures the requirement for reset making
> it 100% safe to use.
>
> TL;DR great for games, servers, cli tools and more.

blink-alloc provides thread-local and multi-threaded allocators -
`BlinkAlloc` and `SyncBlinkAlloc`.
Single-threaded version [performs many times faster than `bumpalo`][blink-bench].
The author couldn't find another implementation to compare
the multi-threaded version's performance.

It also provided ouf-of-the-box to fetch `BlinkAlloc` in task/thread
and return it back when done, keeping multiple `BlinkAlloc` instanced warmed.

On top of raw allocations blink-alloc provides `Blink` type
that works as safe allocator adaptor.
`Blink` can allocate memory and initialize it with values provided by user.
User may provide values as-is, as closures or iterators.
`Blink`'s API is safe with few exception for niche use cases.

Those familiar with `bumpalo` may think of `Blink` as of `bumpalo::Bump`.
Though `Blink`

- drops all placed values on reset,
  which makes it usable with any kind of types without resource leaks.
- Accepts any iterator type, not just `ExactSizeIterator` implementations.
- Is configurable to use any `BlinkAllocator` implementation, thus not
  tied to `Global`.

Currently Rust's standard collection types may use custom allocators
only one nightly and with `allocator_api` feature enabled.
blink-alloc uses `allocator-api2` crate to work on both stable and nightly.
Integration with other crates is simple and doesn't require depending on
blink-alloc, only on `allocator-api2`.

[blink-alloc]: https://github.com/zakarumych/blink-alloc
[blink-bench]: https://github.com/zakarumych/blink-alloc/blob/main/BENCHMARKS.md
[Miri]: https://github.com/rust-lang/miri
[strict-provenance]: https://github.com/rust-lang/rust/issues/95228

### [pecs]

![pecs example, same as in the README](pecs.png)
_Promise chaining example_

In the ECS environment, you can't use the standard async/await
approach, which can make implementing asynchronous logic painful.

[pecs] is a plugin for the [Bevy][bevy] engine that solves this problem.
It allows you to execute the code asynchronously by chaining multiple
promises as part of [Bevy's `ecs`][ecs] environment.

Each promise takes state and the result of the previous promise as arguments,
as well as any Bevy ECS system parameter, and passes the modified
state and new promise/result to the next promise. It's easy to register custom
promises that wait for user input, events, asset loading, and so on. You can
also use [pecs] to wait for any or all of multiple promises to complete
before continuing with the rest of the code, as well as to loop asynchronously
until a condition is met.

[pecs]: https://github.com/jkb0o/pecs
[ecs]: https://bevyengine.org/learn/book/getting-started/ecs

### [seldom_state]

[seldom_state] is a Bevy plugin that adds a `StateMachine` component that you
can add to your entities. The state machine will change the entity's components
based on states, triggers, and transitions that you define. It's useful
for player controllers, animations, simple AI, etc.

This month [seldom_state] 0.4 has been released:

- Transition builders (`StateMachine::trans_builder`) which let you pass data
  from triggers to states.
- The `AnyState` state, which you can use wherever `StateMachine` accepts state
  type parameters, which lets you create transitions from any state, etc
- A `leafwing_input` feature for `leafwing-input-manager` integration,
  which enables 9 built-in triggers related to input. `JustPressedTrigger`,
  for example.
- `OptionTrigger` and `BoolTrigger` traits, which are simpler to implement
  than `Trigger`.

[seldom_state]: https://github.com/Seldom-SE/seldom_state

### [warbler_grass]

![preview of a grass chunk](warbler_grass_preview.png)
_A bevy crate for grass rendering_

[warbler_grass] is a new experimental [Bevy] plugin.
The goal is to provide a ergonomic, but performant way
to easily render huge amounts of grass.

Some of the currently integrated features are dynamic directional wind
and chunk loading.

The project is now also published on [crates.io][warbler_cratesio].

[warbler_grass]: https://github.com/EmiOnGit/warbler_grass
[warbler_cratesio]: https://crates.io/crates/warbler_grass

### [taffy]

[taffy], the pure Rust UI layout crate, now supports CSS grid!
Build your inventory menus with ease,
or make that sudoku game you've always dreamed of.

This also comes with more than a few performance improvements and bug fixes;
for more details, check out our [release notes].

[taffy]: https://github.com/dioxuslabs/taffy
[release notes]: https://github.com/DioxusLabs/taffy/blob/main/RELEASES.md#030

### [Cvars]

![cvars used in the RustCycles game - showcasing a console for the Fyrox engine](cvars.png)
_Cvars and the Fyrox in-game console as used in RustCycles_

[Cvars] ([GitHub][cvars-github], [Discord][cvars-discord]) by [@martin-t]
are a simple way to store settings you want to change at runtime
without restarting your game.

They offer a way to change struct fields based on their name.
This means games can store their config in a plain old struct
and use its statically typed fields with no overhead.
[Cvars] provide a derive macro to also allow changing each field
dynamically at runtime from a TUI.

The cvars project includes in-game consoles [for macroquad][cvars-macroquad]
and [for Fyrox][cvars-fyrox].

In addition to reading and setting cvars,
they support history and offer a help message for new users.
More advanced features such as autocomplete are planned for the next release.

_Discussions: [/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/10wfe9p/announcing_cvars)_

[Cvars]: https://crates.io/crates/cvars
[cvars-github]: https://github.com/martin-t/cvars
[cvars-discord]: https://discord.gg/aA7hCFvYh9
[@martin-t]: https://github.com/martin-t
[cvars-macroquad]: https://github.com/martin-t/cvars#macroquad-console
[cvars-fyrox]: https://github.com/martin-t/cvars#fyrox-console

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

## Discussions

<!-- Links to handpicked reddit/twitter/urlo/etc threads that provide
useful information -->

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to @rust_gamedev on [Twitter][rust_gamedev_twi],
[Mastodon][rust_gamedev_mas], or [/r/rust_gamedev subreddit][/r/rust_gamedev]
if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Twitter](TODO),
[Mastodon](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[rust_gamedev_twi]: https://twitter.com/rust_gamedev
[rust_gamedev_mas]: https://mastodon.gamedev.place/@rust_gamedev
