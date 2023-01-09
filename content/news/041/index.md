+++
title = "This Month in Rust GameDev #41 - December 2022"
transparent = true
date = 2023-01-04
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 41st issue of the Rust GameDev Workgroup's
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
- [Meeting Minutes](#meeting-minutes)
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

### Rust Graphics Meetup 3

![Graphics meetup logo](graphics-meetup-logo.jpg)

The 3rd Rust Graphics Meetup will take place on the [28th of January 2023 at
16:00 GMT][graphics-meetup-time]. This meetup is a chance to show off what
you've been working on in the graphics community, or see what other people have
been doing!

If you're interested in speaking, please add a comment to [this
issue][graphics-meetup-issue]. You can also [read about the previous graphics
meetup][graphics-meetup-2].

[graphics-meetup-issue]: https://github.com/gfx-rs/meetup/issues/3
[graphics-meetup-time]: https://everytimezone.com/s/feafb968
[graphics-meetup-2]: https://gamedev.rs/blog/graphics-meetup-02/

### Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The 22nd Rust Gamedev Meetup took place in December. You can watch the recording
of the meetup [here on Youtube][gamedev-meetup-video]. Here was the schedule
from the meetup:

- Fyrox Engine - [@dmitrynstepanov]
- Rusty Vangers - [@kvark]
- Graphite - [@GraphiteEditor]

The meetups take place on the second Saturday of every month via the [Rust
Gamedev Discord server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch]. If you would like to speak at the next meetup on
January 14th, please [respond to the monthly GitHub
issue][gamedev-meetup-speakers].

[gamedev-meetup-video]: https://www.youtube.com/watch?v=Ck2R0yqTLcU
[gamedev-meetup-speakers]: https://github.com/rust-gamedev/meetup/issues/2
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev
[@dmitrynstepanov]: https://twitter.com/dmitrynstepanov
[@GraphiteEditor]: https://twitter.com/GraphiteEditor
[@kvark]: http://kvark.github.io

## Game Updates

### Digital Extinction

![laser trail in Digital Extinction](digital-extinction.jpeg)
_Laser trail in Digital Extinction_

[Digital Extinction] ([GitHub][de-github], [Discord][de-discord],
[Reddit][de-reddit]) by [@Indy2222] is a 3D real-time strategy game made with
[Bevy].

This month's update is somewhat smaller but there has been some important
progress in multiplayer.

The most notable updates are:

- game configuration is loaded from a file ([docs][de-docs]),
- a simple game lobby server has been created ([docs][de-docs]),
- a Bevy plugin with the lobby client has been implemented,
- several minor community, infrastructure, and other improvements have been
  done.

A more detailed update summary is available [here][de-update-03].

[Digital Extinction]: https://de-game.org
[de-github]: https://github.com/DigitalExtinction/Game
[de-discord]: https://discord.gg/vHMFuCWGSX
[de-reddit]: https://reddit.com/r/DigitalExtinction
[@Indy2222]: https://github.com/Indy2222
[Bevy]: https://bevyengine.org
[de-docs]: https://docs.de-game.org
[de-update-03]: https://mgn.cz/blog/de03

### [Open Combat][OpenCombat_website]

![Real time tactical 2nd world war game](open_combat.png)
_Game now include vehicle (T-26) and shelling FX_

Open Combat
([Website][OpenCombat_website],
[GitHub][OpenCombat_github],
[Discord][OpenCombat_discord],
[Reddit](OpenCombat_reddit))
by [bux][bux] is a real time tactical game
which takes place during the 2nd world war.

Since the last news about this game,
the game engine has been rewritten to permit multiplayer.
Most of the basic game engine feature have been rewritten with
the new engine (soldier moves, visibilities, map, etc.).
Vehicle concept has been introduced to a T-26 tank.
Basic fight features like gunfire and shelling have been introduced.

[OpenCombat_website]: https://opencombat.bux.fr/
[OpenCombat_github]: https://github.com/buxx/OpenCombat
[OpenCombat_discord]: https://discord.gg/6P2vtFh2Px
[bux]: https://github.com/buxx/

### [Tiny Glade]

![tiny_glade](tiny_glade_key_art_small.png)

[@anopara]'s and [@h3r2tic]'s tiny building game
now finally has a name! It's [Tiny Glade]!

Tiny Glade is a small relaxing game about doodling
castles. Explore gridless building chemistry, and
watch the game carefully assemble every brick, pebble
and plank. There's no management, combat, or wrong
answers - just kick back and turn forgotten meadows
into lovable dioramas. Wishlist on [Steam][Tiny Glade]!

[@anopara]: https://twitter.com/anastasiaopara
[@h3r2tic]: https://twitter.com/h3r2tic
[Tiny Glade]: https://store.steampowered.com/app/2198150/Tiny_Glade/

### [Temple Knight]

![Shooting automatons in Temple Knight](temple-knight.jpg)
_Shooting automatons in Temple Knight_

Temple Knight ([Itch.io][tk-itch], [Twitter][tk-twitter])
by [@nilaysavant] is a 3D FPS game developed using [Bevy].
You play the role of a knight and protect the temple from raiding automatons.

What began as an experiment to learn game dev in Rust using [Bevy].
Initially motivated by the visual appeal of a [scene running in the browser via WASM].
It quickly started taking the shape of a game:

- From adding [Rapier] for [basic physics] to developing mechanics for other entities.
- Path finding for Automaton's using [control systems].
- Which was later switched to a deterministic [A-start navmesh approach].
- Developed mechanics for the player controller including the first-person-camera.
- Implemented weapon + projectiles systems.
- Finally [custom shaders for projectiles] were added as a finishing touch.

An experiment that became the first game published by [@nilaysavant].
Play [Temple Knight] in your browser.

[Temple Knight]: https://nilaysavant.itch.io/temple-knight
[tk-itch]: https://nilaysavant.itch.io/temple-knight
[tk-twitter]: https://twitter.com/nilay_savant/status/1607789552621727744
[@nilaysavant]: https://github.com/nilaysavant
[Bevy]: https://bevyengine.org/
[scene running in the browser via WASM]: https://twitter.com/nilay_savant/status/1568307034390675456
[Rapier]: https://rapier.rs/
[basic physics]: https://twitter.com/nilay_savant/status/1569665425046384641
[control systems]: https://twitter.com/nilay_savant/status/1573783227911012352
[A-start navmesh approach]: https://twitter.com/nilay_savant/status/1574735050809413633
[custom shaders for projectiles]: https://twitter.com/nilay_savant/status/1607115041253519361

### [Cargo Space][cargospace]

![cargo space screenshot](cargo_space.png)

[Cargo Space][cargospace] ([Discord][cargospace_discord]) by
[@johanhelsing][johanhelsing_mastodon] is a co-op 2d space game where you build a
ship and fly it through space looking for new parts, fighting pirates and the
environment.

Johan wrote [an introductory post][cargospace_devlog_0] about the design idea,
and a tentative plan for its development.

The first step was to make an initial offline single-player prototype. This is
covered in the [first devlog][cargospace_devlog_1] along with topics such as
procedural generation, 2d platforming, bloom, and various community Bevy crates,
such as [bevy_ecs_tilemap], [bevy_ecs_ldtk] and [bevy_particle_systems].

The procedural generation needs for the game also resulted in a new crate being born.
[noisy_bevy] is a CPU and GPU noise plugin for Bevy.

After this, p2p rollback networking was added using [bevy_ggrs] and [Matchbox].
The [second devlog][cargospace_devlog_2] goes through this in detail, and in
particular how integration between [bevy_ggrs] and [leafwing_input_manager] was
implemented.

[cargospace]: https://helsing.studio/cargospace
[cargospace_discord]: https://discord.gg/ye9UDNvqQD
[johanhelsing_mastodon]: https://mastodon.social/@johanhelsing
[cargospace_devlog_0]: https://johanhelsing.studio/posts/cargo-space-devlog-0
[cargospace_devlog_1]: https://johanhelsing.studio/posts/cargo-space-devlog-1
[cargospace_devlog_2]: https://johanhelsing.studio/posts/cargo-space-devlog-2
[noisy_bevy]: https://github.com/johanhelsing/noisy_bevy
[Matchbox]: https://github.com/johanhelsing/matchbox
[bevy_ggrs]: https://github.com/gschup/bevy_ggrs
[leafwing_input_manager]: https://github.com/Leafwing-Studios/leafwing-input-manager
[bevy_ecs_ldtk]: https://github.com/Trouv/bevy_ecs_ldtk
[bevy_ecs_tilemap]: https://github.com/StarArawn/bevy_ecs_tilemap
[bevy_particle_systems]: https://github.com/abnormalbrain/bevy_particle_systems

### [8bit Duels]

![Kraken](8bd_kraken.png)
_The newly added Kraken_

[@ThousandthStar] is creating 8bit Duels
([Discord][8bit-discord], [Github][8bit-github]),
an 8bit style turn-based multiplayer strategy game.

Last month, an artist joined ThousandthStar to create art for the game.
A testing server has now been set up
(more information is in the [Discord][8bit-discord] server).

Furthermore, these three new troops have been added to the game:
Reaper, Kraken, and Spider.
The game now also includes new abilities for the various troops to come.

The full devlog for this month can be found [here][8bit-log5].

[8bit Duels]: https://thousandthstar.github.io/posts/8bd-intro/
[@ThousandthStar]: https://github.com/ThousandthStar
[8bit-discord]: https://discord.gg/NbBcF4bGU5
[8bit-github]: https://github.com/ThousandthStar/8bit-duels
[8bit-log5]: https://thousandthstar.github.io/posts/8bd-part5

### [Flesh]

![flesh preview](flesh.gif)
_more blood_

[Flesh] by [@im_oab] is a 2D-horizontal shmup game with hand-drawn animation and
an organic/fleshy theme. It is implemented using [Tetra]. This month's updates
include:

- Change player bullet color and add trail particle.
- Add SFX when special weapon ready.
- Increase blood splash particles.
- Postpone release date to Q1, 2023.

[Flesh]: https://store.steampowered.com/app/1660850/Flesh/
[@im_oab]: https://twitter.com/im_oab
[Tetra]: https://github.com/17cupsofcoffee/tetra

### Pirate Annihilation

![Pirate annihilation game view](pirate_annihilation_n41.png)
_Pirate annihilation game view, asset pack by [Kenney](https://twitter.com/KenneyNL)_

Pirate Annihilation ([GitHub][pirate_annihilation_repo], [Twitter][indiedevcasts_twitter])
by [indiedevcasts][indiedevcasts_www] ([@theredfish]) is a last-man-standing game
where pirate ships battle against each other in stormy seas.

The very [first devlog](https://youtu.be/lT1QmAHPRoo) is available on Youtube.
It describes the implementation of a smooth damping effect to follow the player
with the camera, jitter and stuttering issues, and the core game mechanics are
now defined.

[pirate_annihilation_repo]: https://github.com/indiedevcasts/pirate-annihilation
[indiedevcasts_twitter]: https://twitter.com/indiedevcasts
[indiedevcasts_www]: https://indiedevcasts.com
[@theredfish]: https://twitter.com/theredfi_sh

### [Veloren][veloren]

![A wendigo at night](veloren.jpg)
_A fearsome wendigo encounter_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In December, work has been done to create a website to better assist moderation
in the game. Several months of project finances were done, and all of the data
is [publically visible][veloren-finances]. Work on Wyverns has continued, and
lots of effort is being put into their wings. Some UI elements have changed
location, both the bag and spellbook buttons were merged with other button bars.

Frost Gigas are another big item in the works. These creatures will be Veloren's
world boss. Gigas will hopefully be the first of a numerous elemental giants to
roam the open world of Veloren and will need a large group of players to be able
to take it down and collect it's new uncraftable and legendary loot!

December's full weekly devlogs: "This Week In Veloren...":
[#201][veloren-201],
[#202][veloren-202],
[#203][veloren-203].

[veloren]: https://veloren.net
[veloren-201]: https://veloren.net/devblog-201
[veloren-202]: https://veloren.net/devblog-202
[veloren-203]: https://veloren.net/devblog-203
[veloren-finances]: https://docs.google.com/spreadsheets/d/1Fk6kDsCdZLhVszXdsWUjoG4Cgc3cLbTqJgZ-gY3Ndq0/edit#gid=0

### [Thetawave]

![repeater boss](repeater_boss.gif)
_First boss enemy in Thetawave_

Thetawave is an open-source, roguelite, physics-based, space shooter game made
with [Bevy] and [Rapier].

This month, the first boss enemy was added to the
game. Unlike other enemies, it is composed of a single "mob" entity and 7
"mob segment" entities. It also uses behavior sequences to regularly change
its active set of behaviors. You can follow [@carlosupina] on Twitter for
regular updates about the game.

[Thetawave]: https://github.com/thetawavegame/thetawave
[Bevy]: https://bevyengine.org/
[Rapier]: https://rapier.rs/
[@carlosupina]: https://twitter.com/carlosupina

### [Jumpy]

![Swords, Crates, Grenades, & Mines](jumpy.png)
_Jumpy Items: Swords, Crates, Grenades, & Mines_

[Jumpy] ([GitHub][Jumpy], [Discord][jumpy_discord], [Twitter][jumpy_twitter]) by
[Spicy Lobster][spicy_lobster] is a pixel-style, tactical 2D shooter with a fishy
theme.

In the last month work started on a new architecture for the core Jumpy game loop.

Determinism and snapshot/restore functionality has been a challenge for
networking support in jumpy. To address this, Jumpy has started migrating the core
game loop to a custom, micro Entity Component System that is deterministic and can
be trivially snapshot and restored.

By being simple and planning to eventually support a pure C API, it's also
intended for the micro-ECS approach to make it vastly easier to create a
performant modding interface to Jumpy in the future.

Work has almost been finished on the new Bones ECS and the surrounding [Bones]
framework, which is still built on Bevy for rendering and otherwise talking to
the hardware. The hope is that Bones can become a framework for making other
games similar in scope to Jumpy, without those games have to re-invent everything
that was needed to get features like UI, networking, localization, asset loading,
etc.

As soon as the ECS migration is finished, the plan is to get the final game juicing
and polish done and to make a proper MVP release.

[Jumpy]: https://github.com/fishfolks/jumpy
[Bevy]: https://bevyengine.org
[jumpy_twitter]: https://twitter.com/spicylobsterfam
[jumpy_discord]: https://discord.gg/4smxjcheE5
[spicy_lobster]: https://spicylobster.itch.io
[Bones]: https://github.com/fishfolk/bones

### [Hydrofoil Generation]

![hgs_screen](hydrofoil_41.jpg)

[Hydrofoil Generation]
([Steam][hgs_steam], [Facebook][hgs_facebook], [Discord][hgs_discord])
is a realistic sailing/foiling inshore simulator in development for PC/Steam
that will put you in the driving seat of modern competitive sailing.

The game is written completely in Rust, using a custom engine based on
DirectX 11, physics powered by Rapier-3D.

Jaxx Vane Studio army of 2, Stefano Casillo and Chax Duero is pushing
through the final steps to get the game ready for Steam Early Access release.

As final QA approaches the team is at work to add the last level of polish
and more details as possible to every aspect of the game.

A new Tutorial System has been added to introduce people with different
backgrounds to the game as gently as possible making the learning curve
of this complex simulator less steep.

Stefano is also back on [Twitch][hgs_twitch] streaming coding sessions live.

Hydrofoil Generation should be available on Steam in the first months of 2023.

[Hydrofoil Generation]: https://hydrofoil-generation.com/
[hgs_facebook]: https://www.facebook.com/HydrofoilGenerationSailing/
[hgs_discord]: https://discord.gg/DtKgt2duAy/
[hgs_steam]: https://store.steampowered.com/app/1448820/Hydrofoil_Generation/
[hgs_twitch]: https://www.twitch.tv/kunosstefano

## Engine Updates

### [Fyrox]

![ABSM Editor](absm_editor.gif)

[Fyrox] ([Discord][fyrox_discord], [Twitter][fyrox_twitter]) is a game engine that
aims to be easy to use and provide a large set of out-of-the-box features. In December
it got a lot of new functionality and improved existing:

- Animation system rework is completed
- Animation and ABSM editors are now fully usable
- Reflection improvements
- `Copy Value as String` for Inspector
- Ability to enable/disable scene nodes
- Customizable graph update pipeline
- UI Widgets improvements
- Curve editor improvements
- Lots of bug fixes

[Fyrox]: https://github.com/FyroxEngine/Fyrox
[fyrox_discord]: https://discord.com/invite/xENF5Uh
[fyrox_twitter]: https://twitter.com/DmitryNStepanov

### [Runty8][runty8-repo]

[![Runty 8 logo][runty8-logo]][runty8-repo]

[Runty8][runty8-repo] is an experimental port of the [Pico8][pico8-site]
fantasy console that supports writing games in Rust.

[Runty8][runty8-repo] has recently added support for WebAssembly,
which means that you can now run your games in the browser!

Feel free to [follow their template][runty8-template] to start making your own games.

The project is in very early stages, and is currently looking for contributors.
If you're interested, feel free to read their [contributing guide][runty8-contributing-guide]
or browse through the [open issues][runty8-open-issues].

[runty8-repo]: https://github.com/jjant/runty8
[runty8-contributing-guide]: https://github.com/jjant/runty8/blob/master/CONTRIBUTING.md
[runty8-open-issues]: https://github.com/jjant/runty8/issues
[pico8-site]: https://www.lexaloffle.com/pico-8.php
[runty8-logo]: https://user-images.githubusercontent.com/15112080/188467323-037617cf-7dbc-4988-bbd7-fbafd1524455.png
[runty8-template]: https://github.com/jjant/runty8#making-your-own-games

## Learning Material Updates

## Tooling Updates

## Library Updates

### [Inox2d][inox2d]

![The Japanese character for "inochi" set into a sprocket](inox2d_logo.svg)

[Inox2d][inox2d] ([Discord][inox2d-discord]) by the Inox2d Workgroup
is an experimental official Rust implementation
of the [Inochi2D] puppet animation technology.
Inochi2d is notably used by the popular vtuber [@AsahiLina].

Currently, Inox2d is still not on par with the [reference implementation][Inochi2D-src].
Basic features like [animations][inox2d-animations] and
a proper [camera API][inox2d-camera] have yet to be worked on.

Users who really want to use it should instead go with the reference implementation.
If using Rust, through the official [inochi2d-rs] bindings.

Currently, Inox2d contributors are working on a [WGPU renderer backend][inox2d-wgpu].
They are also looking forward towards an [official Bevy integration][inox2d-bevy]!

[inox2d]: https://github.com/Inochi2D/inox2d
[inox2d-discord]: https://discord.com/invite/abnxwN6r9v
[Inochi2D]: https://inochi2d.com
[Inochi2D-src]: https://github.com/Inochi2D/inochi2d
[@AsahiLina]: https://youtube.com/@AsahiLina
[inox2d-animations]: https://github.com/Inochi2D/inox2d/issues/5
[inox2d-camera]: https://github.com/Inochi2D/inox2d/issues/7
[inox2d-wgpu]: https://github.com/Inochi2D/inox2d/pull/6
[inochi2d-rs]: https://github.com/Inochi2D/inochi2d-rs
[inox2d-bevy]: https://github.com/Inochi2D/inox2d/issues/1

### [bevy_rpg]

![an UI showing the currently running dialog in the bottom
and some control buttons in the top-right corner](bevy-rpg.png)

[bevy_rpg] ([Discord channel][bevy-rpg-discord]) by [@fianathedevgirl]
is a plugin allowing RPG or visual novel dialogs
to be made with the Bevy game engine.

At the moment, it can be used for very basic dialogs.
"Choose dialog" or text input dialog are still not implemented
and the dialog controller buttons doesn't work yet.

If you are interested in seeing how it should be used in production,
checkout ["Project Flara"][project-flara]. It's a prototype/demo game
made by the same author showcasing a JRPG-ish indie game written in Rust.
The author also made a basic example [here][bevy-rpg-example].

[bevy_rpg]: https://github.com/project-flara/bevy-rpg
[bevy-rpg-discord]: https://discord.com/channels/676678179678715904/1054506073240899684
[@fianathedevgirl]: https://github.com/fianathedevgirl
[project-flara]: https://github.com/project-flara/project-flara
[bevy-rpg-example]: https://github.com/project-flara/bevy-rpg/blob/main/examples/basic.rs

### [lpcg][lpcg_crate]

![character sprite generator](lpcg.png)
_A new library which generates character sprites_

lpcg ([Crates.io][lpcg_crate], [GitHub][lpcg_github]) by
[bux][bux] is a library which generates character sprites,
based on assets from the [Liberated Pixel Cup][lpc].

[lpcg_crate]: https://crates.io/crates/lpcg
[lpcg_github]: https://github.com/buxx/lpcg/
[lpc]: https://lpc.opengameart.org/

### [egui_dnd]

![egui_dnd in action](egui_dnd.gif)
_A [showcase](https://lucasmerlin.github.io/egui_dnd/) of egui_dnd_

[egui_dnd] ([github][egui_dnd_github], [crates.io][egui_dnd_crates_io]) by [@lucasmerlin]
is a new drag and drop sorting crate for egui. While egui itself includes some drag
and drop support, it's not intuitive to use. This crate provides a simple
abstraction over egui's drag and drop features.

The first release contains initial support for vertical sorting. If there
is interest, more features could be added.

_Discussions: [/r/rust](https://reddit.com/r/rust/comments/zpo4w9/egui_dnd)_

[egui_dnd]: https://lucasmerlin.github.io/egui_dnd/
[egui_dnd_github]: https://github.com/lucasmerlin/egui_dnd
[egui_dnd_crates_io]: https://crates.io/crates/egui_dnd
[@lucasmerlin]: https://github.com/lucasmerlin

### [bevy_rapier_collider_gen][brcg-repo]

![scene displaying generated colliders](brcg.png)

[bevy_rapier_collider_gen][brcg-repo] by [@shnewto] is a library
for generating bevy_rapier2d colliders for bevy apps, from images with
transparency.

Features include out of box support for generating:

- Convex polyline colliders
- Polyline colliders
- Convex hull colliders
- Heightfield colliders
- Other colliders or geometries by getting edge coordinates in "drawing order"
- Multiple colliders from a single image

For more, in pictures, see the picture book retrospective
["misadventures in collider generation"][brcg-retro].

[brcg-repo]: https://github.com/shnewto/bevy_rapier_collider_gen
[brcg-retro]: https://drinkspiller.com/bevy-rapier-collider-gen
[@shnewto]: https://github.com/shnewto

### [Mun v0.4.0][mun-release]

[![Mun logo](mun-logo.svg)][Mun]

[Mun] is a scripting language for gamedev focused on quick iteration times
that is written in Rust.

The previous Mun release dates back over one and a half years. Since then -
slowly but steadily - the Mun Community and Core Team have been working towards
Mun v0.4.0 and it’s finally here!

Mun v0.4 does not only bring array support to Mun, but it also lays the
groundwork for a plethora of language features that require indirect types and
recursion. For a full list have a look at the [changelog][mun-changelog], but
the main improvements are:

- Dynamically-sized arrays
- Simplified function invocations from Rust
- Simplified struct API for Rust
- Apple M1 & experimental iOS support
- Upgrade to LLVM 13
- Support for runtime usage in entity component systems (ECS)

[Mun]: https://mun-lang.org
[mun-release]: https://mun-lang.org/blog/2022/12/12/release-mun-v0-4-0/
[mun-changelog]: https://github.com/mun-lang/mun/releases/tag/v0.4.0

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

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
[Mastodon](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
