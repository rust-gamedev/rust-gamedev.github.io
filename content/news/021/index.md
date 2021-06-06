+++
title = "This Month in Rust GameDev #21 - April 2021"
date = 2021-05-09
transparent = true
+++

Welcome to the 21st issue of the Rust GameDev Workgroup's
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
- [gamedev.rs](#gamedev-rs)
- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Engine Updates](#engine-updates)
- [Library & Tooling Updates](#library-tooling-updates)
- [Requests for Contribution](#requests-for-contribution)

<!--
Ideal section structure is:

```
### [Title]

![image/GIF description](image link)
_Optional image caption_

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

The fourth Rust Gamedev Meetup happened in April. It was an opportunity for
developers to show off what Rust projects they've been working on in the game
ecosystem. This month, we heard a talk about threading in WASM, profiling,
getting a game ready for release, and much more. You can watch the recording of
the meetup [here on Youtube][gamedev-meetup-video].

The meetups take place on the second Saturday every month via the [Rust
Gamedev Discord server][rust-gamedev-discord], and can also be [streamed on
Twitch][rust-gamedev-twitch]. If you would like to show off what you've been
working on in a future meetup, fill out [this form][gamedev-meetup-form].

[gamedev-meetup-form]: https://forms.gle/BS1zCyZaiUFSUHxe6
[gamedev-meetup-video]: https://www.youtube.com/watch?v=XE0lH0tlbBs
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedevmeetup

## gamedev.rs

As you may have noticed, [rust-gamedev.github.io](https://rust-gamedev.github.io)
(this site) got an awesome custom domain: [gamedev.rs](https://gamedev.rs)!
We've been looking for a good & available domain a [long time][gamedev-rs-233].
Huge thanks to Juratech Systems for donating their domain
to the Rust GameDev WG! ❤️

We've also [switched to a more compact URL scheme][gamedev-rs-586]
with separate categories for [the newsletter](https://gamedev.rs/news)
and [other posts](https://gamedev.rs/blog).

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/mq6mmj/rustgamedevgithubio_is_now_gamedevrs),
[Twitter](https://twitter.com/ozkriff/status/1382016040662614017)_

[gamedev-rs-233]: https://github.com/rust-gamedev/rust-gamedev.github.io/issues/233
[gamedev-rs-586]: https://github.com/rust-gamedev/rust-gamedev.github.io/pull/586

## Game Updates

### [LD48: Micronaut][micronaut-itch]

[![GIF showing Micronaut's primary level recursion mechanic](micronaut.gif)][micronaut-itch]
_Micronaut features a deep recursive level layout_

Micronaut is a small puzzle platformer by [@Healthire] made in 48 hours for the
Ludum Dare 48 Compo. Run and jump your way through a recursive level layout to
reach the end. Cross platform for native and web, with source available on
[GitHub][micronaut-github].

_Discussions: [Twitter][micronaut-twitter], [ldjam.com][micronaut-ldjam]_

[@Healthire]: https://twitter.com/healthire
[micronaut-github]: https://github.com/Healthire/ld48
[micronaut-itch]: https://healthire.itch.io/micronaut
[micronaut-twitter]: https://twitter.com/healthire/status/1386468257125830662
[micronaut-ldjam]: https://ldjam.com/events/ludum-dare/48/micronaut

### [LD48: The Submariner][submariner-itch]

[![GIF of a submarine firing torpedoes at vicious attacking fish.](submariner.gif)][submariner-itch]

[The Submariner][submariner-itch] is a minimalist action
game made by [@kettlecorn] for the Ludum Dare 48 Compo. Dive
deep into the murky depths, defend yourself with torpedoes,
and try to find a way home!

The Submariner was made with the [Macroquad][macroquad] game engine
and [hecs] was used as the Entity-Component-System (ECS) data structure.

[Click here to play the Submariner in your browser.][submariner-itch]

_Discussions: [ldjam.com][submariner-ldjam]_

[@kettlecorn]: https://twitter.com/kettlecorn
[submariner-github]: https://github.com/kettle11/LD48
[submariner-itch]: https://kettlecorn.itch.io/submariner
[submariner-ldjam]:https://ldjam.com/events/ludum-dare/48/the-submariner
[hecs]:https://github.com/Ralith/hecs

### [LD48: Depth-First Search][dfs-ldjam]

![Depth-First Search's title card](dfs.jpg)

[Depth-First Search][dfs-ldjam] by [@LPGhatguy] and [@evaeraevaera] is a space
dogfighting game made in 72 hours for the Ludum Dare 48 Jam. Travel alone to the
center of the galaxy, battling space pirates, alien eyeballs, and more.

The game was made possible by [wgpu], [egui], [rapier], [hecs], and many more
Rust community libraries!

_Discussions: [ldjam.com][dfs-ldjam], [Twitter][dfs-twitter]_

[@LPGhatguy]: https://twitter.com/LPGhatguy
[@evaeraevaera]: https://twitter.com/evaeraeveara
[dfs-ldjam]: https://ldjam.com/events/ludum-dare/48/depth-first-search
[dfs-twitter]: https://twitter.com/evaeraevaera/status/1386863330355257346
[rapier]: https://github.com/dimforge/rapier
[hecs]: https://github.com/Ralith/hecs

### [MineWars][minewars]

![MineWars Game Screenshot](minewars.jpg)

[MineWars][minewars] ([Twitter][minewars-twitter], [Reddit][minewars-reddit])
by @jamadazi is Minesweeper reimagined as a Multiplayer Real Time Strategy!

First announced publicly last month, the project is working towards an alpha
release for public playtesting. This month's progress has been mostly internal
refactoring to be able to support networked multiplayer fully. The next steps
are to implement the remaining core game mechanics. The client implementation
may be changed to use the new `bevy_ecs_tilemap` crate.

Made in the [Bevy Game Engine][bevy].

[minewars]: https://minewars.cc
[minewars-twitter]: https://twitter.com/MineWarsGame
[minewars-reddit]: https://reddit.com/r/minewars
[bevy]: https://bevyengine.org

### [Fish game]

![Fish game](fishgame.gif)

[Fish game] is an online multiplayer game,
created in a collaboration between [Nakama][nakama], an open-source scalable
game server, and the [Macroquad][macroquad] game engine.

This month:

- [Fish game tutorial] got published.
  The tutorial breaks down the game codebase into steps, from setting
  up an empty macroquad project into building a platformer game, and
  then turning it into a multiplayer game with Nakama.

- [Web build][fishgame-itch] went live on itch.io

[Fish game]: https://github.com/heroiclabs/fishgame-macroquad
[fishgame-itch]: https://fedorgames.itch.io/fish-game
[nakama]: https://heroiclabs.com/
[macroquad]: https://github.com/not-fl3/macroquad
[Fish game tutorial]: https://macroquad.rs/tutorials/fish-tutorial/

### Project YAWC

![A demonstration of the Project YAWC map editor](project_yawc_map_editor.png)

Project YAWC ([Twitter](https://twitter.com/ProjectYawc)) is a turn-based
strategy game built in GGEZ, being developed by junkmail.

April saw the release of Alpha 5, including the integrated map editor, alongside
balance changes and unit additions.

An [alpha access request form](https://forms.gle/w22ohPGNk58fo9bv6) is available,
if you want to try it out.

### [The Process]

![Animated image showcasing the test map in The Process](the_process.gif)
_The new test map in The Process_

[The Process] by @setzer22 is an upcoming
game about factory building, process management and carrot production, built
with Rust using the Godot game engine!

Some of the main highlights of the game:

- Automate complex processes by combining machines and programmable workers.
- Obtain materials from a wide variety of natural resources: Even chicken!
- An upbeat, wholesome aesthetic: Factories don't need to be depressing.

This last month was focused on implementing the following features:

- A [test map](https://twitter.com/PlayTheProcess/status/1381648397569036291) to
  ensure all corners of the codebase are working
- Improved player mobility by introducing a
  [grappling hook](https://www.reddit.com/r/rust_gamedev/comments/mztqhy/added_a_grappling_hook_to_my_game_built_with_rust/)

The game has been in active development for over a year and is now approaching
its first initial playable alpha version. Stayed tuned to the official twitter
for updates!

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/mopoxk/showcasing_my_game_the_process_built_with_rust/),
[Twitter](https://twitter.com/PlayTheProcess)_

[The Process]: https://twitter.com/PlayTheProcess/

### [pGLOWrpg][pglowrpg-github]

![Improved text rendering](pglowrpg_progress.jpg)

pGLOWrpg ([GitHub][pglowrpg-github], [Twitter][pglowrpg-twitter]) by [@Roal_Yr]
is a Procedurally Generated Living Open World RPG,
a long-term project in development, which aims to be a narrative text-based game
with maximum portability and accessibility.

Recent updates include:

- Finished implementing new printing interface.
- Different types of text: normal, announcement, banner, etc.
- Text color scheme in separate .ron preset file.
- Text wrap implemented.
- Fallback modes for text printing implemented.

[@Roal_Yr]: https://twitter.com/Roal_Yr
[pglowrpg-twitter]: https://twitter.com/pglowrpg
[pglowrpg-github]: https://github.com/roalyr/pglowrpg

### [Taipo][taipo-itch]

[![Screenshot of Taipo showing a variety of towers and enemies](taipo.png)][taipo-itch]
_Click the image to play the game in your desktop browser!_

Taipo ([itch.io][taipo-itch], [GitHub][taipo-github]) by [@rparrett]
is a Tower Defense game that's controlled solely by typing words and phrases.

Taipo is intended to be a thin veneer of a game over a tool for practicing
Japanese, but there's an English mode as well. Gameplay sessions are short and
the game is playable in a desktop web browser.

Taipo was built with [Bevy 0.5][taipo-bevy] with web builds made possible by
[bevy_webgl2] and [bevy_kira_audio]. Taipo is also supported by these great
projects: [bevy_tiled], [bevy_asset_ron].

[taipo-itch]: https://euclidean-whale.itch.io/taipo
[taipo-github]: https://github.com/rparrett/taipo
[taipo-bevy]: https://bevyengine.org
[bevy_webgl2]: https://github.com/mrk-its/bevy_webgl2
[bevy_asset_ron]: https://github.com/jamadazi/bevy_asset_ron
[bevy_tiled]: https://github.com/stararawn/bevy_tiled
[bevy_kira_audio]: https://github.com/NiklasEi/bevy_kira_audio
[@rparrett]: https://github.com/rparrett

### [A/B Street]

![Consolidated intersections in A/B Street](abstreet.png)

[A/B Street] by [@dabreegster] is a traffic simulation game exploring how small
changes to roads affect cyclists, transit users, pedestrians, and drivers, with
support for any city with OpenStreetMap coverage.

In April, a new road editor was prototyped, letting the number and width of
lanes be changed. Initial installation and downloading new maps is now simpler.
Slowly, complex intersections are being handled better. The team also completed
four usability study sessions and adjusted the UI accordingly.

[A/B Street]: https://github.com/a-b-street/abstreet
[@dabreegster]: https://twitter.com/CarlinoDustin

### [Way of Rhea][wor]

[![Way of Rhea on Steam](wor-ice.jpg)][wor]

[Way of Rhea][wor] is a picturesque puzzle platformer—without the platforming.
Solve mind bending color puzzles, unlock new areas of a vibrant hub world, and
talk to NPCs to unravel the mysteries of a world you left behind!

Way of Rhea is being produced by [@masonremaley][mason-remaley]. Latest Way of
Rhea developments:

- A [hierarchy tree view][wor-hierarchy] was added to the editor to make getting
  art into the game easier.
- Work is wrapping up getting [art into the first snow crab level!][wor-art]
- [@masonremaley][mason-remaley] wrote up [an article walking through how the
  Way of Rhea crash reporter works][wor-crash-reporter].
- [@masonremaley][mason-remaley] is mixing signed distance fields, bézier
  curves, and art by [Carolyn Whitmeyer][carolyn-whitmeyer] to create
  [procedural vines][wor-vines].
- [Carolyn Whitmeyer][carolyn-whitmeyer], the game's artist, released [a demo
  real including some content from Way of Rhea][wor-cw-demo-reel].

[wor]: https://store.steampowered.com/app/1110620?utm_campaign=tmirgd&utm_source=n21
[wor-art]: https://twitter.com/AnthropicSt/status/1388907046574215172
[wor-hierarchy]: https://twitter.com/AnthropicSt/status/1387947007508160517
[mason-remaley]: https://twitter.com/masonremaley
[wor-crash-reporter]: https://www.anthropicstudios.com/2021/03/05/crash-reporter/
[carolyn-whitmeyer]: https://www.instagram.com/cw_visuals_insta/
[wor-cw-demo-reel]: https://twitter.com/masonremaley/status/1387102693626421254
[wor-vines]: https://twitter.com/masonremaley/status/1389070879536173056

### [Veloren][veloren]

![Airship](veloren.jpg)
_A mist rolling over the land_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In April, work started on 0.10. Work is being done on combat, with new models
being created for enemies, animations being refined, and new player gear being
added. The trading and economic systems have continued progress at a good pace.
The music system was expanded to support combat music.

Veloren's financial state was overhauled to examine previous expenses, and
prepare for provisioning the dedicated server. Functionality was added to switch
between server-authoritative and client-authoritative physics. Skeletons for
big-winged creatures were added. Data being sent over the network is being
optimized to reduce the amount of bandwidth players have to use.

April's full weekly devlogs: "This Week In Veloren...":
[#114](https://veloren.net/devblog-114),
[#115](https://veloren.net/devblog-115),
[#116](https://veloren.net/devblog-116).
[#117](https://veloren.net/devblog-117).

[veloren]: https://veloren.net

### [Outer Wonders]

![Animation showing Bibi, the main protagonist of Outer Wonders,
jumping from a treetop through a hole, rolling from obstacle to obstacle
at the bottom of the tree, and then leaning on a coiled snake to jump back
up to the other side of the treetop and continue its way](outer-wonders.gif)

[Outer Wonders] is a colorful, pixel art, puzzle-based adventure game
developed by [Utopixel] where you play as Bibi, a cute round monkey who
enjoys rolling in straight lines. Explore a whimsical nature where
altering the environment is key to progress, and solve puzzles to protect
its wonders.

In April, [Utopixel] released the first playable demo of [Outer Wonders]
for Windows and Linux on [itch.io]! In order to achieve this, the [Utopixel]
team:

- Added a cutscene and a tutorial level at the beginning of the demo campaign.
- Integrated sound effects for interaction with the environment and the UI.
- Finished implementing full support for Linux on [itch.io] through a portable
  build of the game.
- Polished the menus by adding a "_Press any key to continue_" prompt on game
  startup, as well as a confirmation prompt for all quit buttons.
- Tested the demo thoroughly on both Windows and Linux to fix all bugs
  and level design issues.

_Discussions:
[/r/rust](https://www.reddit.com/mx3enm),
[Twitter](https://twitter.com/utopixel/status/1385632054021345289)_

[Outer Wonders]: https://utopixel.itch.io/outer-wonders
[Utopixel]: https://utopixel.games
[itch.io]: https://utopixel.itch.io/outer-wonders

### [Theta Wave]

[![Enemy Formations](theta-wave.gif)][Theta Wave]
_Mobs may now be spawned in predefined formations_

[Theta Wave] is an open-source space shooter game by developers [@micah_tigley] and
[@carlosupina]. It is one of the showcase games for the [Amethyst Engine]. In
the past month, the ["Formations"] update was released which organized how mobs
are spawned in different phases of the level.

They are now working on the ["Loot"] update which will enhance how loot drops
are rolled, spawned, and how their effects are applied to the game.

[Theta Wave]: https://github.com/amethyst/theta-wave
[@micah_tigley]: https://twitter.com/micah_tigley
[@carlosupina]: https://twitter.com/carlosupina
[Amethyst Engine]: https://amethyst.rs/
["Formations"]: https://github.com/amethyst/theta-wave/releases/tag/v0.1.5
["Loot"]: https://github.com/amethyst/theta-wave/projects/4

### [Station Iapetus]

[![Station Iapetus Youtube](station-iapetus.jpg)][si-youtube]

[Station Iapetus][Station Iapetus] by [@mrDIMAS] is a 3rd person shooter on the
prison Iapetus near Saturn.
This month's updates include:

- New level (lab)
- More assets
- Performance improvements
- Bots now able to use weapons
- Melee attacks are much harder to avoid now
- Bots drop items
- Journal

[@mrDIMAS]: https://github.com/mrDIMAS
[rg3d]: https://github.com/mrDIMAS/rg3d
[Station Iapetus]: https://github.com/mrDIMAS/StationIapetus
[si-youtube]: https://youtube.com/watch?v=O_ETjSkVBME

## Engine Updates

### [macroquad]

[![macroquad](macroquad.png)][macroquad.rs]

[macroquad] is a cross-platform (Windows/Linux/macOS/Android/iOS/WASM) game
framework built on top of [miniquad].

This month macroquad finally got out of alpha and `0.3` got released!
All the examples with both sources and interactive wasm versions may
be found on [the new macroquad website][macroquad_examples].

[miniquad]: https://github.com/not-fl3/miniquad
[macroquad]: https://github.com/not-fl3/macroquad
[macroquad.rs]: https://macroquad.rs/
[macroquad_examples]: https://macroquad.rs/examples

### [Tetra]

[Tetra] is a simple 2D game framework, inspired by XNA, Love2D, and Raylib. This
month, version 0.6.3 was released, featuring:

- BMFont support
- An `ImageData` type for loading and manipulating images on the CPU
- More color utilities, including shortcuts for premultiplied alpha
- Bugfixes and docs improvements

For more details, see the [changelog][tetra-changelog].

Additionally, [Tetra's website][tetra-website] has been updated to make it easier
to read and contribute to. The site features tutorials, guides and FAQs on how to
use Tetra effectively, as well as a showcase of cool projects made using the
framework - additions are welcomed!

[Tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md#063---2021-04-09
[tetra-website]: https://tetra.seventeencups.net/

### [Oxygengine v0.19.1][oxygengine-git]

![Oxygengine UI splash screen](oxygengine-ui-splash-screen.gif)
_Making splash screens in Oxygengine with RAUI_

[Oxygengine][oxygengine-git] by [@PsichiX][psichix-twitter] is the hottest
HTML5 + WASM game engine for games written in Rust with web-sys.
The goal of this project is to combine professional game development tools under
one highly modular toolset.

This month's changes include:

- Fixed bugs with rendering images on Firefox browser.
- Added support for filters.
- Updated [RAUI][raui-git] dependency to improve UI.
- Added support for image smoothing render command.
- Added [puzzle game demo WIP][oxygengine-puzzle-demo] that shows how to use RAUI
  to make for example fancy splash screens with RAUI.

[psichix-twitter]: https://twitter.com/psichix
[oxygengine-git]: https://github.com/PsichiX/Oxygengine
[oxygengine-puzzle-demo]: https://github.com/PsichiX/Oxygengine/tree/master/demos/soulhunter

### [rg3d]

![rg3d](rg3d_logo.png)

[rg3d] ([Discord][rg3d_discord], [Twitter][rg3d_twitter]) is a game engine that
aims to be easy to use and provide a large set of out-of-box features. Some of
the recent engine updates:

- WebAssembly support ([check online demo][rg3d_wasm_demo])
- Proc-macro for Visit trait
- On-demand texture compression
- Performance improvements
- Various bug fixes and small improvements.

[rg3d]: https://github.com/mrDIMAS/rg3d
[rg3d_discord]: https://discord.gg/xENF5Uh
[rg3d_twitter]: https://twitter.com/DmitryNStepanov
[rg3d_wasm_demo]: https://rg3d.rs/assets/webexample/index.html

### [Arcana]

![arcana](tanks.gif)
_A demo Arcana game_

[Arcana] is a new game engine built with focus on ease of use
without compromising on level of control.
The engine is aimed to support a wide variety of games,
from pixel-art to fully ray-traced,
from single-player puzzles to online strategies.

It is at a very early stage, not all necessary subsystems are done
and code is in flux.

The demo shown above was coded in a single evening,
together with sprite sheet loading and sprite animations
which will be integrated into the engine later.

The default 2D renderer renders sprites with auto-batching,
so all sprites are rendered in single instanced draw call,
allowing rendering millions of sprites in one frame. Rendering
is done with [`sierra`] - a Vulkan-like graphics API with
batteries included. The engine also uses [`hecs`] as its ECS,
and rolls its own simplistic `System` trait to define and run
systems, once per frame or with fixed steps. [`rapier`] physics
is integrated for 2D cases, but this system is kept opt-in.

[Arcana]: https://github.com/zakarumych/arcana
[`sierra`]: https://github.com/zakarumych/sierra
[`hecs`]: https://crates.io/crates/hecs
[`rapier`]: https://rapier.rs/docs/

## Learning Material Updates

### [Bevy Cheatbook][bevy_cheatbook]

The Unofficial Bevy Cheatbook by @jamadazi is a practical book for learning the
[Bevy Game Engine][bevy].

The book recently got an assortment of improvements and new content, including
a detailed page about [input handling][bevy_cheatbook_input] and a chapter about
[browser games using WASM][bevy_cheatbook_wasm] (written with help from @Zaszi).

The author now has a [GitHub Sponsors][jamadazi_ghsponsors], support them!

[bevy_cheatbook]: https://bevy-cheatbook.github.io
[bevy_cheatbook_input]: https://bevy-cheatbook.github.io/features/input-handling.html
[bevy_cheatbook_wasm]: https://bevy-cheatbook.github.io/platforms/wasm.html
[jamadazi_ghsponsors]: https://github.com/sponsors/jamadazi
[bevy]: https://bevyengine.org

### [Shooting Gallery Game in Rust and Bevy in 5 Hours][bevy-5h-video]

[![preview](bevy-shoot-video.jpg)][bevy-5h-video]

[@camsjams] released [a video][bevy-5h-video] about
developing a shooting gallery using Bevy
to demonstrate 2D games with multiple layers of depth.
Some of the features covered in the video:

- Basic UI with score and countdown clock.
- 2D shooting with moving set pieces - clouds, grass, water.
- Tracking of target hits, each target having their own unique
  movement speed and points.
- Game over state when clock runs out.

[The full source is available here][bevy-5h-src].

[bevy-5h-video]: https://youtube.com/watch?v=T1ZT0EkzvgI
[@camsjams]: https://twitter.com/camsjams
[bevy-5h-src]: https://github.com/camsjams/rust-2d-shooting-gallery

### [Learning OpenGL in 7 days using Rust][tantan-video]

[![video preview](tantan-preview.jpg)][tantan-video]

[TanTan] released a [video][tantan-video] about making a water shader,
loading 3D models, creating a beautiful transition shader
using glium and macroquad.
The water & transition shader is open source and can be found
[here][mq-tantan-toolbox].

[TanTan]: https://twitter.com/TantanDev
[tantan-video]: https://youtube.com/watch?v=KEQIWqSq42k
[mq-tantan-toolbox]: https://github.com/TanTanDev/macroquad_tantan_toolbox

### [Rust Linz: Learning Rust with Game Development][rust-linz]

[![Rust Linz talk screenshot](rust-linz.png)][rust-linz]
_Click on the image to watch the talk_

As part of April's Rust Linz meetup, [Herbert Wolverson][rust-linz-hw]
gave a talk about using game development as a means of learning
Rust, stepping through the creation of Flappy Dragon - a simple game
used in his book 'Hands-On Rust' to teach the language basics.

'Hands-On Rust' is currently available for 50% off, via a coupon
posted on the [author's twitter][rust-linz-coupon].

[rust-linz]: https://www.youtube.com/watch?v=79GyLlXAk-0
[rust-linz-hw]: https://twitter.com/herberticus
[rust-linz-coupon]: https://twitter.com/herberticus/status/1387090355250675716

### [Rust LA Meetup: Happiness in Rust][rust-la]

[![Rust LA talk screenshot](rust-la.png)][rust-la]
_Click on the image to watch the talk_

As part of April's Rust LA meetup, [Andrea Pessino][rad-andrea] from
[Ready at Dawn][rad] gave a talk examining how to increase Rust adoption
among game developers and performance-centric developers, giving
practical, actionable advice to those who hit early bumps in their
Rust discovery.

[rust-la]: https://www.youtube.com/watch?v=TJ3w-pZ7FMI
[rad-andrea]: https://twitter.com/AndreaPessino
[rad]: http://www.readyatdawn.com/

### [How To Write a Crash Reporter][crash-reporter]

![How To Write a Crash Reporter](wor-crash-reporter.jpg)

[@masonremaley][mason-remaley] wrote [an article][crash-reporter] walking
through [Way of Rhea's][wor] crash reporter implementation.

The article covers how to detect a crash, how to report a crash via chat
services like Discord or Slack, and how to implement a robust native UI on
Windows to handle requesting user consent to file the report, as well as some
design considerations.

[crash-reporter]: https://www.anthropicstudios.com/2021/03/05/crash-reporter/
[mason-remaley]: https://twitter.com/masonremaley
[wor]: https://store.steampowered.com/app/1110620?utm_campaign=tmirgd&utm_source=n21

### [awesome-quads]

![logo](quads.png)

[awesome-quads] is a curated list of links to [miniquad]/[macroquad]-related
code & resources: libraries & plugins, games, examples, apps, docs, etc.
The list has more than 40 links atm:
feel free to write a PR if something isn't mentioned yet.

[awesome-quads]: https://github.com/ozkriff/awesome-quads

## Library & Tooling Updates

### [wgpu]-0.8

![Screenshot of tree rendering](wgpu-tree.png)

[wgpu] is a [WebGPU] implementation in Rust. It is safe, efficient,
and portable: can target both native (Vulkan/D3D/Metal) and the Web.

The team has rolled out gfx-hal-0.8 and wgpu-0.8 updates on crates!
Read [gfx-release-blog] for more details.

In April, the team implemented more validation on both the host and the shader
sides. [Naga]'s coverage of SPIR-V and MSL features is also greatly improved.

On the infrastructure side, [wgpu] integrated [profiling] and got the first
[naga performance][naga perf numbers] numbers, which looked promising.

[wgpu]: https://github.com/gfx-rs/wgpu
[webgpu]: https://gpuweb.github.io/gpuweb/
[naga]: https://github.com/gfx-rs/naga
[profiling]: https://github.com/aclysma/profiling
[gfx-release-blog]: https://gfx-rs.github.io/2021/04/30/release-0.8.html
[naga perf numbers]: https://github.com/gfx-rs/wgpu-rs/discussions/879

### [nalgebra]

![nalgebra](https://www.nalgebra.org/img/logo_nalgebra.svg)

[nalgebra] ([GitHub], [Discord]) by [Dimforge] is a general-purpose
linear-algebra library.

With its version 0.26, [nalgebra] replaced the use of [generic-arrays] by
regular Rust arrays using const-generics. See the [blog-post] to get all
the details! In particular, this results in significant benefits:

- Simpler generic programming with statically-sized vectors/matrices.
- Much simpler debugging: inspect the content of vectors/matrices more easily.
- Vectors and matrices with dimensions known at compile-time can be
  constructed in a const-fn context.

_Discussions: [/r/rust], [Twitter]_

[nalgebra]: http://nalgebra.org
[GitHub]: http://github.com/dimforge/nalgebra
[Discord]: http://discord.gg/vt9DJSW
[Dimforge]: http://dimforge.com
[generic-arrays]: https://docs.rs/generic-array/0.14.4/generic_array/
[blog-post]: https://www.dimforge.com/blog/2021/04/12/integrating-const-generics-to-nalgebra/
[/r/rust]: https://www.reddit.com/r/rust/comments/mph8jr/integrating_constgenerics_to_nalgebra_026/
[Twitter]: https://twitter.com/dimforge/status/1381643543626842114

### [opensubdiv-petite]

![Low poly car model](opensubdiv-petite.jpg)
_Low poly car with three levels of Catmull-Clark subdivision applied._

[Opensubdiv-petite] is a high level, selective, oxidized wrapper around Pixar’s
[OpenSubdiv] [sudivison surface] meshing and evaluation library. OpenSubdiv allows
for real time updates of the subdivided mesh if the topology of the control mesh
is stable (e.g. a deforming character in a game).

The crate comes with a trait for converting into a `bevy::Mesh` and a [`bevy` example].

This is an early release. None of the GPU acceleration backends are yet
exposed on the Rust side. Contact [@virtualritz] is you want to help out with
that.

His [`tobj` fork] also has a bunch new features that help loading OBJ files for
use with opensubdiv-petite. E.g. merging disconnected vertices during import.

The car model above was borrowed from [@quaternius] low poly
[car collection on itch.io].

[OpenSubdiv]: https://graphics.pixar.com/opensubdiv/docs/intro.html
[opensubdiv-petite]: https://crates.io/crates/opensubdiv-petite
[sudivison surface]: https://en.wikipedia.org/wiki/Subdivision_surface
[`bevy` example]: https://github.com/virtualritz/opensubdiv-petite/blob/master/opensubdiv-petite/examples/bevy.rs
[`tobj` fork]: https://github.com/virtualritz/tobj
[@virtualritz]: https://github.com/virtualritz
[@quaternius]: https://www.patreon.com/quaternius
[car collection on itch.io]: https://quaternius.itch.io/lowpoly-cars

### [profiling]

[![Screenshot of Optick Profiler](profiling.png)](profiling.png)

This month, version 1.0 of [profiling] was released on crates.io. 🎉 🎉

This crate provides a very thin abstraction over instrumented profiling crates
like `puffin`, `optick`, `tracing`, `tracy`, and `superluminal-perf`.

Profiling is used by multiple projects including `gfx-hal`, `rafx`, and
`wgpu`.

[profiling]: https://crates.io/crates/profiling

### [simple-async-local-executor]

```rust
let executor = Executor::default();
let events = [executor.create_event_handle(), executor.create_event_handle()];

async fn wait_event(events: [EventHandle; 2], executor: Executor) {
    executor.event(&events[0]).await;
    executor.event(&events[1]).await;
}

executor.spawn(wait_event(events.clone(), executor.clone()));
assert_eq!(executor.step(), true);
assert_eq!(executor.step(), true);
executor.notify_event(&events[0]);
assert_eq!(executor.step(), true);
executor.notify_event(&events[1]);
assert_eq!(executor.step(), false);
```

[simple-async-local-executor] by [Enlightware]
is a single-threaded polling-based executor suitable for use in games, embedded
systems or WASM.

This executor can be useful when the number of tasks is small or
if a small percentage is blocked. Being polling-based, in the general
case it trades off efficiency for simplicity and does not require any
concurrency primitives such as `Arc`, etc.

[simple-async-local-executor]: https://github.com/enlightware/simple-async-local-executor
[Enlightware]: https://enlightware.ch

### [wasm_plugin]

[wasm_plugin][wasm_plugin] by @alec-deason is a
low-ish level tool for easily hosting WASM based plugins for modding or scripting.

The latest version now supports calling host functions from the plugin and more
flexible serialization which allows plugins to be written in languages other
than Rust.

It consists of two crates:

- [wasm_plugin_host] which wraps a wasmer instance with methods for calling
  functions on the guest plugin.
- [wasm_plugin_guest] which provides an attribute macro to easily import and
- export functions to the host.

[wasm_plugin]: https://github.com/alec-deason/wasm_plugin
[wasm_plugin_host]: https://lib.rs/crates/wasm_plugin_host
[wasm_plugin_guest]: https://lib.rs/crates/wasm_plugin_guest

### [egui]

[egui] by [@emilk] is an easy-to-use immediate mode GUI library in pure Rust.

This month [version 0.11] of egui was released, with many improvements,
including optimized to run almost twice as fast!

You can try out egui in the [online demo].

[egui]: https://github.com/emilk/egui
[online demo]: https://emilk.github.io/egui
[version 0.11]: https://github.com/emilk/egui/blob/master/CHANGELOG.md
[@emilk]: https://twitter.com/ernerfeldt

### [bevy_egui]

[![bevy_egui multiple windows support GIF](egui.gif)][bevy_egui]

[bevy_egui] provides an [Egui](https://github.com/emilk/egui) integration
for the [Bevy](https://github.com/bevyengine/bevy) game engine.
It supports [bevy_webgl2] and implements the full set of Egui features
(such as clipboard and opening URLs).

In April, [version 0.4] was released, providing an integration with
Egui 0.11 and implementing multiple windows support.

Try out the [online demo](https://mvlabat.github.io/bevy_egui_web_showcase/index.html).

[bevy_egui]: https://github.com/mvlabat/bevy_egui
[bevy_webgl2]: https://github.com/mrk-its/bevy_webgl2
[version 0.4]: https://github.com/mvlabat/bevy_egui/blob/main/CHANGELOG.md

### [puffin_egui]

![puffin_egui](puffin_egui.gif)

[puffin_egui] by [@emilk] is an easy-to-use integration
of the [puffin] profiler for the [egui] GUI library.

It has never been easier to add an in-game flamegraph profiler to your game!

[puffin_egui]: https://github.com/emilk/puffin_egui
[puffin]: https://github.com/EmbarkStudios/puffin
[egui]: https://github.com/emilk/egui
[@emilk]: https://twitter.com/ernerfeldt

### [rafx]

[![Rafx WebGL 1.0 Demo](rafx-webgl1-demo.png)][rafx-webgl-demo]
_Rafx WebGL 1.0 support, [click for live demo][rafx-webgl-demo]!_

Rafx is a multi-backend renderer that optionally integrates with the
[distill][rafx-distill] asset pipeline. This month, frustum culling
and a new OpenGL ES 2.0/WebGL 1.0 backend were added.

[@dvd] revived the `rafx-visibility` crate and implemented frustum culling.
Frustum culling greatly reduces draw call counts, improving frame rate
in certain scenes. The changes also improve consistency between various
rendering feature implementations (i.e. meshes, text etc.) and avoids running
the extract-prepare-submit pipeline on entities that are not visible.

[@aclysma] implemented an OpenGL ES 2.0 backend. While ES2 cannot support all
functionality in `rafx-api`, it provides very broad compatibility. This means
the core functionality of rafx-api can be used with almost any mobile device
or browser ([~98% web coverage][rafx-webgl-caniuse].)

[rafx]: https://github.com/aclysma/rafx
[rafx-webgl-demo]: https://aclysma.github.io/rafx/demo-web/index.html
[rafx-distill]: https://github.com/amethyst/distill
[rafx-webgl-caniuse]: https://caniuse.com/?search=webgl
[@aclysma]: https://github.com/aclysma
[@dvd]: https://github.com/DavidVonDerau

### [RAUI v0.34.0][raui-git]

![RAUI Scroll Box](raui-scroll-box.gif)
_RAUI Scroll Box_

[RAUI][raui-git] by [@PsichiX][psichix-twitter] is a Renderer Agnostic User
Interface crate that is based on declarative mode UI composition similar to
React.js and UE4 Slate system.

This month's changes include:

- Moved from `widget_hooks!` and `widget_component!` to `#[pre_hooks]`and
  `#[post_hooks]` macros.
- Added `PropsData` and `MessageData` derive macros.
- Improved support for Scroll Box widgets to allow frictionless usage.
- Added use of Scroll Box in [TODO demo app][raui-todo-app] to demonstrate how
  to use it.

[raui-git]: https://github.com/PsichiX/raui
[raui-todo-app]: https://github.com/PsichiX/raui/tree/master/demos/todo-app

### [Graphite][graphite-repo]

![Ferris drawn in Graphite using the new drawing tools - Art credit: Uriopass](graphite-ferris.png)
_Ferris drawn in Graphite using the new drawing tools - Art credit: Uriopass_

Graphite ([GitHub][graphite-repo], [Discord][graphite-discord],
[Twitter](https://twitter.com/GraphiteEditor)) is an in-progress vector and
raster graphics editor built on a nondestructive node-based workflow.

The team size has doubled in the past month — thank you to the new contributors!
Since then, systems related to editor tools and data flow were added.
The editor now has proper input behavior on the existing Rectangle and Ellipse Tools
plus the new Shape and Line Tools while holding modifier keys.
Pen Tool implementation has begun, supporting polylines.
Shapes are now drawn with live previews.

Additional work has gone into improving render performance, building the color
system in the Rust backend, and adding initial support for displaying shapes
in the Layer Tree panel. [Try it right now in your browser.][graphite-live-demo]

Graphite is making rapid progress towards becoming a nondestructive, procedural
graphics editor suitable of replacing traditional 2D DCC applications. Please
[join the Discord][graphite-discord] - and consider asking for a tour of the
code and how you can help!

[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://github.com/GraphiteEditor/Graphite/blob/master/README.md#discord
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-live-demo]: https://editor.graphite.design/

### [KindNES]

![Super Mario Bros. running in KindNES](kindnes.png)

[KindNES] by [@henryksloan]
is a new NES emulator that supports sound, controllers, and
much of the NES library.

KindNES is designed to strike a balance between performance, hardware accuracy,
and code clarity. It directly emulates the CPU, graphics, and sound of the NES
with minimal approximation. The code is intended to pair well with the NESdev
wiki as a resource for learning about the NES.

KindNES is in a playable state, and is approaching a release version.
Features planned before release include saving and an improved cross-platform
GUI.

[KindNES]: https://github.com/henryksloan/kind-nes/releases/tag/v0.9.1-beta
[@henryksloan]: https://github.com/henryksloan

### [chip-8-rs]

![Screenshot of Pong with debugger](chip-8-rs.jpg)
_Debugging Pong_

[Chip-8-rs][chip-8-rs] by @jonathanmurray is
a CHIP-8 emulator with some basic debugging functionality.

When running a game through the emulator, CHIP-8 instructions are listed
next to the main display, with the currently executed one highlighted. By
running at a very low clock-frequency (and pausing/resuming) you can step
through a program one instruction at a time, to better understand how it
works (or doesn't work!).

See it in action on [YouTube][chip-8-rs-video].

[chip-8-rs]: https://github.com/JonathanMurray/chip-8-rs
[chip-8-rs-video]: https://youtu.be/nVDJ5PZpPfI?t=72

## Requests for Contribution

- [femtovg is looking for help with the wgpu backend][femtovg-help].
- [Embark's open issues][embark-open-issues] ([embark.rs]).
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

[femtovg-help]: https://reddit.com/r/rust/comments/mfuo4m/femtovg_2d_vector_graphics_crate_is_looking_for
[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[abstreet-issues]: https://github.com/a-b-street/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue
[simm-issues]: https://github.com/mkhan45/SIMple-Mechanics/labels/good%20first%20issue
[bevy-issues]: https://github.com/bevyengine/bevy/labels/good%20first%20issue

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

**Discuss this post on**:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/n8g79b/this_month_in_rust_gamedev_21_april_2021),
[Twitter](https://twitter.com/rust_gamedev/status/1391415309421187076),
[Discord](https://discord.gg/yNtPTb2).

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
