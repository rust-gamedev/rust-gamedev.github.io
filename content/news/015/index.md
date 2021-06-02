+++
title = "This Month in Rust GameDev #15 - October 2020"
date = 2020-11-09
transparent = true
aliases = ["posts/newsletter-015"]
+++

Welcome to the 15th issue of the Rust GameDev Workgroup's
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

- [Annual Survey from the Rust GameDev WG](#annual-survey-from-the-rust-gamedev-wg)
- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
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

## [Annual Survey from the Rust GameDev WG][survey]

As we did [last year][survey-prev], we are once again running
a Rust Game Development Ecosystem Survey. It'll only take 10 minutes,
and your responses help us better understand the state of our ecosystem
and where we should try to focus our collective efforts.

[survey]: https://surveymonkey.com/r/F2JYRFF
[survey-prev]: https://rust-gamedev.github.io/posts/survey-01

## Game Updates

### [Veloren][veloren]

![Landscape](veloren_clouds.jpeg)
_Endless mountains to explore_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In October, lots of work was done on the UI, and a buff system. There was an
overhaul done to the staff item that gives it new primary and secondary attacks.
There has also been work done on the axe and bow. The cloud system was
overhauled and brought a cheaper way to compute the 3D noise that the system uses.
The skill bar was overhauled to implement a new design that could handle the new
buff system. This was also the first overhaul in over a year. A SFX system is in
the works to allow effects to be mapped to blocks, for sounds like crickets or
birds.

You can read more about some specific topics from October:

- [Modelling Process](https://veloren.net/devblog-88#gemu)
- [Staff Overhaul](https://veloren.net/devblog-89#staff-overhaul-by-sam)
- [New Skillbar and Buffs Visuals](https://veloren.net/devblog-89#new-skillbar-and-buffs-visuals-pfau)
- [Cloud Improvements](https://veloren.net/devblog-90#cloud-improvements-by-zesterer)
- [Buffs](https://veloren.net/devblog-91#buffs-by-sam)
- [Alignment and Hostility](https://veloren.net/devblog-91#alignment-and-hostility-by-adam)
- [Fixing CI](https://veloren.net/devblog-91#fixing-ci-by-xmac94x)

October's full weekly devlogs: "This Week In Veloren...":
[#88](https://veloren.net/devblog-88),
[#89](https://veloren.net/devblog-89),
[#90](https://veloren.net/devblog-90),
[#91](https://veloren.net/devblog-91).

In November, Veloren will release 0.8. Veloren will also be speaking at
MiniDebConf on November 22nd.

![Healing sceptre](veloren_wolves.jpeg)
_Team hunt_

[veloren]: https://veloren.net

### [Crate Before Attack][cba-site]

[![Leaderboard Histogram](crate-before-attack.gif)][cba-site]
_Interactive Histogram with Race Results_

[Crate Before Attack][cba-site] by [koalefant (@CrateAttack)][@CrateAttack]
is a skill-based multiplayer game where frogs fight and race using their sticky
tongues as grappling hooks.

A [browser build][cba-play] can be played online.

Changes since the last update:

- Added a global leaderboard that visualizes Race and Training results in an
  interactive histogram.
- Tweaked frogs physics to make them more bouncy, added an option that would
  keep tongue connected as long as a key is being pressed.
- [Online Ghosts][cba-youtube-ghosts] were added. One can now compete with real
  players instead of AI when playing Race mode.
- Improved load-times: level graphics is now quantized with an 8-bit palette,
  signed distance fields that are used for collisions are now generated offline.
  Downloads are cached in an IndexedDB, so subsequent starts are even faster.
- Multiple bugs were fixed.

More details are in [September][cba-september-update] and
[October][cba-october-update] DevLog entries and in
[YouTube-channel][cba-youtube].

[cba-site]: https://cratebeforeattack.com
[cba-youtube-ghosts]: https://youtu.be/j87I8akUTkc
[cba-youtube]: https://www.youtube.com/channel/UC_xMilPTLuuE5iLs1Ml9zow
[cba-play]: https://cratebeforeattack.com/play
[cba-september-update]: https://cratebeforeattack.com/posts/20201001-september-update
[cba-october-update]: https://cratebeforeattack.com/posts/20201029-october-update
[@CrateAttack]: https://twitter.com/CrateAttack

### [Egregoria]

![Egregoria roads at night](egregoria.jpg)

[Egregoria]'s objective is to become a granular society simulation,
filled with fully autonomous agents interacting with their world in real-time.

The [6th devlog][egregoria-blog-post] was published. Updates include:

- Island generation.
- Day/night cycle.
- Human AI via utility systems.
- Specs to [legion 0.3][legion-github] port.

See also [the recent video][egregoria-video] showcasing very basic AI.

Join [Egregoria's Discord server][egregoria-discord].

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/jkcllc/egregoria_devblog_6)_

[Egregoria]: https://github.com/Uriopass/Egregoria
[egregoria-blog-post]: http://douady.paris/blog/egregoria_6.html
[legion-github]: https://github.com/amethyst/legion
[egregoria-video]: https://www.youtube.com/watch?v=mfvAuvC-XLg
[egregoria-discord]: https://discord.gg/CAaZhUJ

### [A/B Street][abstreet]

![A/B Street on the web](abstreet.png)

[A/B Street][abstreet] is a traffic simulation game exploring how small changes
to roads affect cyclists, transit users, pedestrians, and drivers. Any city
with OpenStreetMap coverage can be used!

Some of this month's updates:

- [web version][abstreet-web] launched, powered by `winit`, `glow`, and other
  dependencies having support for WebAssembly;
- an [OpenStreetMap viewer][abstreet-osm] with 100 cities imported;
- "thought bubbles" for cars looking for parking, by [Michael][mkirk];
- slow portions of a trip highlighted in the info panel, by [Sam][NoSuchThingAsRandom];

[abstreet]: https://abstreet.org
[abstreet-web]: http://abstreet.s3-website.us-east-2.amazonaws.com/dev/
[abstreet-osm]: http://abstreet.s3-website.us-east-2.amazonaws.com/osm_demo/
[mkirk]: https://github.com/michaelkirk
[NoSuchThingAsRandom]: https://github.com/NoSuchThingAsRandom/

### Worship The Sun

![Worship The Sun](worship-sun.jpg)
_One of the many unique and confounding puzzles in the game_

Worship The Sun is a dark, mysterious 2D puzzle-platform game with computer
science themes. It introduces the player to a rich language of puzzle elements
and challenges them to solve difficult puzzles that require experimentation,
comprehension, and internalisation of the game's mechanics.

The game is built using a custom engine that sits on top of [legion][legion],
[wgpu][wgpu], and a handful of other crates. It features dynamic lighting, a
flexible particle system, bespoke collision behaviour, and a Vim-inspired level
editor. The majority of game assets are hand drawn in [Procreate][procreate]
and painstakingly animated.

The game is a few months into development with a release target of late 2021.
You can read about how swimming was added to the game in [GameDev Note 1:
Taking the Plunge][plunge] which contains a sneak peek at some of the levels.
For updates and possible playtesting opportunities, follow
[@chrispatuzzo][chrispatuzzo] and a [/r/WorshipTheSunGame] subreddit.

[legion]: https://github.com/amethyst/legion
[wgpu]: https://github.com/gfx-rs/wgpu
[procreate]: https://procreate.art/
[plunge]: https://tuzz.tech/blog/taking-the-plunge
[chrispatuzzo]: https://twitter.com/chrispatuzzo
[/r/WorshipTheSunGame]: https://reddit.com/r/WorshipTheSunGame

### [Garden][garden]

![Garden](garden_scaled_1.png)
_A couple of trees growing and basking in the sun_

[Garden][garden] is a procedural tree-growing, strategical ecosystem-restoration
and biological simulation game with an infinite amount of plant species where
every leaf is simulated, and the natural resources are scarce.
Every specimen is unique, as the plants grow by responding to the live changes in
the environment.
The player has to balance many complex mechanics to sustain life and go
forward in the game.
The game and the custom engine are developed in Rust with an OpenGL backend.

Garden developers (temporary name) are preparing for a demo release in a couple
of months by tying everything together into a coherent experience.
The game is also continually optimized to run on less powerful GPUs,
so that everyone can enjoy it.

Some of the [updates from the October devlog][garden-devlog]:

- Near-infinite variety of plant species
  achieved through treating branch segments as Markov chains
  (enabling different growth speeds and probabilities
  for other segment types' growth from one another)
  and simulating photosynthesis as an electrical circuit
  (enabling sugar storage in the form of root vegetables, for example).
- Concrete brick destruction mechanics were implemented.
  Dust particles for the animation that appears upon breaking,
  as well as the debris, were also added to the game.
- Saving and loading are almost complete.
- A watering can was added.
- Smoother soil and debris outlines.

Follow the developers [@logicsoup] and [@epcc10] on Twitter for more updates.

[garden]: https://www.cyberplant.xyz
[@logicsoup]: https://twitter.com/logicsoup
[@epcc10]: https://twitter.com/epcc10
[garden-devlog]: https://cyberplant.xyz/posts/october_2020

### [Akigi][akigi]

[Akigi][akigi] is a WIP online multiplayer game.

In October, more progress was made on the editor tool for placing entity spawn
points. Work was started on prototyping the hunting skill. Functionality was
added to allow focusing for TextAreas in the user interface. Improvements were
made to the engine's asset management code to make it more generalized.

Full devlogs:
[#087](https://devjournal.akigi.com/october-2020/087-2020-10-04.html),
[#088](https://devjournal.akigi.com/october-2020/088-2020-10-11.html),
[#089](https://devjournal.akigi.com/october-2020/089-2020-10-18.html),
[#090](https://devjournal.akigi.com/october-2020/090-2020-10-25.html).

[akigi]: https://akigi.com

### [Sun Prison][sun_prison]

![Sun Prison gameplay](sun_prison.gif)

[Sun Prison][sun_prison] by [Dima Lazarev][@dmitrywithouti] is a WIP turn-based
meditation on Rubik's cube, [Sokoban][bevy_sokoban], and roguelikes, being
implemented with [Bevy engine][bevy].
The game is in the very early stages of development,
but it is already possible to [get lost in the dark][sun_prison_twit_1]
or to be [eaten by zombies][sun_prison_twit_2].

Follow [@dmitrywithouti] on Twitter for updates.

[sun_prison]: https://github.com/ropewalker/sun_prison
[bevy_sokoban]: https://github.com/ropewalker/bevy_sokoban
[@dmitrywithouti]: https://twitter.com/dmitrywithouti
[sun_prison_twit_1]: https://twitter.com/dmitrywithouti/status/1309025584039768064
[sun_prison_twit_2]: https://twitter.com/dmitrywithouti/status/1309982656260648960

### [Camp Misty]

![Camp Misty Title Screen](camp-misty.PNG)

[Camp Misty] is an asymmetric
multiplayer game played on the command line. The game is played with two
people. One of the players is a helpless victim searching for car parts. If
they find all of the parts, they can repair their car and escape the camp. The
other player is a ruthless killer who is trying to hunt down the victim.

The game was created as a learning exercise in about two weeks by
[@ReeCocho], with contributions from the many helpful members of [/r/rust].

[Camp Misty]: https://github.com/ReeCocho/camp-misty
[@ReeCocho]: https://github.com/ReeCocho
[/r/rust]: https://reddit.com/r/rust

### [Antorum Online]

![A small marketplace area with a few merchants](antorum-online-10-29-2020.jpg)

Antorum Online is a micro-multiplayer online role-playing game by [@dooskington].
The game server is written in Rust, and the current "official" client is being
developed in Unity. The server can be self-hosted, and the network protocol is
open, so even custom clients that adhere to the protocol can connect and play.

Two more devlogs were published this month, regarding work done to implement
shops, character creation, and a few other features:

- [21: Belmart, Shops, And Bartering](https://ratwizard.dev/dev-log/antorum/21)
- [22: Character Creation And Customization](https://ratwizard.dev/dev-log/antorum/22)

[Antorum Online]: https://ratwizard.dev/dev-log/antorum
[@dooskington]: https://twitter.com/dooskington

### [The Honor Sagas][honor-sagas]

![game's banner](honor.png)

[The Honor Sagas][honor-sagas] is an early-in-development 2d MMORPG project.
October was the first month of development, and [@ectonDev] wrote
[a postmortem][honor-sagas-postmortem] of the progress made while participating
in [#Devtober][devtober].

[honor-sagas]: https://khonsulabs.itch.io/honorsagas
[honor-sagas-postmortem]: https://khonsulabs.itch.io/honorsagas/devlog/192252/the-honor-sagas-devtober-postmortem
[devtober]: https://itch.io/jam/devtober-2020
[@ectonDev]: https://twitter.com/ectonDev

### Project YAWC

![An in-progress game of Project YAWC.](yawc.png)

Project YAWC is a turn-based strategy game in the style of Advance Wars in
development by junkmail. October saw the release of Alpha 3, including
dynamically generated info cards and minor networking changes. For inquiries or
if you are interested in playtesting, contact projectyawc(at)gmail.com.

### [Power Kick]

![Power Kick](power-kick-shot.png)

[Power Kick] is a one screen platform game inspired by similar old arcade games
like Bubble Bobble and SnowBros.
Your task is to hit the enemies till they get dizzy and then kick them out of
their misery to proceed to the next stage. The kicked enemies will hit the
colliding enemies with a possibility to create a chain reaction
(similar to the pushed snowball in SnowBros).

The game has 20 stages and in stage 10 and 20 you will face a helicopter boss.

Can be played solo on the web through WebAssembly or up to two players
in the downloadable version:
the first player with the keyboard and the second one with a joypad.

The development took around two weeks thanks to [macroquad] and [hecs].

[Power Kick]: https://kakoeimon.itch.io/power-kick
[hecs]: https://crates.io/crates/hecs

### [rymd]

![rymd animated combat](rymd_2020_11_05.gif)

[rymd] by [@_profan] is a space shooter prototype made with [macroquad].
Intended as a test platform for trying out rust for prototyping games and
particularly for game AI programming purposes.

Development started at the end of October, recent additions include:

- Basic enemy AI behaviour mostly based on steering behaviours.
- Possibly the world's most nauseating physics-driven camera.
- Too many particles.

[@_profan]: https://twitter.com/_profan
[rymd]: https://profan.itch.io/rymd

### [pGLOWrpg]

![walking through a forest](pglowrpg.gif)

The [@pGLOWrpg] (Procedurally Generated Living Open World RPG) is a long-term
project in development by [@Roal_Yr], which aims to be a text-based game with
maximum portability and [accessibility](https://youtu.be/_jgzAddgEPU)
and focus on replayability, interactions, and emergent narrative.

For the past month the main focus of the development was on:

- Improving the UI.
- Implementing the input autocomplete system.
- Implementing save data import and parsing.
- Implementing world navigation system.
- Implementing rudimentary CLI graphics (for debugging and some future use).

Main features of the reported (pre-alpha) version are:

- Ability to generate and explore one or many worlds (see previous news).

For main feature reports and dev blogs follow [@pGLOWrpg] on Twitter.

[@Roal_Yr]: https://twitter.com/Roal_Yr
[@pGLOWrpg]: https://twitter.com/pglowrpg
[pGLOWrpg]: https://github.com/roalyr/pglowrpg

### [Space Shooter]

![space shooter boss fight](space_shooter_11-03-2020.gif)

The [Space Shooter] project is a game in development by [Carlo Supina] and
[Micah Tigley]. It is a 2D "shoot-em-up" game that takes place in space and is
inspired by games like [Raiden] and [Binding of Isaac].

Recent development has been focused on creating an online book for documentation
for the game. While still a work in progress, the following content is now
available:

- [Gameplay]
- [Contributing Code]
- [Adding Items]

If you're interested in hearing about planning
an effective code refactor for a project using ECS, make sure to check out
[How to Revive a Dead Rust Project] at [RustFest Global 2020].

[Space Shooter]: https://github.com/amethyst/space_shooter_rs
[Carlo Supina]: https://twitter.com/carlosupina
[Micah Tigley]: https://twitter.com/micah_tigley
[Raiden]: https://wikipedia.org/wiki/Raiden_(video_game)
[Binding of Isaac]: https://wikipedia.org/wiki/The_Binding_of_Isaac_(video_game)
[Gameplay]: https://amethyst.github.io/space_shooter_rs/gameplay.html
[Contributing Code]: https://amethyst.github.io/space_shooter_rs/contributing.html
[Adding Items]: https://amethyst.github.io/space_shooter_rs/add_item.html
[RustFest Global 2020]: https://rustfest.global/
[How to Revive a Dead Rust Project]: https://rustfest.global/session/22-project-necromancy-how-to-revive-a-dead-rust-project/

### [Weegames][weegames-itch]

[![Jumping across walls minigame](weegames.png)][weegames-video]
_Click to see [a demo video][weegames-video]_

[Weegames][weegames-itch] ([source code][weegames-repository])
is a fast-paced minigame collection.

There are now 40 minigames in the collection.
New features in the latest release include boss games and high scores.

[weegames-itch]: https://yeahross.itch.io/weegames
[weegames-repository]: https://github.com/yeahross0/weegames
[weegames-video]: https://youtu.be/sstqGppo7L4

### [Canon Collision][canon-collision]

![gameplay](canon_collision.gif)

[Canon Collision][canon-collision] by [@rukai] is an Undertale + Homestuck
fan-made platform fighter with powerful tools for modding.

This month, he completed the abstractions needed for character-specific logic.
Notable changes:

- [toriel's fireball](https://twitter.com/thisIsRukai/status/1302250049972314112)
- [wobbly fireball shaders](https://twitter.com/thisIsRukai/status/1299311125285142529)
- [items that can be picked up and thrown](https://twitter.com/thisIsRukai/status/1297507398693736448)
- [character specific logic](https://twitter.com/thisIsRukai/status/1314872752642297856)

[canon-collision]: https://canoncollision.com
[@rukai]: https://twitter.com/thisIsRukai

### [galaxy-sim.github.io]

![Simulation demo](galaxy-sim.gif)

[galaxy-sim.github.io] ([source][galaxy-sim-repo]) by [@zephybite] and [@joshikatsu]
is a colliding galaxies simulation based on [Barnes-Hut and direct algorithms][galaxy-sim-wiki].
The project is written using Rust, ThreeJS, and WASM.

_Discussions:
[Twitter](https://twitter.com/zephybite/status/1311384855276470272)_

[galaxy-sim.github.io]: https://galaxy-sim.github.io
[galaxy-sim-repo]: https://github.com/Katsutoshii/barnes-hut-rs
[@zephybite]: https://twitter.com/zephybite
[@joshikatsu]: https://twitter.com/joshikatsu
[galaxy-sim-wiki]: https://en.wikipedia.org/wiki/Barnes-Hut_simulation

### Ludum Dare 47

[Ludum Dare][ld] is a regular game jam event,
during which developers create games from scratch in a weekend
based on a theme suggested by the community.

LD47's theme was "Stuck in a loop".
Here are some of the games made with Rust:

- ["The Island"][ld-island] by [@kuviman]
  ([source code][ld-island-src]).

  > A multiplayer online sandbox game.
  > Explore, craft, and try to escape the island
  > (spoiler: you can not, you are stuck in a loop).
  > The world regenerates where you don't see.

  Check out the devlog post:
  ["LudumDare 47 - The Island"][ld-island-post].

  ![gameplay](ld47-island.gif)

- ["Time Ghosts"][ld-ghosts] by [@Healthire]
  ([source code][ld-ghosts-src]).

  > You have a limited time to collect the next part for the Machine,
  > when 12 seconds have passed time rewinds and you have to start over.
  > But don’t worry, your past self is still around
  > to repeat your past actions.

  ![gameplay](ld47-time-ghosts.png)

- ["Quantum Loops"][ld-quantum] by [@necauqua]
  ([source code][ld-quantum-src]).

  > There is a particle forced to exist in a quantum loop
  > and it really hates being real!
  > Disrupt the quantum levels with most efficient use of your energy
  > to let it escape back into nothing!

  ![gameplay](ld47-quantum-loops.gif)

- ["Keep Inside"][ld-keep-inside] by [@davidB] made with Bevy
  ([source code][ld-keep-inside-src]).

  > A solo pong on a circle.

  ![gameplay](ld47-keep-inside.gif)

- ["Keep Moving and Nobody Burns"][ld-nobody-burns-src] by [@FrancoisMockers]
  made with Bevy ([source code][ld-nobody-burns-src]).

  > Aim for the high score while avoid getting burned either
  > by that big wall of fire or by your own bombs!
  > Every round, the game will get harder, but you will earn more points.
  > To help you, blowing up those crates may drop bonus
  > that will make your bombs more useful.

  ![gameplay](ld47-nobody-burns.png)

- ["Bloody Baron"][ld-baron] by [@torresguilherme]
  ([source code][ld-baron-src]).

  > You’re in a building with 9 other people, and one of them is a brutal killer.
  > Don’t get caught by them, and use your abilities and your logic skills
  > to solve the mystery and vote the right person in the trial!

  ![gameplay](ld47-bloody-baron.png)

- ["Soy Content"][ld-soy] by [@walterpie] made with Bevy
  ([source code][ld-soy-src]).

  > A misleading puzzle game with a twist.
  > Find your way in a non-euclidean maze of interconnected rooms.
  > Warning: Game doesn't contain any Soy.

  ![gameplay](ld47-soy.png)

[ld]: https://ldjam.com/events/ludum-dare/47
[ld-island]: https://ldjam.com/events/ludum-dare/47/the-island
[ld-island-src]: https://github.com/kuviman/ludumdare47
[ld-island-post]: https://blog.kuviman.com/2020/10/18/ludumdare47.html
[@kuviman]: https://github.com/kuviman
[ld-ghosts]: https://ldjam.com/events/ludum-dare/47/time-ghosts
[ld-ghosts-src]: https://github.com/Healthire/ld47
[@Healthire]: https://twitter.com/Healthire
[ld-quantum]: https://ldjam.com/events/ludum-dare/47/quantum-loops
[ld-quantum-src]: https://github.com/necauqua/quantum-loops
[@necauqua]: https://twitter.com/necauqua
[ld-keep-inside]: https://ldjam.com/events/ludum-dare/47/keep-inside
[ld-keep-inside-src]: https://github.com/davidB/ld47_keep_inside
[@davidB]: https://github.com/davidB
[ld-nobody-burns-src]: https://github.com/mockersf/kmanb
[@FrancoisMockers]: https://twitter.com/FrancoisMockers
[ld-baron]: https://ldjam.com/events/ludum-dare/47/bloody-baron
[ld-baron-src]: https://github.com/torresguilherme/bloody-baron
[@torresguilherme]: https://github.com/torresguilherme
[ld-soy]: https://ldjam.com/events/ludum-dare/47/soy-content
[ld-soy-src]: https://github.com/walterpie/ldjam-47
[@walterpie]: https://github.com/walterpie

## Learning Material Updates

### How to: WGPU + Winit + ECS + Pixels

[@nyxtom] published several articles on game
development for Entity-Component-Systems, Windowing and Event Loops, and WGPU.

- [ECS in Rust](https://nyxtom.dev/2020/10/06/ecs-in-rust/) -
  written as a high level introduction to entity component systems and
  using the [hecs] crate.
- [Winit and Pixels](https://nyxtom.dev/2020/10/07/winit-rust/) -
  introduces cross platform window management/event loops and provides a
  tutorial for writing simple pixel graphics and 2d game development using
  the [pixels] crate (based on WGPU).
- [Framebuffers, WGPU and Rust](https://nyxtom.dev/2020/10/08/framebuffers/) -
  an in-depth analysis of high-level graphics terminology and a full length
  tutorial for setting up the api and clearing the screen with WGPU.

[@nyxtom]: https://twitter.com/nyxtom
[pixels]: https://github.com/parasyte/pixels

### [Creating a Snake Clone in Bevy]

![Snake clone tutorial output](bevy_snake.gif)
_Gameplay of snake clone_

Bevy is a rapidly growing game engine written in Rust. This tutorial walks
through creating a snake clone, introducing Bevy concepts on the way. The
tutorial covers resources, systems, timers, entities, components, materials,
creating a grid system, and spawning/despawning entities.

[Creating a Snake Clone in Bevy]: https://mbuffett.com/posts/bevy-snake-tutorial/

### Rust FFI: Microsoft Flight Simulator SDK

[![Preview](video-ffi-msfs.jpg)][msfs-video-1]

[@ryan_levick] made two livestreams about Rust FFI and SDK for
Microsoft Flight Simulator 2020.
You can watch recordings here:

- [Part 1][msfs-video-1]: bindgen, C ABIs, linkers, and more.
- [Part 2][msfs-video-2]: more high-level concerns like API design
  and making an idiomatic API.

Subscribe to [@ryanlevick on Twitch][ryanlevick-twitch] for future streams.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/j92jc0/rust_ffi_microsoft_flight_simulator_sdk_part_1)_

[@ryan_levick]: twitter.com/ryan_levick
[ryanlevick-twitch]: https://twitch.tv/ryanlevick
[msfs-video-1]: https://youtube.com/watch?v=jNNz4h3iIlw
[msfs-video-2]: https://youtube.com/watch?v=ugiR9M16fwg

### [How to: Rust + SDL2 + OpenGL on the Web][how-to-rust-sdl2-opengl-post]

[@Therocode] published an [article][how-to-rust-sdl2-opengl-post] that
explains how to port games to the web using Emscripten.
It is not only useful if you have an existing game to port, but
also if you are looking for a starting point for a new application.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/jmeqan/how_to_rust_sdl2_opengl_on_the_web)_

[how-to-rust-sdl2-opengl-post]: https://blog.therocode.net/2020/10/a-guide-to-rust-sdl2-emscripten
[@Therocode]: https://twitter.com/therocode

## Library & Tooling Updates

### [rust-psp]

![tetris on rust-psp](rust-psp-tetris-small.jpg)

Move over Tetris Effect and Tetris 99, the first game has been created with
[rust-psp], and it's [Tetris]! This was a big step because it proves that
rust-psp is ready for game development, even though it's still `#![no_std]`.
`std` support is a work in progress, and the project is always open to new
contributors to the library, the tooling, or people who want to make PSP games
in Rust.

Another development for rust-psp this month is [reverse engineering]
of the Sony library for the hardware vector floating point unit of the PSP.
All the vector and matrix operations provided by the Sony library have been
PR'ed to rust-psp's main repo, and there are still more functions to come.

To stay up to date on [rust-psp] development, you can join the project's [Discord]
or follow [@sajattack] on Twitter.

[rust-psp]: https://github.com/overdrivenpotato/rust-psp
[Tetris]: https://github.com/sajattack/rust-psp/tree/tetris/examples/tetris
[reverse engineering]: https://psp.re
[Discord]: https://discord.gg/tvGzD4GqvF
[@sajattack]: https://twitter.com/sajattack

### [gbemu]

![screenshot](gbemu.png)

[gbemu] by [@BlueBlazin] is a Gameboy/Gameboy Color Emulator which
[runs in the browser][gbemu-web].

> ... I wrote the emu just for myself as a learning experience.
> So it's lacking in a lot of features you'd expect from one made
> for others to use, and it's also not mobile-friendly unfortunately
> (but I'll work on that soon).
> Still, it may be of some interest to someone here :D

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/j8vw84/i_made_a_gameboygameboy_color_emulator)_

[gbemu]: https://github.com/BlueBlazin/gbemu
[gbemu-web]: https://gbemu.netlify.app
[@BlueBlazin]: https://github.com/BlueBlazin

### [skyline-rs]

![SSB & Rust logos](smash_x_rust.png)

[skyline-rs] by [@jam1garner] is a project seeking to allow Rust code to
unofficially use the Nintendo Switch SDK focused on modding.

This month, [@jam1garner] made a blog post, [Rust for Modding Smash Ultimate],
focused on detailing why Rust was such a good fit for modding games on the
Switch and his experience porting Rust to the Nintendo Switch.
It also features updates regarding:

- Crates for working with Nintendo and Namco textures formats
  ([bntx] and [nutexb]).
- An auto-updater client and server for Rustaceans writing Switch mods.
- The introduction of [skyline-web], a new library for working
  with the Switch's web browser.
- Additions to the [skyline fork] of the Rust standard library.

[skyline-rs]: https://github.com/ultimate-research/skyline-rs
[skyline-web]: https://github.com/skyline-rs/skyline-web
[@jam1garner]: https://twitter.com/jam1garner
[Rust for Modding Smash Ultimate]: https://jam1.re/blog/rust-for-game-modding
[skyline fork]: https://github.com/jam1garner/rust-std-skyline
[bntx]: https://github.com/jam1garner/bntx
[nutexb]: https://github.com/jam1garner/nutexb

### [shared-arena]

[shared-arena] by [@0x5eb] is a thread-safe & efficient memory pool.
Memory pools are useful for speeding up dynamic (de)allocation
of large amounts of data of the same size.

shared-arena provides three memory pools with different trade-offs:

![SharedArena, Arena, Pool](shared-arena.png)

The crate uses unsafe in a few places,
but the code is covered by the miri interpreter, valgrind and 3 sanitizers
(address, leak, and memory) [on each commit][shared-arena-ga].

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/jddens/announcing_shared_arena)_

[shared-arena]: https://github.com/sebastiencs/shared-arena
[shared-arena-ga]: https://github.com/sebastiencs/shared-arena/blob/master/.github/workflows
[@0x5eb]: https://twitter.com/0x5eb

### [glam] v0.10.0

[glam] is a simple and fast linear algebra crate for games and graphics.

This month v0.10.0 was released.
There were a lot of additions in this update and a small breaking change.

- The return type of `Vec4::truncate()` was changed from `Vec3A` to `Vec3` which
  is a breaking change and thus the version jumped from 0.9 to 0.10.
- Vector swizzle functions similar to those found in [GLSL] were added. Swizzle
  functions allow a vector's elements to be reordered. The result can be a vector
  of a different size to the input. Swizzles are implemented with SIMD
  instructions where possible, e.g. for the `Vec4` type.

  ```rust
  let v = vec4(1.0, 2.0, 3.0, 4.0);

  // Reverse elements of `v`.
  // If SIMD is supported this will use a vector shuffle.
  let wzyx = v.wzyx();

  let yzw = v.yzw(); // Swizzle the yzw elements of `v` into a `Vec3`
  let xy = v.xy(); // You can swizzle from a `Vec4` to a `Vec2`
  let yyxx = xy.yyxx(); // And back again
  ```

- [no_std] support was added, using [libm] for math functions that are not
  implemented in `core`.
- Optional support for the [bytemuck] crate was added, this allows appropriate
  glam types to be cast into `&[u8]`.

For a full list of changes see the [glam changelog].

[glam]: https://github.com/bitshifter/glam-rs
[GLSL]: https://www.khronos.org/opengl/wiki/Data_Type_(GLSL)#Swizzling
[no_std]: https://rust-embedded.github.io/book/intro/no-std.html
[libm]: https://github.com/rust-lang/libm
[bytemuck]: https://docs.rs/bytemuck
[glam changelog]: https://github.com/bitshifter/glam-rs/blob/master/CHANGELOG.md

### [density-mesh]

![output example](density-mesh.png)

[density-mesh] by [@PsichiX] is an image density/height map to mesh generator.
It consists of two crates:

- density-mesh-core - generates mesh from density map.
- density-mesh-image - generates density map from image.

A typical use case would be to use two of them to create mesh from images
but in case you have your own image handler, you can stick to the core module
and produce density maps by yourself.

There's also a [CLI tool][density-mesh-cli].

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/j73ijj/densitymesh_image_to_2d_mesh_converter)_

[density-mesh]: https://github.com/PsichiX/density-mesh
[density-mesh-cli]: https://github.com/PsichiX/density-mesh#cli
[@PsichiX]: https://github.com/PsichiX

### [Rapier]

[![Rapier logo](rapier-logo.svg)][Rapier]

[Rapier] is a set of 2D and 3D physics engines for games, animation and
robotics written in Rust.

[This month][rapier-october] the version 0.3.0 has been released with exciting
new features:

- cylinders and cones as collider shapes;
- collision groups (with bit masks) and collision filters (with callbacks)
  for deciding what pairs of colliders can touch;
- the ability to set the mass of rigid-bodies explicitly;
- linear and angular damping, to progressively slow down rigid-bodies;
- the ability to attach some user-defined data (of type `u128`) to any
  collider or rigid-body.

[![Rapier features](rapier-demo.gif)][rapier-demo]

The [bevy_rapier] plugin for the Bevy game engine has been updated to support
all the aforementioned features.

Finally, a [continuous benchmarking][cont-bench] infrastructure has been set
up to make sure performance regressions can be detected early.

[Rapier]: https://rapier.rs
[rapier-october]: https://www.dimforge.com/blog/2020/11/01/this-month-in-dimforge/
[rapier-demo]: https://twitter.com/dimforge/status/1321138642778206211
[bevy_rapier]: https://www.rapier.rs/docs/user_guides/rust_bevy_plugin/getting_started
[cont-bench]: https://www.dimforge.com/blog/2020/10/01/this-month-in-dimforge#rapier-continuous-benchmarking

### [physme]

[Physme] is not your typical physics engine. It doesn't exactly simulate
real world physics and it never will. Instead, it has only two goals:

- To provide satisfying real-time dynamics for 2D and 3D games.
- To have a simple to use API.

Physme will only work with [bevy] and is not made to support other game
engines.
The current release supports bevy 0.2, but work is being done to support
bevy 0.3.

The current feature set includes:

- Rigid bodies
- Multiple colliders per body
- Static and semikinematic bodies
- Sensor bodies
- Oriented bounding boxes
- Fixed, mechanical and spring joints
- Broad phase

All of the above-listed features are supported in both 2D and 3D.

[physme]: https://github.com/walterpie/physme

### [This Month in Mun][mun-october]

[![Mun logo](mun-logo.png)][Mun]

[Mun] is a scripting language for gamedev focused on quick iteration times
that is written in Rust.

[October updates][mun-october] include:

- a plugin for mdbook to test Mun code;
- support for modules and visibility;
- the ability to generate enum ABI types;
- bug fixes and other improvements.

[Mun]: https://mun-lang.org
[mun-october]: https://mun-lang.org/blog/2020/10/31/this-month-october

### [building-blocks]

![Meshing Example](building-blocks.gif)

[Building Blocks][building-blocks] by [@bonsairobo]
is an engine-agnostic voxel library that implements real-time data structures
and algorithms for: edits on compressed maps, meshing, search, and collisions.

The library has recently seen two releases:

- [v0.1.0 release notes][building-blocks-v0-1]
- [v0.2.0 release notes][building-blocks-v0-2]

To prove out the functionality of the library, the [voxel-mapper]
project was ported to use building-blocks instead of ilattice3.
This resulted in improved performance and memory usage
when doing large edits and working with large maps:

![Terraforming demo](voxel-mapper.gif)

Join [Building Blocks's Discord server](https://discord.gg/CnTNjwb).

[building-blocks]: https://github.com/bonsairobo/building-blocks
[@bonsairobo]: https://github.com/bonsairobo
[voxel-mapper]: https://github.com/amethyst/voxel-mapper
[building-blocks-v0-1]: https://github.com/bonsairobo/building-blocks/releases/tag/v0.1.0
[building-blocks-v0-2]: https://github.com/bonsairobo/building-blocks/releases/tag/v0.2.0

### [Rust GPU v0.1][rustgpu-v0.1]

![Rust GPU Sky](rustgpu.jpg)
_Sky example in Rust GPU_

[Rust GPU][rustgpu] is a project backed by [Embark Studios][embark]
to make Rust a first-class language and ecosystem for building GPU code.

Although still in very early stages of development,
[Rust GPU released v0.1 in October][rustgpu-v0.1],
and has already garnered over 2000 stars on Github.
Currently, compiling and running very simple shaders
works, and a significant portion of the core library also compiles. While things
like if-statements and while-loops are working, many things aren't implemented yet.
For example, for-loops, iterators and match/switch aren't supported yet. That
means that while being technically usable, Rust GPU is far from being
production-ready.

The motivation behind the project:

> Historically in games, GPU programming has been done through writing either
> HLSL, or to a lesser extent GLSL. These are simple programming languages that
> have evolved along with rendering APIs over the years. However, as game engines
> have evolved, these languages have failed to provide mechanisms for dealing with
> large codebases, and have generally stayed behind the curve compared to other
> programming languages.
>
> In part this is because it's a niche language for a niche market, and in part
> this has been because the industry as a whole has sunk quite a lot of time and
> effort into the status quo. While over-all better alternatives to both languages
> exist, none of them are in a place to replace HLSL or GLSL. Either because they
> are vendor locked, or because they don't support the traditional graphics
> pipeline. Examples of this include CUDA and OpenCL. And while attempts have been
> made to create language in this space, none of them have gained any notable
> traction in the gamedev community.

The code for the sky example above:

```rust
#[spirv(entry = "fragment")]
pub fn main_fs(input: Input<Vec4>, mut output: Output<Vec4>) {
    let dir: Vec3 = input.load().truncate();
    let cs_pos = Vec4(dir.0, -dir.1, 1.0, 1.0);
    let ws_pos = {
        let p = clip_to_world.mul_vec4(cs_pos);
        p.truncate() / p.3
    };
    let dir = (ws_pos - eye_pos).normalize();
    let color = sky(dir, sun_pos); // evaluate Preetham sky model
    output.store(color.extend(0.0))
}
```

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/jg056t/introducing_rustgpu_v01),
[Hacker News](https://news.ycombinator.com/item?id=24858172),
[Twitter](https://twitter.com/repi/status/1319274584915365888)_

[rustgpu]: https://github.com/EmbarkStudios/rust-gpu
[rustgpu-v0.1]: https://github.com/EmbarkStudios/rust-gpu/releases/tag/v0.1
[embark]: https://www.embark-studios.com/

### [gfx-rs]

gfx-rs support for D3D has been improved. [@kvark] landed a few critical fixes
in the DX12 backend, including the proper handle freeing, compressed textures
support, blend factors, and debug markers.

[@cwfitzerald] brought DX11 backend practically to the 1st tier with titanic
work spread over a dozen of pull requests.
It is now able to run [bve-reborn] correctly:

![bve-reborn on dx11](bve-reborn-dx11.jpg)

[gfx-rs]: https://github.com/gfx-rs/gfx
[@kvark]: https://github.com/kvark
[@cwfitzerald]: https://github.com/cwfitzgerald
[bve-reborn]: https://github.com/BVE-Reborn/bve-reborn

### [ggez][ggez-github] 0.6 Call for Contributions

The `ggez` game library traditionally tries to make at least one release
at the end of each year, and that is fast approaching.  While the
graphics engine rewrite is still a work in progress, there's plenty of
other useful updates to be made.  Bugfixes, dependency updates, and other
ergonomic fixes are all on the table.  A lot of work has already been
done: removing `nalgebra` from the public API in favor of just using
`mint`, re-working some dependencies to improve build times, and
updating and cleaning up a pile of minor issues.  However, there's still
about a hundred accumulated bugs and PR's to triage and figure out, and
a lot of testing to do.  Please help!  The release checklist is
available [here][ggez-release-checklist].

[ggez-github]: https://github.com/ggez/ggez/
[ggez-release-checklist]: https://github.com/ggez/ggez/milestone/6

### [miniquad]

![miniquad_wayland](miniquad_wayland.gif)
_Miniquad compiled from scratch and running on Wayland._

[miniquad] is cross-platform windowing and rendering library.

This month two big PRs got into the final review stage:

- [Native Wayland support][wayland-pr]:
  as usual, no third-party dependencies or C code involved;
  Clean build time for Wayland examples are about 3s.
- [The Metal backend PR][metal-pr] showed good signs of life,
  [quad] and [offscreen] examples got successfully run on Metal.

[miniquad]: https://github.com/not-fl3/miniquad
[wayland-pr]: https://github.com/not-fl3/miniquad/pull/152
[metal-pr]: https://github.com/not-fl3/miniquad/pull/135
[quad]: https://github.com/not-fl3/miniquad/blob/master/examples/quad.rs
[offscreen]: https://github.com/not-fl3/miniquad/blob/master/examples/offscreen.rs

### [macroquad]

![macroquad-gif](macroquad.gif)
_Macroquad-particles real-life example_

[macroquad] is a cross-platform (Windows/Linux/macOS/Android/iOS/WASM)
game framework built on top of [miniquad].

This month was about polishing 0.3-alpha version.
Important things that got fixed:

- Text rendering was reimplemented with [fontdue]:
  [example][macroquad-text-src], [web demo][macroquad-text-web].
- A long-term [issue with Android resources system][android-resources-issues]
  got fixed.
- Particle system was released:
  [example][particles-src], [web demo][particles-web-demo].

And special shoutout goes to [donuts] game by [@cedric-h] - a simple game
made in a couple of days, like a jam game.
It's a really good showcase of macroquad's approach to simple game code
that allows hardcoding and hacks for empowering gameplay experiments.

[macroquad]: https://github.com/not-fl3/macroquad
[macroquad-text-src]: https://github.com/not-fl3/macroquad/blob/master/examples/text.rs
[macroquad-text-web]: https://not-fl3.github.io/miniquad-samples/macroquad_text.html
[particles-src]: https://github.com/not-fl3/macroquad/blob/master/particles/examples/particles.rs
[particles-web]: https://not-fl3.github.io/miniquad-samples/particles.html
[fontdue]: https://github.com/mooman219/fontdue
[android-resources-issues]: https://github.com/not-fl3/macroquad/issues/45
[donuts]: https://github.com/cedric-h/donuts
[@cedric-h]: https://github.com/cedric-h

### [rg3d]

[![a scene with lightning and a hi-poly character model](rg3d.jpg)][rg3d_twit]

[rg3d] is a game engine that aims to be easy to use and provide large set
of out-of-box features. Some of the recent updates:

- Implemented fully asynchronous resource loading.
- Added compressed textures support (DXT1, DTX3, DTX5).
- Added filtering and wrapping options for textures.
- Added sky box.
- Added texture import options for resource manager.
- All dependencies were moved to rg3d workspace, so there is no need to
  manually download them when working with the latest version of the engine.
- Extracted HRTF code in the separate [crate][hrtf], so it could be used
  without rg3d.
- Lots of other bugfixes and improvements.

Join the [rg3d's Discord channel][rg3d_discord]
or follow [Dmitry Stepanov on twitter][rg3d_twitter].

[rg3d]: https://github.com/mrDIMAS/rg3d
[hrtf]: https://github.com/mrDIMAS/hrtf
[rg3d_twit]: https://twitter.com/DmitryS36934349/status/1312836831390687232
[rg3d_discord]: https://discord.gg/xENF5Uh
[rg3d_twitter]: https://twitter.com/DmitryS36934349

### [Bevy Engine v0.3][bevy-0-3]

[![bevy logo](bevy_logo.png)][bevy]

[Bevy][bevy] is a refreshingly simple data-driven game engine built in Rust.
It is [free and open source][bevy-repo] forever!

This month, thanks to 59 contributors, 122 pull requests, and their
[generous sponsors][bevy-sponsors], Bevy 0.3 was released. You can view the
[full Bevy 0.3 announcement here][bevy-0-3]. Here are some highlights:

- Initial Android and iOS support
- Asset system improvements:
  - Asset handle reference counting
  - Asset loaders can now load multiple assets
  - Sub asset loading
  - Asset dependencies
- GLTF scene loader
- Bevy ECS improvements
  - Query ergonomics: query.iter() returns a real iterator now!
  - 100% lockless parallel ECS
  - Performance improvements
  - Thread local resources
- Flexible mesh vertex attributes and index buffer specialization
- WASM asset loading, touch input, transform re-rewrite, gamepad settings,
  plugin Groups, dynamic Window Settings, documentation search-ability.

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/jnirl3/bevy_03/),
[hacker news](https://news.ycombinator.com/item?id=24983956),
[twitter](https://twitter.com/cart_cart/status/1323731853304422400)_

[bevy]: https://bevyengine.org
[bevy-repo]: https://github.com/bevyengine/bevy
[bevy-0-3]: https://bevyengine.org/news/bevy-0-3
[bevy-sponsors]: https://github.com/sponsors/cart

------

Community updates:

- [bevy_rapier 0.5](https://rapier.rs/docs/user_guides/rust_bevy_plugin/getting_started):
  The Rapier Physics project released updates to their official Bevy plugins, which
  add support for Bevy 0.3 as well as the latest Rapier features
  [announced here](https://www.dimforge.com/blog/2020/11/01/this-month-in-dimforge).
- [bevy_easings](https://crates.io/crates/bevy_easings):
  A plugin for easing a component value to another value, mainly used
  to animate transition between two transforms, but usable for other components.
- [bevy_miniquad](https://github.com/smokku/bevy_miniquad):
  A plugin replacing winit windowing and render pipeline with
  [miniquad](https://github.com/not-fl3/miniquad) library.
- [physme](https://github.com/walterpie/physme):
  A simplistic physics engine for both 2D and 3D simulation.
  Physically inaccurate, but feels satisfying and is easy to use.
- [bevy_networking_turbulence](https://github.com/smokku/bevy_networking_turbulence):
  Networking plugin running on [naia-socket](https://github.com/naia-rs/naia-socket)
  and [turbulence](https://github.com/kyren/turbulence) libraries.
- [Making a Snake Clone](https://mbuffett.com/posts/bevy-snake-tutorial/):
  Walkthrough on how to make a snake clone.
- [bevy_tilemap](https://github.com/joshuajbouw/bevy_tilemap):
  A plugin with generic types for rendering multi-threaded chunk-based tile
  maps.
- [Keep Inside](https://github.com/davidB/ld47_keep_inside):
  A solo pong on a circle (made for Ludum Dare 47)
- [Keep Moving and Nobody Burns](https://github.com/mockersf/kmanb):
  A bomberman against time (made for Ludum Dare 47)

Join the Bevy's [Discord][bevy-discord], [/r/bevy subreddit][bevy-reddit],
and follow [@BevyEngine on Twitter][bevy-twitter].

[bevy-discord]: https://discord.com/invite/gMUk5Ph
[bevy-reddit]: https://reddit.com/r/bevy
[bevy-twitter]: https://twitter.com/BevyEngine

### [Tetra]

[Tetra] is a simple 2D game framework, inspired by XNA and Raylib. This month,
versions 0.5.1 and 0.5.2 were released, fulfilling some long-standing feature
requests:

- Custom error types can now be used in your game loop
- Custom shaders gained support for multiple texture samplers and color uniforms
- Methods were added to `Texture` and `Canvas` for writing pixel data at runtime
- Various helpful `std` traits were implemented for `Color`

For full details and a list of breaking changes, see the [changelog][tetra-changelog].

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md

### [ogmo3]

[ogmo3] is a Rust crate for parsing projects and levels created with
[Ogmo Editor 3]. It is loosely modeled after `ogmo-3-lib`, the Haxe reference
implementation of an Ogmo level parser.

This month, it was released onto crates.io for the first time, and a
[full example][ogmo3-sample] was added, showing how a simple project can be
loaded into a game engine.

[ogmo3]: https://github.com/17cupsofcoffee/ogmo3
[Ogmo Editor 3]: https://ogmo-editor-3.github.io/
[ogmo3-sample]: https://github.com/17cupsofcoffee/ogmo3/blob/main/examples/sample.rs

### [Wilds]

![Demo: sponza atrium](wilds.1.png)

[Wilds] is very early in development game engine.

It features a renderer that uses Vulkan [ray-tracing extension] supported
by NVidia RTX cards and future AMD cards.
Screenshot above is rendered using [DDGI] technique implemented exclusively
with Rust and GLSL for shaders.
In the whole scene there is only one directional light source - "sun" -
and no "ambient" light.
All geometry in viewport is shadowed from "sun" and is lit with diffuse
illumination.

To keep things as simple as possible the engine uses [Hecs] - minimalistic
ECS library.
Assets are loaded asynchronously using [Goods] asset manager.

Traditional rasteriazation rendering pipeline and support [wgpu] backend are planned
to support wider range of platforms/hardware.

Implementing GUI system and basic editor is also a priority goal.

Follow progress [on Twitter](https://twitter.com/zakarum4).
Contributions and feedback are always welcome.

[Wilds]: https://github.com/zakarumych/wilds
[ray-tracing extension]: https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/VK_KHR_ray_tracing.html
[DDGI]: https://morgan3d.github.io/articles/2019-04-01-ddgi/
[Goods]: https://github.com/zakarumych/goods
[~~Shave more yaks~~]: https://github.com/zakarumych/gpu-alloc
[Rapier]: https://rapier.rs
[Wgpu]: https://wgpu.rs

### [fastnbt & fastanvil][fastnbt]

![output example](fastnbt.png)

[fastnbt] by [@owengage] is a fast parsing library
for Minecraft's NBT and Anvil formats.

The project consists of several crates:

- fastnbt - fast deserializer and parser for Minecraft: Java Edition's
  NBT data format.
- fastanvil - for rendering Minecraft worlds to maps.
- fastnbt-tools - various tools for NBT/Anvil, notably a map renderer.
- anvil-wasm - an entirely in-the-browser map renderer.
  Demo at [owengage.com/anvil][anvil].

The project supports only the latest version of Minecraft (1.16 at the moment).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/jj6k9b/any_minecraft_fans)_

[fastnbt]: https://github.com/owengage/fastnbt
[@owengage]: https://github.com/owengage
[anvil]: https://owengage.com/anvil

### mcproto

mcproto by [@Twister915] is an implementation of the Minecraft multiplayer
network protocol in Rust. It consists of three crates:

- [mcproto-rs] - the protocol itself,
- [mctokio] - tokio I/O stuff,
- [rustcord] - a layer 7 server-switching proxy implementation (WIP).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/jcbawo/the_entire_minecraft_protocol_in_rust)_

[mcproto-rs]: https://github.com/Twister915/mcproto-rs
[mctokio]: https://github.com/Twister915/mctokio
[rustcord]: https://github.com/Twister915/rustcord
[@Twister915]: https://github.com/Twister915

### [Ajour] - World of Warcraft Addon Manager

[![Ajour Banner](ajour-banner.jpg)][Ajour]

[Ajour] is a World of Warcraft addon manager written in Rust using [Iced] as GUI
library. The project is completely advertisement free, privacy respecting, and
open source.

October updates include:

- Catalog support for installing addons.
- Beta, PTR support.
- Release channels on addons.
- CLI options to run Ajour headless.
- Community driven API.

Join the [Discord server](https://discord.com/invite/ajour) and say hi.

[![Ajour UI](ajour-ui.png)][Ajour]

[Ajour]: https://getajour.com
[Iced]: https://github.com/hecrj/iced

### [Proton][Proton-Github] 5.13-1

In addition to adding Linux Support for more Windows-exclusive games,
Valve Software's wine-based translation layer for Linux: Proton now
includes Rust as part of its build system.
[Media Converter][Proton-Media-Converter-Github], is a Proton module
written in Rust as a gstreamer plugin to convert certain media encodings
from one format to another.

Documentation for building Proton is available on [Github][Proton-Github].
Further documentation on Media Converter and its source code is available
on the module's [repository][Proton-Media-Converter-Github]

[Proton-Github]: https://github.com/ValveSoftware/Proton
[Proton-Media-Converter-Github]: https://github.com/ValveSoftware/Proton/tree/proton_5.13/media-converter

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

- [rust-gamedev/rust-gamedev.github.io](https://github.com/rust-gamedev/rust-gamedev.github.io):
  - [#269 "Proper style guide/contributing guidelines"](https://github.com/rust-gamedev/rust-gamedev.github.io/issues/269);
- [rust-gamedev/wg](https://github.com/rust-gamedev/wg):
  - [#21 "Planning a survey for Rust game developers"](https://github.com/rust-gamedev/wg/issues/21);
  - [#94 "raw-window-handle maintenance"](https://github.com/rust-gamedev/wg/issues/94);
- [rust-gamedev/ecs_bench_suite](https://github.com/rust-gamedev/ecs_bench_suite):
  - [#14 "Also benchmark in debug mode"](https://github.com/rust-gamedev/ecs_bench_suite/issues/14);

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [Embark's open issues][embark-open-issues] ([embark.rs]).
- [winit's "Good first issue" and “help wanted” issues][winit-issues].
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
[winit-issues]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[abstreet-issues]: https://github.com/dabreegster/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue
[simm-issues]: https://github.com/mkhan45/SIMple-Mechanics/labels/good%20first%20issue
[bevy-issues]: https://github.com/bevyengine/bevy/labels/good%20first%20issue

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

**Discussions of this post**:
[/r/rust](https://reddit.com/r/rust/comments/jr2170/this_month_in_rust_gamedev_15_october_2020),
[twitter](https://twitter.com/rust_gamedev/status/1325853594512396289).

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
