+++
title = "This Month in Rust GameDev #37 - August 2022"
transparent = true
date = 2022-09-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 37th issue of the Rust GameDev Workgroup's
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
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Other News](#other-news)
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

## Announcements

### [Bevy Jam #2][bevy-jam-results]

![Bevy Jam 2](bevy_jam_2.png)

Voting on [Bevy Jam #2][bevy-jam] just finished! It was a
10 day event, where the goal was to make a game in
[Bevy Engine][bevy-engine], the free and open-source game engine
built in Rust. The theme was 'Combine'.

The [full results can be found on itch.io][bevy-jam-results]. There were 404 participants,
85 submissions, and 2,674 ratings, making it the biggest Bevy Jam yet!
(And maybe the biggest Rust game jam ever?)

Here are the top five games:

[bevy-jam]: https://itch.io/jam/bevy-jam-2/
[bevy-jam-results]: https://itch.io/jam/bevy-jam-2/results
[bevy-engine]: https://bevyengine.org/

#### 🥇 First Place: [USA Football League Scouting Combine XLV][usa-football]

![USA Football League Scouting Combine XLV logo](usa_football.png)

[USA Football League Scouting Combine XLV][usa-football] is a game where you take
part in the historic unveiling of the "Combine Combine" event at this year's
USA Football League Scouting Combine!

USAFLSCXLV is singleplayer action game where you attempt to score as many touchdowns
as you can while avoiding professional football players, navigating a corn maze
and also avoiding a combine machine harvesting the maze.

The source for the game is available on [GitHub][usa-football-source].

[usa-football]: https://ramirezmike2.itch.io/usa-football-league-scouting-combine-xlv
[usa-football-source]: https://github.com/ramirezmike/bevy_jam_02_entry

#### 🥈 Second Place: [Loot Goblin][loot-goblin]

![Loot Goblin](loot_goblin.png)

[Loot Goblin][loot-goblin] is a game where you craft your way to victory in a
unique adventurer's backpack simulation!

We're going dungeon crawling, but all the hard work is done for you by the valiant
Sir Hoardalot, and you, as his resourcesful Loot Goblin are going to keep his
backpack in order! Craft potions and weapons to strengthen the hero, and help
kill the evil Ogre Necromancer.

The source code for the game is available [on Github][loot-goblin-source].

[loot-goblin]: https://park-dev.itch.io/loot-goblin
[loot-goblin-source]: https://github.com/vanGeck/bevy-jam-2

#### 🥉 Third Place: [Shanty Quest: Treble at Sea][shanty-quest]

![Shanty Quest Screenshot](shanty_quest.png)

In [Shanty Quest: Treble at Sea][shanty-quest], you combine the magical instruments
and become the Pirate King!

The source code is available on [GitHub][shanty-quest-source].

[shanty-quest]: https://jabuwu.itch.io/shanty-quest
[shanty-quest-source]: https://github.com/jabuwu/shanty-quest

#### Fourth Place: [Combobox][combobox]

![Combobox Screenshot](combo_box.png)

[Combobox][combobox] is a game where you navigate through space with a tiny robot
combining boxes with unique features!

The source code is available on [GitHub][combobox-source].

[combobox]: https://combobox-game.itch.io/combobox
[combobox-source]: https://github.com/ComboboxGame/Combobox

#### Fifth Place: [Mole Rancher][mole-rancher]

![Mole Rancher Screenshot](mole_rancher.png)

[Mole Rancher][mole-rancher] is a game where you made it through university, got
your PhD,and now you have been selected to work in an top secret experimental
facility which promises a way to generate infinite energy through the combination
of various strange particles.

Use power to generate curious molecules, check their properties in your logbook,
monitor their progress through your trusty E-merge device, and try not to let the
reactor overheat!

And don't worry about those armed guards on the way in, as long as you meet your
quota then you'll have no problems...

The source for this game is available on [GitHub][mole-rancher-source].

[mole-rancher]: https://infinitefall.itch.io/mole-rancher
[mole-rancher-source]: https://github.com/V4L3NC3/mole_rancher

### Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The 19th Rust Gamedev Meetup took place in August. You can watch the recording of
the meetup [here on Youtube][gamedev-meetup-video]. Here was the schedule from
the meetup:

- RustConf Arcade Cabinet - [@carlosupina]
- Blue Engine - [@aryanpur_elham]
- Veloren - [@VelorenProject]
- Graphite - [@GraphiteEditor]
- All is Cubes - [@switchborg]

The meetups take place on the second Saturday every month via the [Rust Gamedev
Discord server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch].

[gamedev-meetup-video]: https://youtu.be/s9kf9HVUKYE
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev
[@carlosupina]: https://twitter.com/carlosupina
[@aryanpur_elham]: https://twitter.com/aryanpur_elham
[@VelorenProject]: https://twitter.com/VelorenProject
[@GraphiteEditor]: https://twitter.com/GraphiteEditor
[@switchborg]: https://twitter.com/switchborg

## Game Updates

### [Catacomb 2-64k][catacomb-2-repo]

[![Catacomb 2 image](catacomb_2.png)][catacomb-2-repo]

[Catacomb 2-64k][catacomb-2-repo] is a (completed) experimental
project in porting a moderately complex project, first from C to unsafe Rust,
then to (fully) safe Rust.

The objective of the project has been to study the tooling, transformations
and the overall process required perfom real-world, exact, ports; an article
will follow in September on [64kramsystem's blog][64ramsystem-blog].

The port uses the [Rust-SDL2 bindings][rust-sdl2-bindings]. More exact ports
of id Software games are expected in the future, with the introduction of a
refactoring tool based on the [Language Server Protocol][language-server-protocol]
/[Rust Analyzer][rust-analyzer].

[catacomb-2-repo]: https://github.com/64kramsystem/catacomb_ii-64k
[64ramsystem-blog]: https://saveriomiroddi.github.io
[rust-sdl2-bindings]: https://github.com/Rust-SDL2/rust-sdl2
[language-server-protocol]: https://microsoft.github.io/language-server-protocol
[rust-analyzer]: https://github.com/rust-lang/rust-analyzer

### [CyberGate][cybergate-yt]

![browser udp technology](cybergate.jpg)
_The new browser version works exactly like the native version_

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]) by CyberSoul
is a new multiplayer project that aims at procedurally generating distinct
universes and gameplay experiences. CyberGate is the name of the main world
where universes can be created and accessed by quantum portals.

Recent updates:

- Ported to browser (wgpu with webgl backend)
- Unreliable network protocol achieved with WebRTC
- Dynamically spawn and synchronize ECS components using macros
- Massively improved the events system and actions system
- Refactored over 50% of the project
- Small features such as grabbing objects and dash forward
- Fixed 3 major bugs that slowed down the server

[Join the Discord server][cybergate-dis] to participate in upcoming Phase 5.0!

_Discussions: [/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/x60n9y/cybergate_45_progress_browser_udp_client_with/)_

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

### [Rusty Aquarium]

![Rusty Aquarium visualization](rustyaquarium.gif)
_Visualize data as a fish tank with Rusty Aquarium_

[Rusty Aquarium] by [@ollej] is a data visualization tool as a virtual fish
tank written in Rust and Macroquad. Different data points control how many
fishes are shown, how they move, how fast they swim, and which size they are.
It can be used to monitor data in a visual way, while those uninitiated only
see a serene fish tank.

Since Macroquad is cross-platform, Rusty Aquarium is available for Windows,
Mac, Linux as well as for browsers using WebAssembly.

The aquarium can be controlled in various different ways:

- System monitoring binary to show CPU usage, disk usage and processes.
- Integrate with Google Sheets to control fishes.
- Back it with an URL that generates a JSON file.

This month, a blog post with the [story behind Rusty Aquarium][RustyAquariumStory]
was published on the [Agical] blog. The code was restructured and the packaged
files now contain binaries for input data generation.

[Rusty Aquarium]: https://github.com/ollej/rusty-aquarium
[@ollej]: https://twitter.com/ollej
[RustyAquariumStory]: https://blog.agical.se/en/posts/the-story-behind-rusty-aquarium/
[Agical]: https://blog.agical.se/en/

### [Infinite Bunner]

![Infinite Bunner](infinitebunner.gif)
_Port of the Infinite Bunner game to Rust and Macroquad_

[Infinite Bunner] is a game from the book [Code the Classics vol 1] that has
been ported by [@ollej] to Rust and Macroquad from Python and PyGame Zero.
It is a modern version of the classic arcade game Frogger with improved
graphics and sound.

The game has been sent in to the [Rust Game Ports][rust-game-ports] project as
an educational example. It shows how to make a 2D game in Macroquad with
graphics and sound.

[Code the Classics vol 1] is a book from Wireframe Magazine that tells the
history of five classic video games. It also includes code listings of modern
versions of the games written in Python with the PyGame Zero framework.

[Infinite Bunner]: https://github.com/ollej/rust-bunner-macroquad
[@ollej]: https://twitter.com/ollej
[rust-game-ports]: https://github.com/rust-gamedev/rust-game-ports
[Code the Classics vol 1]: https://wireframe.raspberrypi.org/books/code-the-classics1

### Tiny Building Game

![Country_slice_gif](country_slice.gif)

The untitled "Tiny Building Game" is a stress-free feel-good game focused on just
building something pretty. It is being made by [@anastasiaopara] and
[@h3r2tic], who has recently joined the project!

This month, there was a large visual update, which added [trees and flowers][twitter-thread-1],
as well as [fences and gates][twitter-thread-2].

Right now, the team is actively working on setting up a Steam page. Stay
tuned by following the [newsletter][country-slice-newsletter]!

[country-slice-newsletter]: https://dashboard.mailerlite.com/forms/10395/51067704544593017/share
[twitter-thread-1]: https://twitter.com/anastasiaopara/status/1560673892574035969
[twitter-thread-2]: https://twitter.com/anastasiaopara/status/1565629377823395841
[@anastasiaopara]: https://twitter.com/anastasiaopara
[@h3r2tic]: https://twitter.com/h3r2tic

### [Math It]

![Promotional image of the Math It game](math_it.png)
_Promotional image of the Math It game_

[Math It] was made with [Bevy] for the [Bevy Jam 2].

The goal of the game is to get as close as possible
to the target number, and compete with others on a global leaderboard.

[Math It]: https://vrixyz.itch.io/math-it
[Bevy Jam 2]: https://itch.io/jam/bevy-jam-2
[Bevy]: https://bevyengine.org/

### [Veloren][veloren]

![A cave with lava](veloren.jpg)
_A barrier of lava_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In August, long-awaited work on a new internationalization system with Fluent
was merged. The real-time simulation v2 system is now in a place, which has
allowed for blacksmiths to now sell swords and armour with only a few additional
lines of code. Work was done to implement a spectator mode in game, as well as
fix a bug about respawning while having a status effect on you persisting, such
as being on fire from swimming in lava.

August's full weekly devlogs: "This Week In Veloren...":
[#183][veloren-183],
[#184][veloren-184],
[#185][veloren-185],
[#186][veloren-186],
[#187][veloren-187].

[veloren]: https://veloren.net
[veloren-183]: https://veloren.net/devblog-183
[veloren-184]: https://veloren.net/devblog-184
[veloren-185]: https://veloren.net/devblog-185
[veloren-186]: https://veloren.net/devblog-186
[veloren-187]: https://veloren.net/devblog-187

## Engine Updates

### [miniquad]

[![diff](android_playground.gif)][quad-android-playground]

[miniquad] is a pure Rust, cross-platform graphics library.

This month was about polishing miniquad-android experience.
To make it easier for regression testing, miniquad got
[the android playground][quad-android-playground].

The playground demonstrates all known android shenanigans in
one quad-based app.

It includes:

- onscreen keyboard
- java interop (with file dialog as an example)
- dealing with big java services (with bluetooth as an example)
- accessing permissions, both runtime and compile time

[miniquad]: https://github.com/not-fl3/miniquad/
[quad-android-playground]: https://github.com/not-fl3/quad-android-playground

### [Runty8][runty8-repo]

[![Runty 8 logo][runty8-logo]][runty8-repo]

[Runty8][runty8-repo] is an experimental port of the [Pico8][pico8-site]
fantasy console that supports writing games in Rust.

Its current goals are to follow Pico8's APIs as closely as possible,
to allow easily porting existing games to Rust,
as well as developing new games in a familiar development environment.

The project is in very early stages, and is currently looking for contributors.
If you're interested, feel free to read their [contributing guide][runty8-contributing-guide]
or browse through the [open issues][runty8-open-issues].

[runty8-repo]: https://github.com/jjant/runty8
[runty8-contributing-guide]: https://github.com/jjant/runty8/blob/master/CONTRIBUTING.md
[runty8-open-issues]: https://github.com/jjant/runty8/issues
[pico8-site]: https://www.lexaloffle.com/pico-8.php
[runty8-logo]: https://user-images.githubusercontent.com/15112080/188467323-037617cf-7dbc-4988-bbd7-fbafd1524455.png

### [Gamercade]

![Gamercade preview](gamercade.gif)
_Preview of the Audio Editor in Action_

[Gamercade] ([Discord][Gamercade-Discord], [Github][Gamercade-Github])
by @RobDavenport is a WASM-powered fantasy console focused
on building multiplayer neo-retro games.

Gamercade is preparing for their first alpha release! This includes all the
core features needed for a fantasy console and game library: input, graphics,
and audio. It also has networked multiplayer, and an editor.

They implemented the in-game sound engine from scratch. They also improved the
editor to allow creation of instruments and tracks. It synthesizes sounds at
runtime, and produces something like an 80s synth, a 90s SoundBlaster, and a
touch of SNES. Songs and Sfx are built using a tracker interface.
[This video][Gamercade-Video] shows a small sample of what it is capable of.

"Wavetables" are great for classic sounds like 8-bit chiptunes or even more
complicated sounds. "FM Synth" is a 4-op FM synthesizer. Masters of this
technique can produce a huge variety of instruments, effects, and other
otherwordly things. "Sampler" rounds out the rest of the system, providing
pre-recorded sample playback. Samples can be pitched and played as the desired
note.

Come hang out and chat on [Discord][Gamercade-Discord], where the developers
interact with members and post updates daily. The project is
[open source][Gamercade-Github] and looking for contributors, suggestions,
as well as awesome game demos.

[Gamercade]: https://gamercade.io
[Gamercade-Discord]: https://discord.gg/Qafv2Fpt5j
[Gamercade-Github]: https://github.com/gamercade-io/gamercade_console
[Gamercade-Video]: https://www.youtube.com/watch?v=cRsOvefap_U

## Learning Material Updates

## Tooling Updates

### [Graphite][graphite-website]

![Graphite logo](graphite.png)

Graphite ([website][graphite-website], [GitHub][graphite-repo],
[Discord][graphite-discord], [Twitter][graphite-twitter]) is a free,
in-development raster and vector 2D graphics editor that will be based around a
Rust-powered node graph compositing engine.

August's [sprint][graphite-sprint-18] focused on Bézier shape editing and layer
transformation improvements.

- Ahead of the curve: Bézier shapes gain support for curve extension and shape
  closing using the Pen tool and inserting points along curves with the Path
  tool.
- Front and center: Layer origins may be set to control the center of rotation
  and scale using the Transform tool.

Meanwhile, design and architecture work on the Graphene node-based programming
language has been well underway. Graphene is the data graph engine that will
replace Graphite's tree-based layer system in the next few sprints and evolve
into a raster-and-vector render engine over time.

Open the [Graphite editor][graphite-live-demo] in your browser to give it a try
and share your creations with #MadeWithGraphite on Twitter.

[graphite-website]: https://graphite.rs
[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://discord.graphite.rs
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-sprint-18]: https://github.com/GraphiteEditor/Graphite/milestone/18
[graphite-live-demo]: https://editor.graphite.rs

## Library Updates

### [hot-lib-reloader]

![hot-lib-reloader thumbnail](hot-lib-reloader.png)

[hot-lib-reloader] is a development tool that allows you to reload functions
of a running Rust program. This allows to do "live programming" where you
modify code and immediately see the effects in your running program. Gone
are the days of edit-compile-restart loops (to some degree).

hot-lib-reloader works by reloading parts of your application that are defined
as dynamic libraries. This approach works on Linux, MacOS, and Windows but has
some constraints - see the [documentation] for details. There are several
[examples], showing how to create hot-reload setups with various frameworks
and libraries, e.g. bevy, egui, and [nannou].

[hot-lib-reloader]: https://github.com/rksm/hot-lib-reloader-rs
[documentation]: https://docs.rs/hot-lib-reloader/latest/hot_lib_reloader/
[examples]: https://github.com/rksm/hot-lib-reloader-rs/tree/master/examples
[nannou]: https://youtu.be/hyyeLtJ7SQk

### [bevy_kira_audio]

![Configuring a sound when playing it](bevy_kira_audio_settings.png)
_Configuring a sound when playing it_

[bevy_kira_audio] by [@nikl_me] is an alternative audio plugin for the [Bevy]
game engine. It uses [Kira] as its audio library and aims to integrate
well with Bevy's ECS.

Last month saw the release of versions [0.11.0] and [0.12.0]. With the
latest version, sound settings like volume, playback-rate, or panning can
be adjusted directly when playing audio. The screenshot above shows the new API
with multiple example settings. The plugin now also offers control
over single sound instances via asset handles and will apply configurable
tweens to most operations.

[bevy_kira_audio]: https://github.com/NiklasEi/bevy_kira_audio/
[Kira]: https://github.com/tesselode/kira
[@nikl_me]: https://twitter.com/nikl_me
[Bevy]: https://bevyengine.org/
[0.11.0]: https://github.com/NiklasEi/bevy_kira_audio/blob/main/CHANGELOG.md#v0110
[0.12.0]: https://github.com/NiklasEi/bevy_kira_audio/blob/main/CHANGELOG.md#v0120

### [bevy_asset_loader]

![Configuration of a loading state](loading_state.png)
_Configuration of a loading state_

[bevy_asset_loader] by [@nikl_me] is a plugin for [Bevy] apps aiming to
improve a common pattern for asset-loading. The boilerplate required to set up
a loading-state is reduced to a minimum. The plugin is based on storing
asset handles in resources, which makes it easy to use them in any system
across your app.

The screenshot above shows how a loading state can be added to the Bevy app
in the latest version of the plugin. The update also fixed issues with
configuring the same loading state in different places of your code and enabled
users to define their own dynamic assets.

[@nikl_me]: https://twitter.com/nikl_me
[bevy_asset_loader]: https://github.com/NiklasEi/bevy_asset_loader/
[Bevy]: https://bevyengine.org/

### [Notan v0.6][Notan]

![notan examples](notan.gif)

[Notan] is a simple and portable layer designed to create your own
apps on top of it without worrying about platform-specific code.

It provides a set of APIs and tools that can be used to create your
project in an ergonomic manner without enforcing any structure or pattern,
sharing the same codebase across multiple platforms.

The main focus for version [v0.6] was improving how uniforms
are set using the layout std140 for the user with a macro,
among internal fixes and improvements.

[Notan]: https://github.com/Nazariglez/notan
[v0.6]: https://github.com/Nazariglez/notan/releases/tag/v0.6.0

### [Shipyard]

[Shipyard] is an Entity Component System focused on usability and speed.

This monthh, 0.6 was released with big improvements to workloads and
tracking.

The new [visualizer][shipyard-visualizer] is a first step towards visual
inspection and interaction with the library.
For now it can only show which components are used by which systems
and vice-versa.

Learn more about this release in the [release post][shipyard-release-post].

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/wi71lu/shipyard_06_release/)
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/wi72vc/shipyard_06_release/)_

[Shipyard]: https://github.com/leudz/shipyard
[shipyard-visualizer]: https://leudz.github.io/shipyard/visualizer
[shipyard-release-post]: https://users.rust-lang.org/t/shipyard-0-6-release/79504

### [Edict]

[Edict] by [@zakarumych] is powerful Rust ECS crate that expands traditional ECS
feature set. The new version 0.2 is getting [ready for release]. This ECS is based
on archetypes for fast cache-friendly iteration. And there are quite a few novel
features:

- [Edict] allows to express relations between entities using [`Relation`] trait.
Relations are linked to a pair of entities - origin and target. This opens a
wide range of opportunities to create entity graphs with custom logic.
- Custom hooks for components and relations to trigger actions when component is
dropped/replaced, or when relation target is dropped.
- Optional [`Component`] trait. [Edict] allows using component types that do not
implement [`Component`] with some restrictions.
- Change tracking with flexible queries for modified components suitable for
complex use cases. E.g. incremental saves can fetch all components modified
since previous save.
- Type-agnostic component borrowing. Component type may define list of types
that can be borrowed from it. Important use case is borrowing [`dyn Traits`].
- [Edict] supports parallel execution. Built-in scheduler uses systems that
implement [`System`] trait. Functions can be safely transformed into systems
similarly to [`bevy_ecs`].

[Edict]: https://github.com/zakarumych/edict
[@zakarumych]: https://github.com/zakarumych
[ready for release]: https://docs.rs/edict/0.2.0-rc.3/edict/
[`Relation`]: https://docs.rs/edict/0.2.0-rc.3/edict/relation/trait.Relation.html
[`Component`]: https://docs.rs/edict/0.2.0-rc.3/edict/component/trait.Component.html
[`dyn Traits`]: https://doc.rust-lang.org/book/ch17-02-trait-objects.html
[`System`]: https://docs.rs/edict/0.2.0-rc.3/edict/system/trait.System.html
[`bevy_ecs`]: https://crates.io/crates/bevy_ecs

### [grid_pathfinding]

[grid_pathfinding] is a new pathfinding crate aimed at providing a fast,
out-of-the-box system for pathfinding on various types of grids. While the
current 0.1.1 release is not very configurable yet, the idea is to make the
crate more malleable working towards a 0.2.0 release so that it will support
a range of grids (4-connected, 8-connected, weighted, etc.) as well as
heuristics. Specifically, [grid_pathfinding] 0.1 assumes a uniform-cost
8-grid with a Chebyshev cost metric and heuristic. More long-term goals are
support for multi-tile and multi-agent pathfinding variants.

The current implementation is based on [Jump Point Search] with
[improved pruning rules]. On top of this, [connected components] are used to
avoid flood-filling behaviour if no path exists - see the
[documentation][gp-docs] and [examples][gp-examples] for information on
how to manage these components. Especially when simulating many agents in
real-time, using components can make a big difference.

[grid_pathfinding]: https://github.com/tbvanderwoude/grid_pathfinding
[gp-docs]: https://docs.rs/grid_pathfinding/0.1.1/grid_pathfinding/
[gp-examples]: https://github.com/tbvanderwoude/grid_pathfinding/tree/main/examples
[Jump Point Search]: https://en.wikipedia.org/wiki/Jump_point_search
[connected components]: https://en.wikipedia.org/wiki/Component_(graph_theory)
[improved pruning rules]: https://www.researchgate.net/publication/287338108_Improving_jump_point_search

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
