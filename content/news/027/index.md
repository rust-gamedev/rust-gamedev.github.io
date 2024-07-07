+++
title = "This Month in Rust GameDev #27 - October 2021"
transparent = true
date = 2021-11-07
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 27th issue of the Rust GameDev Workgroup's
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

- [Rust GameDev Meetup](#rust-gamedev-meetup)
- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Engine Updates](#engine-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Other News](#other-news)
- [Meeting Minutes](#meeting-minutes)
- [Discussions](#discussions)
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

## Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The tenth Rust Gamedev Meetup happened in October. You can watch the recording
of the meetup [here on Youtube][gamedev-meetup-video]. The meetups take place on
the second Saturday every month via the [Rust Gamedev Discord
server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch]. If you would like to show off what you've been
working on at the next meetup on [November 13th][rust-meetup-oct-time], fill
out [this form][gamedev-meetup-form].

[gamedev-meetup-video]: https://youtu.be/ta2HY4lD3iM
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev
[gamedev-meetup-form]: https://forms.gle/BS1zCyZaiUFSUHxe6
[rust-meetup-oct-time]: https://everytimezone.com/s/1f02d66b

## Game Updates

### [Hydrofoil Generation Sailing]

![hgs_screen](hydrofoil1_1024.png)

[Hydrofoil Generation Sailing] ([Facebook](https://www.facebook.com/HydrofoilGenerationSailing),
[Discord](https://discord.gg/DtKgt2duAy)) is a realistic sailing/foiling
inshore simulator in development for PC/Steam that will put you in the
driving seat of modern competitive sailing.

The game is the brain child of industry veteran Stefano Casillo
(of Assetto Corsa fame) and features a custom made 3D engine based on DirectX11
via winapi-rs.

An engine conversion to WGPU is currently under evaluation in order to
guarantee an easier port to platform such as Steam Deck or even mobile in the
future.

Early Access release on Steam is expected in mid 2022.

[Hydrofoil Generation Sailing]: https://www.facebook.com/HydrofoilGenerationSailing/

### [The Process]

{{ image_figure(
    alt="An animated gif showing an engineer shooting rockets"
    src="the_process.gif"
    caption="Firing Carrockets™!") }}

[The Process] by @setzer22 is an upcoming game about factory building, process
management, and carrot production, built with Rust using the Godot game engine!

For the past two months the project has seen some slow but steady progress. Work
has started towards a simple combat system that will have the engineers fighting
hordes of robots to defend their factories.

This month the game has seen the following changes and improvements:

- New assets like
  [a robot enemy](https://twitter.com/PlayTheProcess/status/1436722776186966023)
  (concept by @Kath_Art_ic, modelling by @mkdirsrc),
  [a shoulder mounted gun](https://twitter.com/PlayTheProcess/status/1439970905220960259)
  and
  [new machine icons](https://twitter.com/PlayTheProcess/status/1455232744573788162).
- A new system to attach armor-like models to in-game characters.
- Foundations of a combat system.
- Carrockets™! 🥕🚀 [(1)](https://twitter.com/PlayTheProcess/status/1445098719326658562)
  and
  [(2)](https://twitter.com/PlayTheProcess/status/1454787650657951745)

[The Process]: https://twitter.com/PlayTheProcess

### [LibraCity] - city planning on a needle!

![LibraCity screenshot](libracity.png)

[LibraCity] is a puzzle city planning game by [@djeedai] where you need to build
a city while balancing it on a needle (the center of the board). It was built for
[Ludum Dare 49] using the [Bevy Engine], and is a first-time use of the engine.

Post-jam, a webassembly version was added and published, which now allows
[playing the game online](https://djeedai.github.io/libracity/).

The code source is freely [available on GitHub](https://github.com/djeedai/libracity).

[LibraCity]: https://djeedai.github.io/libracity/
[Ludum Dare 49]: https://ldjam.com/events/ludum-dare/49/libra-city
[@djeedai]: https://twitter.com/djeedai
[Bevy Engine]: https://bevyengine.org/

### [Chaos Theory] - gamified double pendulum simulator

![Chaos Theory Gif](chaos-theory.gif)

[Chaos Theory] is a tiny HTML5 game by [@necauqua] where you can draw and
simulate pendulums with a few goals and restrictions per level.
It was done for [Ludum Dare 49][Chaos Theory] with a help of a small custom
engine with Rust being compiled to WASM and drawing shapes to an HTML5 canvas.

You can play the game [online][chaos-theory-online], and the source code
is available [here][chaos-theory-src] and
[here][chaos-theory-engine-src].

[Chaos Theory]: https://ldjam.com/events/ludum-dare/49/chaos-theory-1
[@necauqua]: https://twitter.com/necauqua
[chaos-theory-online]: https://ld49.necauqua.dev
[chaos-theory-src]: https://github.com/necauqua/chaos-theory
[chaos-theory-engine-src]: https://github.com/necauqua/ld-game-engine

### [Me And My Unicycle]

{{ image_figure(
    alt="Me And My Unicycle screenshot"
    src="me_and_my_unicycle_cover.png"
    caption="Can you handle this unstable ride?") }}

[Me And My Unicycle] is a 2D physics game by [@nikl_me] submitted to Ludum
Dare 49. It is build with [Bevy] and [the code can be found on GitHub][mamu-source].

Following the LD49 theme "unstable", the game is about riding a unicycle
with challenging controls. Try making it through each level without falling.

All assets are self-made. The developer had a lot of fun recording audio and
sound effects!

[Me And My Unicycle]: https://niklme.itch.io/me-and-my-unicycle
[Bevy]: https://github.com/bevyengine/bevy
[@nikl_me]: https://twitter.com/nikl_me
[mamu-source]: https://github.com/NiklasEi/me_and_my_unicycle

### [Crunda][crunda page]

![image/crunda gameplay](crunda.gif)

[Crunda][crunda page] is a game created in 48 hours for Ludum Dare 49.

Its unique wobbly planets are controlled by a Rust library.

Crunda was created by [Dan Slocombe], came third, and was rated the
most fun competition game! The [sources can be found here][crunda source].

[crunda page]: https://ldjam.com/events/ludum-dare/49/crunda
[crunda source]: https://github.com/danslocombe/crunda_ludum_dare_49
[Dan Slocombe]: https://twitter.com/SLCMB/

### [Berry Run]

![berry](berrycover.png)

[Berry Run] is a community stream meme game by [@bombfuse_dev] built on top of
[Emerald Engine]. It's centered around the Twitch streamer [@berrybebopboy] and
was built in about 2 days.

Help Berry run as far as they can without tripping and falling!

> Dodge the babies (no kids, no babies), evade the grannies
> (they're heading to the grand canyon),
> and don't touch belf (belf is sacred).
> Also a bunch of dunces left their logs and rocks lying around,
> better not to touch those, it would be rude to touch someone's logs and rocks.

[Berry Run]: https://bombfuse.itch.io/berry-run/
[Emerald Engine]: https://github.com/Bombfuse/emerald
[@bombfuse_dev]: https://twitter.com/bombfuse_dev
[@berrybebopboy]: https://twitter.com/berrybebopboy

### [Lonely Star]

![Lonely Star screenshot](lonely-star.png)

[Lonely Star] is a 2D 'endless runner' game by [@17cupsofcoffee], featuring
simple generative music. It was built with [Tetra] back in February 2020,
for Weekly Game Jam 135.

This month, it was made [open-source][lonely-star-source], and received a
small update to improve the UI and fix a few bugs.

[Lonely Star]: https://17cupsofcoffee.itch.io/lonely-star
[Tetra]: https://github.com/17cupsofcoffee/tetra
[@17cupsofcoffee]: https://twitter.com/17cupsofcoffee
[lonely-star-source]: https://github.com/17cupsofcoffee/lonely-star

### [Soldank]

![Soldank](https://raw.githubusercontent.com/smokku/soldank/master/sshot.png)

[Soldank] ([GitHub](https://github.com/smokku/soldank),
[Discord](https://discord.gg/cTaC4UtqE6)) by [@smokku](https://twitter.com/smokkku)
is an open source clone of [Soldat] engine. It aims for full compatibility
with original game files, mods and gameplay with modernized
graphics engine and multiplayer networking code.

Recent developments include:

- Engine/game code split
- Command Line Interface
- [Rhai] scripting
- `hecs_rapier` integration
- Key/mouse-binding support
- Soldat's `.cfg` files support
- Custom debug shapes rendering
- Performance degradation fix
- Refactored code to build on `hecs` ECS
- ECS entities debug UI

The developer have also written a blog post:
'_[Engine and scripting](https://abadcafe.wordpress.com/2021/11/01/engine-and-scripting/)_'

[Soldank]: https://github.com/smokku/soldank
[Soldat]: http://soldat.pl/
[Rhai]: http://rhai.rs/

### [Graph Game]

{{ image_figure(
    alt="image/gameplay of the game: circle and triangles"
    src="graph_game.gif"
    caption="Navigating the graph map can be stressful") }}

[Graph Game] ([GitHub][graph-game-github])
uses [Bevy](https://bevyengine.org/) as its engine. You can play it from your
[browser](https://vrixyz.github.io/graph_nav/) - click on colored triangles,
guess the rules and survive as long as possible!

Development has just begun, and the future of the project is not clear -
the developer welcomes you to come and discuss next steps on the game's
[Discord server][graph-game-discord].

[Graph Game]: https://vrixyz.github.io/graph_nav/
[graph-game-github]: https://github.com/Vrixyz/graph_nav
[graph-game-discord]: https://discord.gg/ZeRkj8pD4n

### [Way of Rhea][wor]

![way of rhea capsule image](wor-capsule.jpg)

[Way of Rhea][wor] is a puzzle adventure with hard puzzles and forgiving
mechanics. It is being produced by [@masonremaley][wor-mason-remaley].

Latest developments:

- Way of Rhea now has a [free demo available on Steam][wor]
- Way of Rhea was shown at [PAX West][wor-pax-west] this year (as were a couple
 other Rust games!), and will also be showcased at [MAGWest][wor-magwest]
- A new trailer showing off new level art [was published][wor-trailer]
- Additional animation work, [visuals][wor-wildlife], and puzzles have been
added to the game
- Improvements were made to the undo system, the tutorial level, and the
dialogue system in response to user feedback
- Some Proton compatibility problems were fixed, some visual glitches were
fixed, and support was added for adaptvie vsync

You can stay up to date on the latest developments of Way of Rhea by
[following it on Steam][wor], or signing up for
[the mailing list.][wor-newsletter]

[wor]: https://store.steampowered.com/app/1110620/Way_of_Rhea/?utm_campaign=tmirgd&utm_source=n27
[wor-mason-remaley]: https://twitter.com/masonremaley
[wor-pax-west]: https://west.paxsite.com/
[wor-magwest]: https://www.magwest.org/
[wor-trailer]: https://www.youtube.com/watch?v=46ELQYaH0uw
[wor-wildlife]: https://twitter.com/AnthropicSt/status/1448056148138119169
[wor-newsletter]: https://www.anthropicstudios.com/newsletter/signup

### [PaddlePunks][paddlepunks-itch]

{{ image_figure(
    alt="Animated gameplay that looks like pong mixed with an anime fighting game"
    src="paddlepunks-gameplay.gif"
    caption="A round between a player and the AI set to Hard") }}

PaddlePunks is a versus tennis game by [Felix Windström][paddlepunks-twitter]
with a diverse cast of characters and playstyles and online play with rollback
netcode. The game takes cues from both fighting games and arcade classics, and
besides netplay supports local play against another human or several levels of
AI.

You can download and play the game now on [itch.io][paddlepunks-itch], or
join the [Discord][paddlepunks-discord] to chat with the developer and other
players. Updates are also posted to [Twitter][paddlepunks-twitter].

[paddlepunks-twitter]: https://twitter.com/sov_gott_games
[paddlepunks-itch]: https://sovgott.itch.io/paddlepunks
[paddlepunks-discord]: https://discord.gg/cpPDeVcWxc

### [Veloren][veloren]

{{ image_figure(
    alt="An early-morning sunrise"
    src="veloren.jpg"
    caption="An early-morning sunrise") }}

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In October, Veloren hit 10,000 commits, as well as 10,000 members on the Discord
server! Shrubs got added, along with improvements to rivers, and the
addition of waterfalls. There have been efforts to diagnose some network issues
that have been causing downloads to not work for some people. Crafting is going
through overhauls on the backend. [New aurora shaders][veloren-aurora-video]
were added as well.

Initial ideas are being discussed to try and improve the
amount of asset files that have to be downloaded with each update of the game,
which will help improve the 200MB that has to be downloaded after each nightly
update. New jewelery has been added, and sneaking is being improved to make
agents in the game react better to it. Ongoing worldgen improvemnts are also
being made as we head into November.

October's full weekly devlogs: "This Week In Veloren...":
[#140][veloren-140],
[#141][veloren-141],
[#142][veloren-142],
[#143][veloren-143].

[veloren]: https://veloren.net
[veloren-140]: https://veloren.net/devblog-140
[veloren-141]: https://veloren.net/devblog-141
[veloren-142]: https://veloren.net/devblog-142
[veloren-143]: https://veloren.net/devblog-143
[veloren-aurora-video]: https://www.youtube.com/watch?v=60kt915avjI

## Engine Updates

### [Amethyst - Starting Fresh][amethyst]

![amethyst logo](/amethyst-logo.png)

This month, the developers of the Amethyst game engine
[announced that they would be winding down development][amethyst].

The Amethyst Foundation, however, lives on! It will be shifting focus
to support the wider Rust game development ecosystem, through
engine-agnostic libraries, curated guides/lists, and more inititives yet
to be announced.

[amethyst]: https://amethyst.rs/posts/amethyst--starting-fresh

### [All is Cubes][All is Cubes] 0.3.0

[![Screenshot of All is Cubes][all-is-cubes-screen]][all-is-cubes-screen]

All is Cubes ([GitHub][All is Cubes], [Crates.io][all-is-cubes-cr]) by [kpreid]
is a game/engine for worlds made of blocks made of voxels. It is intended to be
usable both as an engine or rendering library, or as a game with built-in
editor/programming functionality (genre(s) to be determined). While the project
is still highly incomplete and API-unstable, the 0.3.0 release marks a lot of
now-usable functionality ([changelog][all-is-cubes-changelog]):

- UI: mouselook, multiple example scenes, inventory with stacks, and rendering
  to image files.
- Simulation/mechanics: character collision against arbitrary voxel shapes,
  much-improved light propagation, transactional state updates (all-or-nothing,
  internally order-independent), and “behaviors” attached to game objects for
  scripting/animation.
- Rendering: high-voxel-count blocks (incomplete, but usable for text as seen in
  the above screenshot), “smooth lighting” (interpolated across faces), frustum
  culling, and correct sRGB-versus-linear color handling.

The next planned milestone is saving/loading.

[All is Cubes]: https://github.com/kpreid/all-is-cubes/
[all-is-cubes-cr]: https://crates.io/crates/all-is-cubes
[all-is-cubes-screen]: all-is-cubes.jpg
[all-is-cubes-changelog]: https://github.com/kpreid/all-is-cubes/blob/main/CHANGELOG.md#030-2021-10-09
[kpreid]: https://github.com/kpreid

### [Tetra] 0.6.6

[Tetra] is a simple 2D game framework, inspired by XNA, Love2D, and Raylib. After
a few quiet months, version 0.6.6 has been released, featuring:

- A big overhaul of the keyboard API, with better support for international
  layouts
- Lots of new functions for manipulating the game window
- A long-requested [ECS example][tetra-ecs]
- Bugfixes and docs improvements

For more details, see the [changelog][tetra-changelog].

[Tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md
[tetra-ecs]: https://github.com/17cupsofcoffee/tetra/blob/main/examples/ecs.rs

## Learning Material Updates

### [GameDev Mini Symposium][gms-talk]

{{ image_figure(
    alt="An early-morning sunrise"
    src="gms-talk.png"
    caption="Click the image to watch the talk",
    link="https://www.youtube.com/watch?v=OzUsPi4kHes") }}

Back in September, the University of Glasgow's GameLab held a 'GameDev Mini
Symposium' online. One of the featured speakers was
[Herbert Wolverson][the-bracket], writer of '[Hands-on Rust][hands-on-rust]',
who gave a talk on using Rust for game development.

This talk is now available to [view on Herbert's YouTube channel][gms-talk].

[the-bracket]: https://twitter.com/herberticus
[hands-on-rust]: https://pragprog.com/titles/hwrust/hands-on-rust/
[gms-talk]: https://www.youtube.com/watch?v=OzUsPi4kHes

## Tooling Updates

### [SPV]

![SPV-0.1.0 screenshot](spv-0.1.0.png)

[SPV] by [Albin Sjögren]
is a calculator utility for working with astronomical position and velocity data.

What was added for the first alpha release:

- A new UI
- Corrected vector normalizing
- JSON and TXT exporting

The primary features that are being worked on:

- A crate version
- Output file structure
- Batch processing

For any feature requests, reach out to the developer on [Discord][spv-discord]
or [GitHub][spv].

[SPV]: https://github.com/AlbinSjoegren/SPV
[spv-discord]: https://discordapp.com/users/258254056185659392
[Albin Sjögren]: https://github.com/AlbinSjoegren

## Library Updates

### [wgpu]-0.11 release

{{ image_figure(
    alt="bevy webgl2 via wgpu"
    src="bevy-webgl2.png"
    caption="experimental Bevy branch running on WebGL2 via wgpu") }}

The team is happy to announce the release of wgpu-0.11 and naga-0.7.
Details can be found on the [gfx-rs blog]. The most exciting feature
is WebGL2 support. With some caveats, users no longer need to wait for
WebGPU in the browsers in order to deploy on the Web. Support is still
a bit rough, and patches come out regularly, but most examples work.

@kvark also visited [Rust LA Meetup] to [talk about Naga]
and the history of processing shaders with Rust.

[wgpu]: https://github.com/gfx-rs/wgpu
[gfx-rs blog]: https://gfx-rs.github.io/2021/10/07/release-0.11.html
[Rust LA Meetup]: https://rustlang.la/
[talk about Naga]: https://vimeo.com/632377558

### [rend3]-0.2 Release

{{ image_figure(
    alt="rend3-scifi"
    src="rend3-scifi.jpg"
    caption="Improved shadows and rendering with rend3 0.2") }}

rend3 is a 3D rendering library that focuses on having an easy to use interface
without sacrificing performance or customizability.

As part of their monthly release schedule, the developers are excited to
announce the release of rend3-0.2. The most prominent change is the ability
to use fully customizable materials. Any combination of data and textures can
now be used as a material for custom render routines. This unties the user
from PBR-based materials.

Along with the customizability that comes with this change, the CPU time
required to render a complex scene is 7x less due to highly optimal data
structures. For more information see [this talk][rend3-perf-talk] at the Rust
graphics meetup.

The [v0.2 version][rend3-crates] was published on crates.io
([docs][rend3-docs] and [examples][rend3-examples]). The 0.3 release is
just a week away and further improves customizability.

[rend3]: https://github.com/BVE-Reborn/rend3
[rend3-perf-talk]: https://www.youtube.com/watch?v=F0wGz5UJTrY
[rend3-docs]: https://docs.rs/rend3
[rend3-examples]: https://github.com/BVE-Reborn/rend3/tree/v0.2/examples
[rend3-crates]: https://crates.io/crates/rend3

### [hecs_rapier] 0.11.0

[hecs_rapier] is a physics engine for hecs ECS.
It is a direct port of [bevy_rapier2d].

Recent development added joints and physics_hooks support.
This makes `hecs_rapier` feature complete, with `bevy_rapier2d` feature parity.

[hecs_rapier]: https://github.com/smokku/hecs_rapier
[bevy_rapier2d]: https://github.com/dimforge/bevy_rapier

### [bevy_atmosphere] 0.1.1

![dawn in bevy_atmosphere](bevy_atmosphere.png)

[bevy_atmosphere] ([GitHub][bevy_atmosphere]) by @JonahPlusPlus
is a procedural sky plugin for Bevy.

By adding the `AtmospherePlugin`, users get a skybox around the camera in their scene.
Users can also set the appearance of the sky adding a `AtmosphereMat` resource.

0.1.0 and 0.1.1 have been released on [crates.io](https://crates.io/crates/bevy_atmosphere).

0.1.1 changes the default position of the sun to be in the sky,
so only the plugin is needed to get a Unity-like sky.

[bevy_atmosphere]: https://github.com/JonahPlusPlus/bevy_atmosphere

### [bevy_kira_audio]

[bevy_kira_audio] is a [Bevy] plugin that integrates the audio library [Kira]
into [Bevy] applications.

In the latest version `0.6.0`, you can load files with custom semantic
durations and play looped audio with an intro. The plugin now also cleans up
old sound instances. Following Bevy, [bevy_kira_audio] is now licensed under
dual MIT + Apache 2.0, and the library will no longer crash on systems without
an audio device.

[bevy_kira_audio]: https://github.com/NiklasEi/bevy_kira_audio
[Bevy]: https://github.com/bevyengine/bevy
[Kira]: https://github.com/tesselode/kira

### [bevy_verlet]

![bevy_verlet](bevy_verlet.gif)

[bevy_verlet] is a lib for projects using [Bevy Engine][bv_bevy]
providing a plugin to use [verlet integration][bv_wikipedia]
physics. Very useful for cloth simulation and joints, and less expensive than
complex physics engine, it is a nice addition to 2D or 3D projects. Making good
use of the Entity-Component-System architecture of the bevy engine, any entity
can become a `VerletPoint` and have physics applied to it.

The crate also provides *sticks* which constrains the points in order to create
strings or cloth. With its modularity, you may customize the physics precision
(iterations), the gravity, and the physics time step to use.

New features:

- Query parallel batching and custom batching size
- Global documentation
- Fixed issues with timesteps
- Improved examples

You may contact the author on Twitter at [@ManevilleF][ManevilleF] or join the
[discussion][bv_discussion].

[bevy_verlet]: https://github.com/ManevilleF/bevy_verlet
[bv_discussion]: https://twitter.com/ManevilleF/status/1437350669858611202?s=20
[ManevilleF]: https://twitter.com/ManevilleF
[bv_bevy]: https://bevyengine.org/
[bv_wikipedia]: https://en.wikipedia.org/wiki/Verlet_integration

### [Bevy Pen Tool][bevy-pen-tool]

![bevy_pen_tool2](bevy_pen_tool2.gif)

Bevy Pen Tool is a plugin that helps developers make 2D paths using
Bezier curves. Its user interface provides functionality for:

- spawning Bezier curves,
- moving end points and control points of Bezier curves,
- linking individual Bezier curves to each other,
- grouping curves,
- saving and loading paths as look-up tables
    (typically for animations and agent movement),
- generating arbitrary 2D meshes that fill the interior of a path
    using the Lyon crate,
- generating a mesh that follows a path like a road,
- saving meshes and roads in ".obj" format,

A stable version of Bevy Pen Tool should come out as a crate shortly
after Bevy 0.6 shows up. Here is a link to the [repo for more
information][bevy-pen-tool].

[bevy-pen-tool]: https://github.com/eliotbo/bevy_pen_tool

### [Sparsey]

[Sparsey] by [@LechintanTudor] is a sparse set-based Entity Component System
(ECS) with component storage grouping, granular component change detection,
fallible systems and beautiful syntax.

The latest release (0.4) adds support for optional system parameters, which
allows `Option<Res<T>>` and `Option<ResMut<T>>` to be used in system functions.

This release also features a refactored `ComponentStorage` which makes adding,
removing and swapping components faster, swapping being especially important
since it enables component grouping, a features that makes certain queries
specified by the user extremely fast.

Finally, some implementation details were hidden from the public API and the
`#[must_use]` attribute was added to functions whose results should not be
discarded.

[Sparsey]: https://github.com/LechintanTudor/sparsey
[@LechintanTudor]: https://github.com/LechintanTudor

### [godot-rust](https://github.com/godot-rust/godot-rust)

![godot-rust logo](godot-rust.png)

godot-rust ([GitHub][gd-github], [Discord][gd-discord], [Twitter][gd-twitter])
is a Rust library that provides bindings for the Godot game engine.

Recent developments have added [foundational support to async][gd-async]
that enables users to make use of the Rust async runtimes with the Godot Engine
(thanks to chitoyuu for the PR).

In addition to the foundational support, lyonbeckers was kind enough to
include a [new recipe in the User Guide][gd-async-recipe] that covers
how to configure async with `tokio`.

The team also merged several smaller bug fixes in [#791][gd-791], [#795][gd-795],
and [#800][gd-800] and is making steady progress towards version 0.10.0.

Finally, the team has recently added a [third party project][gd-book-projects]
section in the book to help promote games, applications, and libraries/tools
that are working with godot-rust. If you have a project that you would like to
be included, please feel free to reach out to the godot-rust team.

[gd-async]: https://github.com/godot-rust/godot-rust/pull/804
[gd-async-recipe]: https://github.com/godot-rust/book/pull/44

[gd-800]: https://github.com/godot-rust/godot-rust/pull/800
[gd-795]: https://github.com/godot-rust/godot-rust/pull/795
[gd-791]: https://github.com/godot-rust/godot-rust/pull/791
[gd-788]: https://github.com/godot-rust/godot-rust/pull/788

[gd-book-projects]: https://godot-rust.github.io/book/projects.html

[gd-docs]: https://godot-rust.github.io/docs
[gd-github]: https://github.com/godot-rust/godot-rust
[gd-discord]: https://discord.com/invite/FNudpBD
[gd-twitter]: https://twitter.com/GodotRust

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

- Other game updates:
  - LD49 [Unbalanced Brawl](https://ldjam.com/events/ludum-dare/49/unbalanced-brawl)
    ([GitHub](https://github.com/yopox/LD49))
    is an autochess with ever-changing rules in the shop.
  - LD49 [Chevalchemy](https://ldjam.com/events/ludum-dare/49/chevalchemy-a-hoof-of-concept)
    ([GitHub](https://github.com/xlambein/ldjam49)) is a game where you play
    as a horse alchemist working for the great Neighcolas Flamel.
  - LD49 [Proc Spider](https://ldjam.com/events/ludum-dare/49/procedural-spider)
    ([GitHub](https://github.com/darthdeus/procedural-spider))
    is a small game where you play a big spider chasing small spiders.
  - [mk48.io] ([GitHub](https://github.com/SoftbearStudios/mk48)) is
    an online multiplayer naval combat game, in which you take command
    of a ship and sail your way to victory.
  - Tweets about [Bitgun] progress:
    [new inventory and weapon systems](https://twitter.com/LogLogGames/status/1449485172114591749),
    [new item pickup](https://twitter.com/LogLogGames/status/1449742242734772225),
    [jumping zombies](https://twitter.com/LogLogGames/status/1450922044065992708),
    [death animation](https://twitter.com/LogLogGames/status/1451088866052489218).
  - [An update about the progress of Rust version of Nox Futura][noxfutura-devlog].
  - [A Recall Singularity][recall] shared a [YouTube video](https://youtube.com/watch?v=nsjnCZslNdg)
    that shows new shooting sounds, camera movement, and asteroid dragging.
- Other learning material updates:
  - [A video by TanTan](https://youtube.com/watch?v=G-IuH6R-yD8)
    about rewriting a voxel game three times: in Unity, Rust (no engine) and Bevy.
- Other engine updates:
  - [A recording of the first rg3d live-coding stream](https://reddit.com/r/rust/comments/qena0b/media_rg3d_game_engine_live_coding).
  - The first prototype of [VNgine] - Visual Novel Engine -
    [was announced on /r/rust](https://reddit.com/r/rust/comments/pyvcen/first_prototype_of_vngine).
  - Also, a general purpose graphics engine [Blue Engine][blue-engine]
    [was announced on /r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/q4rana/blue_engine).
- Other tooling updates:
  - [Fearless-NES] is a NES emulator written using egui, macroquad, and GilRs.
  - [FishSteam] is a tool for deploying SteamWorks-enabled steam builds
    for Windows/macOS/Linux without SteamWorks SDK on a CI.
- Other library updates:
  - [Crevice v0.8](https://github.com/LPGhatguy/crevice/blob/main/CHANGELOG.md#080---2021-10-26)
    brings a direct support for many math libraries
    and allows to generate GLSL source from structs.
  - [SPV] 0.0.6 is the second pre-alpha release of a celestial object position
    and velocity calculator.
  - [Thunderdome] generational arena library released
    [0.4..0.5 versions](https://github.com/LPGhatguy/thunderdome/blob/main/CHANGELOG.md).
  - [egui 0.15](https://reddit.com/r/rust/comments/qeue67/announcing_egui_015) brings:
    syntax highlighting, horizontal scrolling, new monospace font,
    and a new opt-in glow backend for eframe.
  - [New puffin-egui/puffin-viewer](https://twitter.com/ernerfeldt/status/1447961523696066564)
    allows selection and manipulation of multiple frames.
  - [Shalrath] is a fully-safe Rust representation and nom parser for Quake map files.

[Bitgun]: https://store.steampowered.com/app/1673940/BITGUN
[@LogLogGames]: https://twitter.com/LogLogGames
[noxfutura-devlog]: https://reddit.com/r/roguelikedev/comments/pqbvv1/sharing_saturday_380/hdbx5xt
[mk48.io]: https://mk48.io
[recall]: https://twitter.com/RecallSingular1
[Fearless-NES]: https://github.com/TomasKralCZ/Fearless-NES
[FishSteam]: https://github.com/not-fl3/FishFight-The-Prequel/tree/main/fishsteam
[VNgine]: https://gitlab.com/porky11/vngine-rs
[blue-engine]: https://github.com/ElhamAryanpur/BlueEngine
[Crevice]: https://github.com/LPGhatguy/crevice
[SPV]: https://github.com/AlbinSjoegren/SPV
[Thunderdome]: https://github.com/LPGhatguy/thunderdome/blob/main/CHANGELOG.md
[Shalrath]: https://github.com/QodotPlugin/shalrath

## Meeting Minutes

There is currently discussion ongoing around bringing back the
Rust GameDev Working Group's regular meetings.

If you are interested in getting involved, please join the
[discussion thread](https://github.com/rust-gamedev/wg/discussions/115)
on the working group's issue tracker!

## Discussions

### [Async Game Server Design][async-game-server]

On the Rust user forum, there was [a post][async-game-server]
asking how to use async/await (more specifically, `tokio` and
`tokio_tungstenite`) to develop a multiplayer game server.
The responses contain some useful ideas and advice which
may be helpful for other people's projects!

[async-game-server]: https://users.rust-lang.org/t/tokio-tungstenite-async-game-server-design/65996

## Requests for Contribution

- [Graphite is looking for contributors][graphite-contribute] to help reach
  the 0.1 Alpha release.
- [winit's "difficulty: easy" issues][winit-issues].
- [Backroll-rs, a new networking library][backroll-rs].
- [Embark's open issues][embark-open-issues] ([embark.rs]).
- [wgpu's "help wanted" issues][wgpu-issues].
- [luminance's "low hanging fruit" issues][luminance-fruits].
- [ggez's "good first issue" issues][ggez-issues].
- [Veloren's "beginner" issues][veloren-beginner].
- [Amethyst's "good first issue" issues][amethyst-issues].
- [A/B Street's "good first issue" issues][abstreet-issues].
- [Mun's "good first issue" issues][mun-issues].
- [SIMple Mechanic's good first issues][simm-issues].
- [Bevy's "good first issue" issues][bevy-issues].

[graphite-contribute]: https://github.com/GraphiteEditor/Graphite/issues/202
[winit-issues]: https://github.com/rust-windowing/winit/issues?q=is%3Aopen+is%3Aissue+label%3A%22difficulty%3A+easy%22
[backroll-rs]: https://github.com/HouraiTeahouse/backroll-rs/issues
[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[wgpu-issues]: https://github.com/gfx-rs/wgpu/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[abstreet-issues]: https://github.com/a-b-street/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue
[simm-issues]: https://github.com/mkhan45/SIMple-Mechanics/labels/good%20first%20issue
[bevy-issues]: https://github.com/bevyengine/bevy/labels/D-Good-First-Issue

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

**Discuss this post on**:
[/r/rust_gamedev](https://www.reddit.com/r/rust/comments/qoy5rv/this_month_in_rust_gamedev_27_october_2021/),
[Twitter](https://twitter.com/rust_gamedev/status/1457461009833238528),
[Discord](https://discord.gg/yNtPTb2).

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
