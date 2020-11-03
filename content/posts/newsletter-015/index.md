+++
title = "This Month in Rust GameDev #15 - October 2020"
date = 2020-11-03
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

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

- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
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

### [Egregoria]

![Egregoria roads at night](egregoria.jpg)

[Egregoria]'s objective is to become a granular society simulation,
filled with fully autonomous agents interacting with their world in real time.

The [6th devlog][egregoria-blog-post] was published. Updates include:

- Island generation.
- Day/night cycle.
- Human AI via utilitary systems.
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

### Worship The Sun

![Worship The Sun](worship-sun.jpg)
_One of the many unique and confounding puzzles in the game_

Worship The Sun is a dark, mysterious 2D puzzle-platform game with computer
science themes. It introduces the player to a rich language of puzzle elements
and challenges them to solve difficult puzzles that require experimentation,
comprehension and internalisation of the game's mechanics.

The game is built using a custom engine that sits on top of [legion][legion],
[wgpu][wgpu] and a handful of other crates. It features dynamic lighting, a
flexible particle system, bespoke collision behaviour and a Vim-inspired level
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

### [Power Kick]

![Power Kick](power-kick-shot.png)

[Power Kick] is an one screen platform game inspired by similar old arcade games
like Bubble Bobble and SnowBros.
Your task is to hit the enemies till they get dizzy and then kick them out of
their misery to proceed to the next stage. The kicked enemies will hit the
colliding enemies with a possibility to create a chain reaction
(similar to the pushed snowball in SnowBros).

The game have 20 stages and in stage 10 and 20 you will face a helicopter boss.

Can be played solo on the web through WebAssembly or up to two players
in the downloadable version:
first player with the keyboard and the second one with a joypad.

The development took around two weeks thanks to [macroquad] and [hecs].

[Power Kick]: https://kakoeimon.itch.io/power-kick
[macroquad]: https://github.com/not-fl3/macroquad
[hecs]: https://crates.io/crates/hecs

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

Main features of reported (pre-alpha) version are:

- Ability to generate and explore one or many worlds (see previous news).

For main feature reports and dev blogs follow [@pGLOWrpg] on Twitter.

[@Roal_Yr]: https://twitter.com/Roal_Yr
[@pGLOWrpg]: https://twitter.com/pglowrpg
[pGLOWrpg]: https://github.com/roalyr/pglowrpg

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
  an in depth analysis of high level graphics terminology and a full length
  tutorial for setting up the api and clearing the screen with WGPU.

[@nyxtom]: https://twitter.com/nyxtom
[hecs]: https://github.com/Ralith/hecs
[pixels]: https://github.com/parasyte/pixels

### [Creating a Snake Clone in Bevy]

![Snake clone tutorial output](bevy_snake.gif)
_Gameplay of snake clone_

Bevy is a rapidly growing game engine written in Rust. This tutorial walks
through creating a snake clone, introducing Bevy concepts on the way. The
tutorial covers resources, systems, timers, entities, components, materials,
creating a grid system, and spawning/despawning entities.

[Creating a Snake Clone in Bevy]: https://mbuffett.com/posts/bevy-snake-tutorial/

### [How to: Rust + SDL2 + OpenGL on the web][how-to-rust-sdl2-opengl-post]

[@Therocode] published an [article][how-to-rust-sdl2-opengl-post] that
explains how to port games to the web using Emscripten.
It is not only useful if you have an existing game to port, but
also if you are looking for a starting point for a new application.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/jmeqan/how_to_rust_sdl2_opengl_on_the_web)_

[how-to-rust-sdl2-opengl-post]: https://blog.therocode.net/2020/10/a-guide-to-rust-sdl2-emscripten
[@Therocode]: https://twitter.com/therocode

## Library & Tooling Updates

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
loadedinto a game engine.

[ogmo3]: https://github.com/17cupsofcoffee/ogmo3
[Ogmo Editor 3]: https://ogmo-editor-3.github.io/
[ogmo3-sample]: https://github.com/17cupsofcoffee/ogmo3/blob/main/examples/sample.rs

### Ajour - World of Warcraft Addon Manager

[![Ajour Banner](ajour-banner.jpg)][Ajour]

[Ajour] is a World of Warcraft addon manager written in Rust using [Iced] as GUI
library. The project is completely advertisement free, privacy respecting and
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
