+++
title = "This Month in Rust GameDev #35 - June 2022"
transparent = true
date = 2022-07-07
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

- [Announcements](#announcements)
- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Engine Updates](#engine-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Other News](#other-news)
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

### [Rust GameDev Podcast][gamedev-podcast-site]

![text logo](podcast.jpeg)

The Rust Gamedev Podcast features interviews with indie game developers creating
titles with the Rust programming language. It covers technical topics as well as
the business of open source and commercial indie games development.

In June, [the ninth episode][podcast-9] was released. It's a chat with Carter
Anderson about the [Bevy engine][bevy], and a dive into its history.

Listen and Subscribe from the following platforms:
[Rust GameDev Podcast (simplecast)][gamedev-podcast-site],
[Apple Podcasts][gamedev-podcast-apple],
[Spotify][gamedev-podcast-spotify],
[RSS Feed][gamedev-podcast-rss],
or [Google Podcasts][gamedev-podcast-google].

[podcast-9]: https://rustgamedev.com/episodes/interview-with-carter-anderson-bevy
[bevy]: https://bevyengine.org/
[gamedev-podcast-site]: https://rustgamedev.com/
[gamedev-podcast-apple]: https://podcasts.apple.com/gb/podcast/rust-game-dev/id1526304768
[gamedev-podcast-spotify]: https://open.spotify.com/show/7HRfGnTcXkLkQd9fxJbDGj
[gamedev-podcast-rss]: https://feeds.simplecast.com/C6NQglnL
[gamedev-podcast-google]: https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy5zaW1wbGVjYXN0LmNvbS9DNk5RZ2xuTA

### Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The 17th Rust Gamedev Meetup took place in June. You can watch the recording of
the meetup [here on Youtube][gamedev-meetup-video]. Here was the schedule from
the meetup:

- Choir - [@kvark]
- RustConf Arcade Cabinet - [@carlosupina]
- retime - [@Togg]
- Graphite - [@GraphiteEditor]

The meetups take place on the second Saturday every month via the [Rust Gamedev
Discord server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch]. If you would like to show off what you've been
working on at the next meetup on [July 9th][rust-meetup-time], fill out [this
form][gamedev-meetup-form].

[gamedev-meetup-video]: https://youtu.be/drcX3dCS5MY
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev
[rust-meetup-time]: https://everytimezone.com/s/92d2228b
[gamedev-meetup-form]: https://forms.gle/BS1zCyZaiUFSUHxe6

[@kvark]: https://twitter.com/kvark
[@carlosupina]: https://twitter.com/carlosupina
[@Togg]: https://github.com/ZKpot
[@GraphiteEditor]: https://twitter.com/graphiteeditor

### [Rusty Jam 2][rusty-jam-ann]

{{ image_figure(
    alt="Aaron: a drawing of a humanoid fox"
    src="aaron.png"
    caption="Aaron, [the mascot of the jam](https://gamedev.rs/blog/rustyjam-02)") }}

The [second Rusty Jam][rusty-jam-ann] just ended!
[17 games][rusty-jam-entries] were completed and submitted
over the one-week jam. The games were rated by the community
and the top three games are:

- 🥇 ["Chick the Dog"][rusty-jam-place-1] by Uriopass
- 🥈 ["A walk around the block"][rusty-jam-place-2] by ramirezmike
- 🥉 ["Fight for the Frontier"][rusty-jam-place-3] by rand0m and logicprojects

The Rusty Jam will be back, so stay tuned on
[the Rusty Jam Discord Server][rusty-jam-discord] for future updates!

[rusty-jam]: https://itch.io/jam/rusty-jam-2
[rusty-jam-entries]: https://itch.io/jam/rusty-jam-2/entries
[rusty-jam-results]: https://itch.io/jam/rusty-jam-2/results
[rusty-jam-ann]: https://gamedev.rs/blog/rustyjam-02
[rusty-jam-discord]: https://discord.gg/jZtz6y9gCJ
[rusty-jam-place-1]: https://uriopass.itch.io/chick-the-dog
[rusty-jam-place-2]: https://ramirezmike2.itch.io/a-walk-around-the-block
[rusty-jam-place-3]: https://logicprojects.itch.io/fight-for-the-frontier

### RustConf Arcade Cabinet

![arcade cabinet](arcade_cabinet.jpg)

[Carlo][carlosupina] is building a custom arcade cabinet that will be at
RustConf 2022 in Portland. It is an opportunity for Rust game developers to
share their games with the broader community. If you are interested in getting
your game on the cabinet, read [this Twitter thread][arcade-cabinet-thread] and
fill out the [interest form][arcade-interest-form].
The arcade cabinet has been assembled and painted. He is currently in the process
of helping developers get their games playable on the machine. If you have a Bevy
game, you can use the [bevy-rust-arcade crate][bevy-rust-arcade] to quickly get
your game compatible. Deadline is the end of July!
You can find the latest update [here][arcade-cabinet-update-thread].

[carlosupina]: https://twitter.com/carlosupina
[arcade-cabinet-thread]: https://twitter.com/carlosupina/status/1523715837726961664
[arcade-cabinet-update-thread]: https://twitter.com/carlosupina/status/1539032439284240386
[arcade-interest-form]: https://forms.gle/onFm5fCygdbiArqJ7
[bevy-rust-arcade]: https://crates.io/crates/bevy-rust-arcade

## Game Updates

### [Hydrofoil Generation]

![hgs_screen](hgs_35.jpg)

[Hydrofoil Generation]
([Steam][hgs_steam], [Facebook][hgs_facebook], [Discord][hgs_discord])
is a realistic sailing/foiling inshore simulator in development for PC/Steam
that will put you in the driving seat of modern competitive sailing.
Hydrofoil Generation is based on a custom-made DirectX 11 based engine in
Rust.

June saw a lot of features added to the game, most notables being "New TV
Overlays", "Control Assists", "Ropes Rendering" plus several physics
improvements. Stefano Casillo, the developer went through all of them in
a recent [devlog][hgs_devlog].

Work in July will focus on the physics implementation of a new boat, a
foiling multihull coming with her own set of new challenges.

Hydrofoil Generation is targeting a Q4 2022 Early Access release on Steam.

[Hydrofoil Generation]: https://hydrofoil-generation.com/
[hgs_facebook]: https://facebook.com/HydrofoilGenerationSailing/
[hgs_discord]: https://discord.gg/DtKgt2duAy/
[hgs_steam]: https://store.steampowered.com/app/1448820/Hydrofoil_Generation/
[hgs_devlog]: https://youtu.be/AqwqyL9RqAk

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
- Menu-based UI with hotkeys.
- Auto-run to quickly follow corridors and cross open space.
- Save and load system.
- New Game Plus mode!

The source code is complemented by the
[RuggRogue Source Code Guide][ruggrogue-book],
a 23-chapter technical web book covering the ideas, algorithms, and structure of
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
announced in this newsletter.

[Rust Game Ports]: https://github.com/64kramsystem/rust-game-ports
[Saverio Miroddi/@64kramsystem]: https://twitter.com/64kramsystem

### vetovoima

{{ image_figure(
    alt="vetovoima gravity manipulation GIF"
    src="vetovoima.gif"
    caption="vetovoima gravity manipulation") }}

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
Coordinate your bots to gather resources, build new industries,
and expand your control of the server.

This month saw the start of the project, and a majority of the foundational
code was written. Next month we'll be adding more features, and aim to flesh out
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

Although its development is currently inactive, the developer
recently made [a video demo][Star Machine] of the early levels.

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

### [Veloren][veloren]

{{ image_figure(
    alt="Gliding above a forest"
    src="veloren.jpg"
    caption="A glider ride above the woods at night") }}

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In June, a memory issue was found within the graphics stack. Weather is also
getting closer to completion. There is a large write-up about it in one of [this
month's blog posts][veloren-176].

Lots of work has also gone into optimizing the Site2 system. Site2 is used to
create many different shapes around the world, such as houses in towns, or
citadels around the world. With these optimizations, it will be significantly
easier to render chunks, which will have a dramatic effect on their load time.
You can read more about these optimizations in [this blog post][veloren-178].

June's full weekly devlogs: "This Week In Veloren...":
[#175][veloren-175],
[#176][veloren-176],
[#177][veloren-177],
[#178][veloren-178].

[veloren]: https://veloren.net

[veloren-175]: https://veloren.net/devblog-175
[veloren-176]: https://veloren.net/devblog-176
[veloren-177]: https://veloren.net/devblog-177
[veloren-178]: https://veloren.net/devblog-178

### [Harvest Hero Origins - Summer Heat Update!][hho_steam_spring]

![hho summer banner](hho_summer.png)

[Gemdrop Games] have worked with their friends at [Octosoft]
to bring Shroomella to Harvest Hero Origins!

[Renaine] is an upcoming Action Platformer game about Aine,
an immortal Phoenix Knight.

Shroomella is a Mushroom Shroom witch aiding Aine on her quest!
In Harvest Hero Origins, she uses her variety of magical mushrooms
to fight off the endless Grooble hordes.

On top of that, they're adding:

- A new map
- Two new cards
- Two new enemies
- A revised story boss fight

The game is built on the [Emerald Game Engine].

[hho_steam_spring]: https://store.steampowered.com/app/1651500/Harvest_Hero_Origins/
[Octosoft]: https://twitter.com/RenaineGame
[Renaine]: https://store.steampowered.com/app/662340/Renaine/
[Gemdrop Games]: https://twitter.com/GemdropGames
[Emerald Game Engine]: https://github.com/Bombfuse/emerald

### [Chimera Rancher][chimera-rancher]

![Chimera Rancher cover art](chimera_rancher.png)

[Chimera Rancher][chimera-rancher] is a game where you must defend your ranch
from an angry hoard of villagers with the help of your chimera friends!

Submitted as part of [Rusty jam #2][rusty-jam] by [cdsupina][cdsupina],
[Nightly Side][nightlyside], [hedgein][hedgein], and [tigleym][tigleym]. This
game was developed using the [bevy] game engine.

[chimera-rancher]: https://nightlyside.itch.io/chimera-rancher
[cdsupina]: https://cdsupina.itch.io/
[tigleym]: https://tigleym.itch.io/
[hedgein]: https://hedgein.itch.io/
[nightlyside]: https://nightlyside.itch.io/

## Engine Updates

### [ggez] 0.8.0-rc0

![ggez logo](../005/ggez-logo-maroon-full.svg)

[ggez] by [@icefoxen], [@nobbele], and [@PSteinhaus] is a cross-platform game
framework for making 2D games with minimum friction. It aims to implement an
API based on the LÖVE game framework.

This version has finally moved ggez away from pre-ll gfx and into the world
of [wgpu]! This hopefully means fewer bugs, greater stability, and easier
maintainability at the cost of some low-performance devices such as the
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

### [Dims][dims-website]

[![Video preview: Recreating Rhodes But In Our Own Game Engine](dims-recreating-rhodes.jpg)][dims-video-1]

[Dims][dims-website] ([Twitter][dims-twitter], [Discord][dims-discord],
[YouTube][dims-youtube]) is a pre-alpha collaborative open-world
creation platform.
Users can hop in sessions and build a game together, allowing everyone
to bring out their inner game-maker.

June brought about several developments for the platform, including:

- Several development and testing streams, with the latest being
  [a recreation of Rhodes from Red Dead Redemption 2][dims-video-1] within
  the engine
- A new audio engine with advanced real-time synthesis and composition
  capabilities, including network synchronisation
- Improved terrain manipulation tools, including new brushes, biome presets,
  and more intuitive UI
  - Choose between "Nordic Mountains" ⛰ and "Colorado Deserts" 🏜
- Various improvements to the rendering engine, including decal and billboard
  rendering, FBX loading, macOS support, and more
- Initial work on a versatile new scripting system, with independent threads of
  execution for every object

Want to try Dims out for yourself? Come join the [Discord][dims-discord] to be
notified of future public tests, see the latest features before everyone else,
and to talk to the devs personally.

[dims-website]: https://dims.co
[dims-twitter]: https://twitter.com/DimsWorlds
[dims-discord]: https://discord.gg/Z5CAVmNE57
[dims-youtube]: https://youtube.com/channel/UCR5gOwS7uSl0a0dl7MLQoqg
[dims-video-1]: https://www.youtube.com/watch?v=piEAGSFx-QU

### [miniquad]

![miniquad fileopen](fileopen.gif)

[miniquad] is a safe and cross-platform rendering library
focused on portability and low-end platform support.

In versions prior to 0.3, it was virtually impossible to integrate, for
example, a big in-app payments or advertisement SDK into a Miniquad Android
game. 0.3 has solved this, giving the possibility to interop with any Java code.
The developer has posted [a write-up of this functionality][miniquad-java] on
the macroquad site.

[miniquad]: https://github.com/not-fl3/miniquad/
[miniquad-java]: https://macroquad.rs/articles/java/

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

### [Noumenal][noumenal-website]

![Screen recording showing the construction of a heart shape using the Noumenal app.](noumenal.gif)

[Noumenal][noumenal-website] ([App Store][noumenal-appstore],
[Discord][noumenal-discord], [Twitter][noumenal-twitter])
by [@HackerFoo][hackerfoo-website] is an elegant 3D solid modeling app for iOS.

After a final stretch of performance improvements, bug fixes, and even some new
features, Noumenal was released and is available on Apple's App Store!

_Discussion: [/r/rust](https://reddit.com/r/rust/comments/vj40qq/noumenal_my_3d_modeling_app_for_ios)_

[noumenal-website]: https://noumenal.app
[noumenal-discord]: https://discord.gg/PFeZQE48gG
[noumenal-twitter]: https://twitter.com/noumenal_app
[noumenal-appstore]: https://apps.apple.com/us/app/noumenal/id1584884105
[hackerfoo-website]: https://hackerfoo.com

### [Graphite][graphite-website]

![Graphite](graphite.png)

Graphite ([website][graphite-website], [GitHub][graphite-repo],
[Discord][graphite-discord], [Twitter][graphite-twitter]) is a free,
in-development raster and vector 2D graphics editor. It will be powered by a
node graph compositing engine that supercharges your layer stack, providing a
completely non-destructive editing experience.

June's [sprint 16][graphite-sprint] focused mainly on bug fixes and big
under-the-hood changes:

- Ahead of the curve: A long-awaited refactor replaces the underlying
Bézier curve data structure in alignment with requirements for Pen tool
improvements and the upcoming node system.
- Sending mixed messages: The internal messaging system was upgraded to
sequence the message processing in a more predictable stack-based order. A new
subscription-based event broadcaster was integrated as well.
- Back on the menu: The application menu bar content definitions were moved
from the JS frontend to a permanent home in the Rust backend.

Open the [Graphite editor][graphite-live-demo] in your browser to give it a try
and share your creations with #MadeWithGraphite on Twitter.

[graphite-website]: https://graphite.rs
[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://discord.graphite.rs
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-sprint]: https://github.com/GraphiteEditor/Graphite/milestone/16
[graphite-live-demo]: https://editor.graphite.rs

### [quad-gif]

![quad-gif screenshot](quad-gif.png)

[quad-gif] by [@ollej] is a tiny library that can be used in a Macroquad game
to show a looping GIF animation. It also includes a small example binary that
displays a GIF in the middle of a window. The library can also be used as a
simple way to make an animation from a list of textures.

[quad-gif]: https://github.com/ollej/quad-gif
[@ollej]: https://twitter.com/ollej

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
much smaller and faster than conventional text rasterizers but cannot support
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
library, when support was added for `f64`, `i32`, and `u32` types back in glam
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

### [kajiya]

![A rendering of a fancy loft apartment](kajiya.jpg)

[kajiya] by [@h3r2tic] is an experimental real-time global illumination
renderer.

In June, a long-standing branch landed, bringing with it a complete
overhaul of indirect lighting. The new implementation uses spatiotemporal
reservoir resampling (ReSTIR) and a novel irradiance cache, bringing forth
larger scenes, quicker response to lighting changes, and less noise.

A [detailed overview][kajiya-gi-overview] of the new global illumination
techniques is available, complete with animated diagrams!

June has also seen the addition of texture compression, automatic exposure,
a new display rendering transform, and a simplification of the interface.
The viewer app now supports drag-and-drop of scene files, glTF models,
and HDRI backdrops.

_Discussions:
[twitter (0.2 release)](https://twitter.com/h3r2tic/status/1532829918194806784),
[twitter (texture compression)](https://twitter.com/h3r2tic/status/1537212390982524929)._

[kajiya]: https://github.com/EmbarkStudios/kajiya/
[kajiya-gi-overview]: https://github.com/EmbarkStudios/kajiya/blob/main/docs/gi-overview.md
[@h3r2tic]: https://github.com/h3r2tic

### [Notan v0.5][Notan]

![Notan texture to file](notan.gif)

[Notan] is a simple and portable layer designed to create your own multimedia
apps on top of it without worrying about platform-specific code.

The main goal is to provide a set of APIs and tools that can be used to create
your project in an ergonomic manner without enforcing any structure or pattern,
always trying to stay out of your way. The idea is that you can use it as a
foundation layer or backend for your next app, game engine, or game.

The latest version [v0.5] fixes multiple bugs, improves [EGUI] support and adds
a new feature to export texture [to png] easily.

[Notan]: https://github.com/Nazariglez/notan
[to png]: https://nazariglez.github.io/notan-web/examples/texture_to_file.html
[v0.5]: https://github.com/Nazariglez/notan/releases/tag/v0.5.0
[EGUI]: https://github.com/emilk/egui

## Other News

- Other game updates:
  - [Fires of Eschaton] is a PvP focused turn-based fantasy game, currently under
    development.
  - [Idu] is testing out some new water physics.
  - [Combine and Conquer] has a new devlog about its sound support.
  - [Fish Folly] is a new Fyrox showcase game, inspired by Fall Guys.
  - [Punchy] is a beat-em-up spin off of [Fish Fight], built with Bevy.
  - [Jungle Chess] is a WASM implementation of a Chinese board game.
  - [Croquet] is working on synchronized physics, using Rapier.
  - [Bevy City] is a voxel city generator, built with Bevy.
  - [Measure Once] is a game about cutting wood into the right shapes.
  - [Galactic Mess] has added new outfits and weapons.
- Other learning material updates:
  - [Rustacean Station] interviewed the developer of egui.
  - [Rusteroids] is a video tutorial series, building an asteroids
    clone with Rust and SDL2.
  - [NVIDIA GPU Profiling with Rust] is an introduction on how to use
    NVIDIA's NSight tools with Rust.
  - [Practical Programming with Dr. Xu] has continued their WGPU
    tutorial series.
  - [Anthropic Studios] (developers of Way of Rhea) posted a dev interview video.
  - [Lyrapuff] posted a video showing how to render a triangle with
    Vulkan and Rust.
- Other engine updates:
  - [pufferfish] is a new, opinionated 2D game framework.
- Other tooling updates:
  - [GBemulator] is a Game Boy emulator written from scratch.
- Other library updates:
  - [bevy_mod_picking] released version 0.7 of their Bevy mouse
    picking plugin.
  - [bevy_mod_outline] is a Bevy plugin for drawing outlines around
    meshes.
  - [Bevy YOLECK] is a crate that allows Bevy games to be their own
    level editor.
  - [bevy_mod_raycast] released version 0.5 of their raycasting plugin.
  - [taffy] is a cross-platform UI layout library.

[Fires of Eschaton]: https://twitter.com/FiresOfEschaton/status/1534119771045826567
[Idu]: https://twitter.com/epcc10/status/1532889644165120001
[Combine and Conquer]: https://buckmartin.de/combine-and-conquer/2022-06-16-sound.html
[Fish Folly]: https://www.reddit.com/r/rust_gamedev/comments/vi5jok/media_fish_folly_a_fyrox_showcase_game_inspired/
[Punchy]: https://twitter.com/spicylobsterfam/status/1540105977810255872
[Fish Fight]: https://fishfight.org/
[Jungle Chess]: https://www.reddit.com/r/rust_gamedev/comments/v3btkk/browser_jungle_chess_with_rust_wasm/
[Croquet]: https://twitter.com/gocroquet/status/1531336194725797889
[Bevy City]: https://mungbungo.itch.io/bevy-city
[Measure Once]: https://robtfm.github.io/measure_once/
[Galactic Mess]: https://www.youtube.com/watch?v=DO8vwehkr38
[Rustacean Station]: https://rustacean-station.org/episode/emil-ernerfeldt/
[Rusteroids]: https://www.youtube.com/playlist?list=PLFOS-Gn3aXROnSfl26esPExssd-rQw6jD
[NVIDIA GPU Profiling with Rust]: https://simbleau.github.io/blog/gpu-profiling-with-rust/
[Practical Programming with Dr. Xu]: https://www.reddit.com/r/rust/comments/vmpjcr/rust_wgpu_graphics_programming_tutorial_youtube/
[Anthropic Studios]: https://www.youtube.com/watch?v=H0sIsrLWojs
[Lyrapuff]: https://www.youtube.com/watch?v=_PNiRGIAfY4
[pufferfish]: https://github.com/pufferfish-rs/pufferfish
[GBemulator]: https://github.com/p4ddy1/gbemulator
[bevy_mod_picking]: https://github.com/aevyrie/bevy_mod_picking/releases/tag/v0.7.0
[bevy_mod_outline]: https://github.com/komadori/bevy_mod_outline
[Bevy YOLECK]: https://github.com/idanarye/bevy-yoleck
[bevy_mod_raycast]: https://github.com/aevyrie/bevy_mod_raycast/releases/tag/v0.5
[taffy]: https://github.com/DioxusLabs/taffy

## Discussions

- [/r/rust_gamedev](https://reddit.com/r/rust_gamedev/):
  - ["Shopping list"][r-gamedev-shopping-list] (a list of things that
    are missing from the ecosystem)
  - ["Hands-on Rust: Further reading"][r-gamedev-further-reading]
  - ["How can I start developing a 3D game engine?"][r-gamedev-3d]
  - ["Bevy or Fyrox for 3D Game Development?"][r-gamedev-bevy-fyrox]

[r-gamedev-shopping-list]: https://www.reddit.com/r/rust_gamedev/comments/v8tx37/shopping_list/
[r-gamedev-further-reading]: https://www.reddit.com/r/rust_gamedev/comments/v4q4pr/handson_rust_further_reading
[r-gamedev-3d]: https://reddit.com/r/rust_gamedev/comments/v3z4i1/how_can_i_start_developing_a_3d_game_engine
[r-gamedev-bevy-fyrox]: https://reddit.com/r/rust_gamedev/comments/v7svhg/bevy_or_fyrox_for_3d_game_dev

## Requests for Contribution

- ['Are We Game Yet?' wants to know about projects/games/resources that
  aren't listed yet][awgy].
- [Graphite is looking for contributors][graphite-contribute] to help build the
  new node graph and 2D rendering systems.
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

[awgy]: https://github.com/rust-gamedev/arewegameyet#contribute
[graphite-contribute]: https://graphite.rs/contribute
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

## Jobs

- [DIMS](https://dims.co/jobs)
  (Stockholm/Remote): Various roles, open applications accepted
- [Embark Studios](https://careers.embark-studios.com/jobs)
  (Stockholm/Hybrid Remote): Various roles, open applications accepted
- [Mutate](https://rustjobs.dev/featured-jobs/Mutate-Rust-Backend-Software-Engineer-7kfTlQFSagzwHhugw1p0)
  (Remote): Rust Backend Software Engineer

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

**Discuss this post on**:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/vtrelw/this_month_in_rust_gamedev_35_june_2022/),
[Twitter](https://twitter.com/rust_gamedev/status/1545135032334950403),
[Discord](https://discord.gg/yNtPTb2).

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
