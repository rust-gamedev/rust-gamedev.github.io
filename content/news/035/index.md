+++
title = "This Month in Rust GameDev #35 - June 2022"
transparent = true
date = 2022-07-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 35th issue of the Rust GameDev Workgroup's
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
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Other News](#other-news)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Discussions](#discussions)
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

### [RuggRogue]

![RuggRogue gameplay screenshot](ruggrogue.png)

[RuggRogue] by [@tung] is a simple web-playable roguelike, inspired by the
[Rust Roguelike Tutorial] and made using Rust and SDL.
It can be played natively on Windows and Linux,
and in the browser thanks to Emscripten.

Features:

- Discover new monsters and equipment the deeper you go.
- Hunger and regeneration: stay fed and stay healed!
- Choose between graphical tiles and ASCII display.
- Menu-based UI with hot keys.
- Auto-run to quickly follow corridors and cross open space.
- Save and load system.
- New Game Plus mode!

The source code is complemented by the
[RuggRogue Source Code Guide][ruggrogue-book],
a 23-chapter technical web book covering the ideas, algorithms and structure of
the code.

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/vluy7u/ruggrogue_a_simple_webplayable_roguelike_made/),
[/r/roguelikes](https://reddit.com/r/roguelikes/comments/vluuud/ruggrogue_a_simple_webplayable_roguelike_inspired/)_

[RuggRogue]: https://tung.github.io/ruggrogue/
[Rust Roguelike Tutorial]: https://bfnightly.bracketproductions.com/
[ruggrogue-book]: https://tung.github.io/ruggrogue/source-code-guide/
[@tung]: https://github.com/tung/

### [Rust Game Ports]

![games collage](rust_game_ports.jpg)

Rust Game Ports is a port of several games to Rust/pure-Rust game engines.

This month the last planned port has been completed; the games are:

- Boing (Pong clone, ported to [ggez](https://github.com/ggez/ggez))
- Cavern (Bubble Bobble clone, ported to [Macroquad](https://github.com/not-fl3/macroquad))
- Rusty Roguelike (from the [Hands-on Rust book](https://pragprog.com/titles/hwrust/hands-on-rust);
  ECS ported to [Bevy](https://github.com/bevyengine/bevy))
- Soccer (Sensible Soccer clone, ported to [Fyrox](https://github.com/FyroxEngine/Fyrox))

A Bevy ECS tutorial, based on Rusty Roguelike, has been published, and it's
announced on this newsletter.

[Rust Game Ports]: https://github.com/64kramsystem/rust-game-ports
[Saverio Miroddi/@64kramsystem]: https://twitter.com/64kramsystem

### vetovoima

![vetovoima gravity manipulation GIF](vetovoima.gif)
_vetovoima gravity manipulation_

[vetovoima][vetovoima_itch] by [@MatiasKlemola][vetovoima_twitter] is an arcade game
where you control gravity!

The world is a hollow circle with a star in the center. You're the Yellow
Block and your goal is to navigate through shifting debris to the Tall Blue
Block before the time runs out. The challenge is to survive the chaos that
ensues from changes to gravity.

vetovoima is built with the Bevy engine using Rapier for physics and Lyon for
rendering (via Bevy plugins).

[The alpha 1 build was recently released.](https://twitter.com/MatiasKlemola/status/1541338040521707521)

Source available on [GitHub][vetovoima_github].

[vetovoima_itch]: https://yourmagicisworking.itch.io/vetovoima
[vetovoima_twitter]: https://twitter.com/MatiasKlemola
[vetovoima_github]: https://github.com/klemola/vetovoima

### [Botnet]

![botnet logo](botnet.svg)

[Botnet] is an upcoming programming-based multiplayer game,
where you write scripts (compiled to WebAssembly) to control robots.
Coordinate your bots to gather resources, build new industry,
and expand your control of the server.

This month saw the start of the project, and a majority of the foundational
code written. Next month we'll be adding more features, and aim to flesh out
the game beyond [basic pathfinding and resource harvesting][botnet_example_bot].

Interested in contributing? Head over to the
[github discussion page][botnet_ideas] and suggest some ideas!

[Botnet]: https://github.com/JMS55/botnet
[botnet_example_bot]: https://github.com/JMS55/botnet/blob/master/example_bot/src/lib.rs
[botnet_ideas]: https://github.com/JMS55/botnet/discussions/categories/ideas

### [Star Machine]

![Screenshot of a level in Star Machine](star_machine.png)

[Star Machine] by [@Seldom_SE] is a puzzle game built in Bevy, where
you wire together components to escape each level.

The game, although its development is presently inactive, made
[a video demo][Star Machine] of 8 of its early levels.

[Star Machine]: https://twitter.com/Seldom_SE/status/1532909654681849856
[@Seldom_SE]: https://twitter.com/Seldom_SE

### [Quoridor-rs]

![Screenshot of a Quoridor-rs gameplay](Quoridor-screenshot.png)

[Quoridor-rs] by [@baehyunsol] is a [Quoridor] game implemented in
[Macroquad].

Quoridor is a 2-4 player strategy board game. Each player has a pawn.
They move the pawn or place a wall each round. The objective of the
game is to move the pawn to the opposite side of the board.

The game implements most of the basic Quoridor features, but it only
supports 2 players, not 3 or 4. It also doesn't have AI players or
network games.

[Quoridor-rs]: https://github.com/baehyunsol/Quoridor-rs
[Quoridor]: https://en.wikipedia.org/wiki/Quoridor
[Macroquad]: https://github.com/not-fl3/macroquad
[@baehyunsol]: https://github.com/baehyunsol

## Engine Updates

### [ggez] 0.8.0-rc0

![ggez logo](../005/ggez-logo-maroon-full.svg)

[ggez] by [@icefoxen], [@nobbele] and [@PSteinhaus] is a cross-platform game
framework for making 2D games with minimum friction. It aims to implement an
API based on the LÖVE game framework.

This version has finally moved ggez away from pre-ll gfx and into the world
of [wgpu]! This hopefully means less bugs, greater stability and easier
maintainability at the cost of some low performance devices such as the
Raspberry Pi.

As for the user-facing API:

- Instead of module functions, you now have methods on sub-contexts, which
  look like `ctx.keyboard.is_key_pressed(key)`.
- You are now required to pass around an explicit canvas to draw onto.
- `DrawParam` now has a Z (aka layer) parameter, so you don't have to draw
  objects in order.
- Shaders are far easier to use, via normal Rust structs with a simple derive.

As this is a rather large update and a first release candidate, there are plenty
of bugs that are currently being fixed - please send any issues you encounter
to their [issue tracker][ggez-issues]!

_Discussions: [/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/v6a3kn/ggez_080rc0_is_out/)_

[ggez]: https://github.com/ggez/ggez
[@icefoxen]: https://github.com/icefoxen
[@nobbele]: https://github.com/nobbele
[@PSteinhaus]: https://github.com/PSteinhaus
[wgpu]: https://github.com/gfx-rs/wgpu
[ggez-issues]: https://github.com/ggez/ggez/issues

## Learning Material Updates

### [Brontefy Me Devlog #3][hedgein-devlog-3]

![Brontefy Me Devlog #3](brontefyme.png)

[@hedgein][hedgein-github] continues the [Brontefy Me][hedgein-devlog-3] series!
In this latest devlog, she gives an update on where Brontefy Me will be
heading and why it slowed down. During a recent [stream][hedgein-stream], it
was also mentioned that [@hedgein][hedgein-github] is leaning towards hosting
a monthly Brontefy Me Game Jam for her community, as game jams give her
better accountability. Further updates will be given in her [Discord server][hedgein-discord].

[hedgein-stream]: https://www.twitch.tv/hedgein
[hedgein-discord]: https://discord.gg/FnU6hxNGaP
[hedgein-devlog-3]:https://www.youtube.com/watch?v=oNxMN47tKxs
[hedgein-github]:https://github.com/hedgein

### [Learn Bevy's ECS by ripping off someone else's project]

![Learn Bevy's ECS by ripping off](learn_bevys_ecs_by_ripping_off.png)

"Learn Bevy's ECS by ripping off someone else's project" is a mini-book that uses
the game Rusty Roguelike from the book [Hands-on Rust](https://pragprog.com/titles/hwrust/hands-on-rust)
as a base, in order to explain Bevy's ECS.

The idea is for a beginner to learn ECS concepts from the base book, then apply
them using Bevy; the structure of the game is ideal for a gentle introduction to
ECS architecture.

[Learn Bevy's ECS by ripping off someone else's project]: https://saveriomiroddi.github.io/learn_bevy_ecs_by_ripping_off
[Saverio Miroddi/@64kramsystem]: https://twitter.com/64kramsystem

### [Bevy Basics][bevy-basics]

[@PhaestusFox] is close to finishing the [Bevy Basics][bevy-basics]
[User Input][BB-input] mini-series.

In this 5 part mini-series, they cover how a developer can go about collecting
user input using the [Bevy][bevy] game engine.

- [Episode 1][bb-1] is an overview of Bevy's various input structs
- [Episode 2][bb-2] covers keyboard presses
- [Episode 3][bb-3] covers mouse clicks and movement
- [Episode 4][bb-4] covers gamepad buttons and joysticks
- [Episode 5][bb-5] covers touchscreen or drawing pad strokes

[@PhaestusFox]: https://www.youtube.com/c/PhaestusFox
[bevy-basics]: https://www.youtube.com/playlist?list=PL6uRoaCCw7GN_lJxpKS3j-KXuThRiSXc6
[bb-input]: https://www.youtube.com/playlist?list=PL6uRoaCCw7GMWzJ-L2cU5ZruWkEld6a_N
[bb-1]: https://youtu.be/pB3ERI5JtrA
[bb-2]: https://youtu.be/G37yUGL3e1U
[bb-3]: https://youtu.be/1q5iQsLVGJA
[bb-4]: https://youtu.be/PjLozjlOgJ4
[bb-5]: https://www.youtube.com/c/PhaestusFox
[bevy]: https://bevyengine.org/

## Tooling Updates

## Library Updates

### [psf2]

[psf2] is a minimal, unopinionated, no-std parser for the v2
[PC Screen Font][psf2-format] bitmap font format.

PSF2 fonts are simple, compact, and readily available due to their use as Linux
console fonts. They are extremely fast to draw at their intended resolution,
making them a great choice to quickly get text on the screen, especially when a
low-resolution, fixed-width aesthetic is desired.

The psf2 crate parses font data, exposing font size, glyph lookup, and iterators
to traverse a glyph's bitmap for easy rendering. Due to its limited scope, it is
much smaller and faster than conventional text rasterizers, but cannot support
variable-width, anti-aliased, or shaped text.

[psf2]: https://github.com/Ralith/psf2
[psf2-format]: https://www.win.tue.nl/~aeb/linux/kbd/font-formats-1.html

### [ezinput]

[ezinput] by [@eexsty][ezinput_creator] is a powerful input-agnostic library,
targeting complete support for axis and button handling in the Bevy game
engine.

EZInput strives to be simple as possible using the nifty ECS features that Bevy
offers, while still being powerful and flexible without using any unsafe code.
This and the previous 0.3.* releases were targeted for performance and
ergonomics improvements, including a new declarative macro to allow for
cleaner and smaller code.

[ezinput]: https://crates.io/crates/ezinput/versions
[ezinput_creator]: https://github.com/eexsty

### [glam] v0.21

[glam] is a simple and fast linear algebra crate for games and graphics.

This month version 0.21 of glam was released. Because glam is not a generic
library, when support was added for `f64`, `i32` and `u32` types back in glam
0.12, macros were used internally to avoid a lot of code duplication. This
unfortunately obfuscated the internals of glam for anyone who needed to view the
source.

As of the 0.21 release the majority of glam code is now generated using an
offline tool and committed to the repo. The macros that were used to define
glam's internal implementation are gone. This means what users see when reading
docs or stepping through glam in the debugger is plain old Rust code. Many
functions have also been made `const fn` removing the need for macros to create
`const` values.

[glam]: https://github.com/bitshifter/glam-rs

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
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
