+++
title = "This Month in Rust GameDev #29 - December 2021"
transparent = true
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 29th issue of the Rust GameDev Workgroup's
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
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
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

## Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The thirteenth Rust Gamedev Meetup happened in December. You can watch the
recording of the meetup [here on Youtube][gamedev-meetup-video]. The meetups
take place on the second Saturday every month via the [Rust Gamedev Discord
server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch].

[gamedev-meetup-video]: https://youtu.be/S7aoi_4a2uE
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev

## Game Updates

### [Tet-Rust][tetrust-github]

![Tet-Rust screenshot](tet-rust-1-sm.gif)
_Screenshot of Tet-Rust_

Tet-Rust ([GitHub][tetrust-github]) by
[@Syn-Nine][synnine-twitter] is a mini game based on the famous falling puzzle
block game.

The game was created to exercise Syn9's [Rust Mini Game Framework][mgfw] and is
part of an open source [repository][s9-minigame-repo] of several mini-games
that use this framework.

[tetrust-github]: https://github.com/Syn-Nine/rust-mini-games/tree/main/2d-games/tet-rust
[synnine-twitter]: https://twitter.com/Syn9Dev
[mgfw]: https://github.com/Syn-Nine/mgfw
[s9-minigame-repo]: https://github.com/Syn-Nine/rust-mini-games/

### The Beast of Monte Carlo

![The Beast of Monte Carlo Screenshot](bomc-shots.png)
_Screenshot of The Beast of Monte Carlo_

The Beast of Monte Carlo by [@Syn-Nine][synnine-twitter] is a mini role-playing
game in development to help work out new features for Syn9's
[Rust Mini Game Framework][mgfw].

This month's progress included:

- prototyping tilemap and frame-based animation to make a simple walkaround
engine
- creating a general purpose maze generation algorithm and porting random world
map generation from C++ to Rust
- creating new sprite artwork and animation, as well as mocking up the battle
system

The gameplay and art is influenced by games such as Final Fantasy VI and Lufia
II with a heavy focus on procedural content generation.

### [10x Sprint Master]

![In-game screenshot of 10x Sprint Master,
depicting a project workboard and two team members.](10xsprintmaster.png)

[10x Sprint Master] ([GitHub][10xsprintmaster-github]) by [@E_net4]
is a simulation game where you play the role of
a software development lead engineer.
Write tasks, coordinate a team of developers,
fix bugs and manage feature delivery,
while trying to mitigate the torments of technical debt.

The game was submitted to GitHub Game Off 2021,
and was written using [Yew] with graphics done in pure HTML and CSS.

The author also published a [blog post on Dev.to][10xsprintmaster-dev]
about the game's technical and social dimensions.

[10xsprintmaster-github]: https://github.com/Enet4/10xSprintMaster
[10x Sprint Master]: https://e-net4.itch.io/10x-sprint-master
[Yew]: https://yew.rs
[@E_net4]: https://twitter.com/E_net4
[10xsprintmaster-dev]: https://dev.to/e_net4/10x-sprint-master-a-technical-and-social-experiment-ahp

### [Molecoole][molecoole-steam]

[![A molecoole with tons of cannons](molecoole1.png)][molecoole-steam]

Molecoole is a top-down shooter roguelike where you build your character
from different atoms. Each atom has a unique ability providing
tons of variety between playthroughs.
It's made using the [Bevy Engine](https://github.com/bevyengine/bevy).

This month Molecoole devs focused on
adding more [variety][variety-twitter]: different enemies, atoms etc...

They also launched their first teaser [video][teaser-twitter],
it gives us a glimpse into 3 different bioms, bosses, enemies and more.

[molecoole-steam]: https://store.steampowered.com/app/1792170/Molecoole/
[variety-twitter]: https://twitter.com/kiss_mrton/status/1473725282918014977
[teaser-twitter]: https://twitter.com/kiss_mrton/status/1467242884927614976

### [Veloren][veloren]

![Winter in a town](veloren.jpg)
_A peaceful winter night_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In December, Veloren ran a Christmas week. From the 20th to the 30th of
December, there were several winter-themed changes on the main server. Snow was
everywhere, decorations were added to locations, and NPC wore Christmas hats!
The 150th Veloren blog was also released in December. An experimental new
section of the newsletter gives video recaps of the last week's blog post.

The ability to edit the appearance of characters was added to the game. Work was
done on armor tooltips to make them more clear. Skiing is in the works, with
some work to still be done on animations and physics. New images were created
for item displays, which are now stored as `.vox` files.

December's full weekly devlogs: "This Week In Veloren...":
[#149][veloren-149],
[#150][veloren-150],
[#151][veloren-151],
[#152][veloren-152].

[veloren]: https://veloren.net
[veloren-149]: https://veloren.net/devblog-149
[veloren-150]: https://veloren.net/devblog-150
[veloren-151]: https://veloren.net/devblog-151
[veloren-152]: https://veloren.net/devblog-152

### Country Slice

![Country Slice](country_slice.gif)

[Country Slice][country-slice-github] is
[@anastasiaopara][country-slice-twitter]'s hobby project, where users can draw a
small scene, and their input is amplified with real-time procedural
generation.

This month's biggest update was adding an ability to draw
paths that, if intersected with walls, automatically generate arches. You can
read a twitter thread that brifly covers how it
[was optimized to run in 1-2ms][country-slice-twitter-opt].

[country-slice-github]: https://github.com/anopara/country-slice
[country-slice-twitter]: https://twitter.com/anastasiaopara/
[country-slice-twitter-opt]: https://twitter.com/anastasiaopara/status/1472627194409230343

### Fish Fight

![Fish demo scene](fishfight-poster.png)

Fish Fight ([GitHub][fish-github], [Discord][fish-discord],
[website][fish-website])

Fish Fight is a tactical 2D shooter, played by up to 4 players.
It is also a 2D-pixels-platformer game engine optimized for modding.

In-game level editor was [released][fish-editor], along with an [editor tutorial][fish-tutorial].
A retrospective devlog was posted: [Fish Fight's past, present, and future][fish-announce].

[fish-github]: https://github.com/fishfight/FishFight
[fish-discord]: https://discord.gg/4smxjcheE5
[fish-website]: https://fishfight.org/
[duck-game]: https://store.steampowered.com/app/312530/Duck_Game/
[fish-editor]: https://github.com/fishfight/FishFight/releases/tag/v0.3
[fish-tutorial]: https://fishfight.github.io/FishFight/editor.html
[fish-announce]: https://spicylobster.itch.io/fishfight/devlog/332434/fish-fights-past-present-and-future

## Engine Updates

### [Rusty Engine 3.0]

![An example Rusty Engine game](rusty_engine3.png)
_The "Road Race" game prototype running under Rusty Engine 3.0_

[Rusty Engine] by [Nathan Stocks] is a game engine for people who are learning Rust.

Version 3.0 is a large release with many breaking changes. Notable new features
include: [a full tutorial], custom asset loading (sprites, sounds, fonts),
customizable game state, an interactive collider creator, and much more.
See [the changelog for 3.0] for the full details.

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/rwyrqx/rusty_engine_30/),
[twitter](https://twitter.com/nathanstocks/status/1476724623903367168)_

[Rusty Engine 3.0]: https://github.com/CleanCut/rusty_engine/blob/main/CHANGELOG.md#300---2021-12-30
[Rusty Engine]: https://github.com/CleanCut/rusty_engine
[a full tutorial]: https://cleancut.github.io/rusty_engine/
[the changelog for 3.0]: https://github.com/CleanCut/rusty_engine/blob/main/CHANGELOG.md#300---2021-12-30
[Nathan Stocks]: https://github.com/CleanCut

## Learning Material Updates

## Tooling Updates

### [Blackjack]

![Blackjack demo: Connecting visual nodes and tweaking various parameters to
procedurally generate a beveled box in real-time](blackjack.gif)

[Blackjack] by @setzer22 is a new procedural modelling application made in Rust,
using `rend3`, `wgpu` and `egui`. It follows the steps of applications like
Houdini, or Blender's geometry nodes project and provides a node-based
environment to compose procedural recipes to create 3d models.

The project was recently announced, and an official open-source release is
planned during the following month. Here's a highlight of the upcoming features:

- A node-based editor to compose operations like 3d math, vertex/edge/face
  selections and mesh edit operations.
- Several polygon edit operations like bevel, chamfer and extrude.
- Viewport display with support for displaying primitive ids and triangle
  half-edge winding.

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/rufvlc/meet_blackjack),
[/r/rust](https://reddit.com/r/rust/comments/rug24x/media_meet_blackjack)_

[Blackjack](https://github.com/setzer22/blackjack)

### [Graphite][graphite-repo]

![Graphite](graphite_splash.png)

Graphite ([GitHub][graphite-repo], [Discord][graphite-discord],
[Twitter][graphite-twitter]) is an in-development vector and raster graphics
editor built on a non-destructive node-based workflow.

The completion of [Sprint 10][graphite-sprint-10] wraps up a productive month
of features and stability improvements. Documents persist page reloads via
IndexedDB browser storage. The layer panel got some love. Vector anchor points
can be dragged (beginnings of the Path/Pen Tools). Per-tool footer bar hints
teach possible user input actions. And a big code cleanup/refactor took place
behind the scenes.

Additional new features and QoL improvements: artboards, panel resizing, the
Navigate Tool, outline view mode, support for touch input and non-Latin
keyboards, an *About Graphite* dialog with version info, plus dozens of bugs
and crashes were resolved.

[Try it right now in your browser.][graphite-live-demo] Graphite is making
steady progress towards becoming a non-destructive, procedural graphics editor
suitable for replacing traditional 2D DCC applications. [Join the
Discord][graphite-discord] and get involved!

[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://discord.graphite.design
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-live-demo]: https://editor.graphite.design
[graphite-sprint-10]: https://github.com/GraphiteEditor/Graphite/milestone/10?closed=1

## Library Updates

### [assets_manager]

[assets_manager] provides a high-level API to load and cache external resources
with a focus on performance and hot-reloading.

In addition to built-in support for new formats like WebP, glTF and fonts,
[version 0.7] brings a few quality of life improvements. Additionnally,
hot-reloading is now supported for custom asset sources.

These features led to a new crate: [ggez-assets_manager], whose goal is to ease
use of assets_manager with ggez engine!

[assets_manager]: https://github.com/a1phyr/assets_manager/
[version 0.7]: https://github.com/a1phyr/assets_manager/releases/tag/0.7.0
[ggez-assets_manager]: https://github.com/a1phyr/ggez-assets_manager/

### [wgpu]-0.12 release

![albedo pathtracer](wgpu-pathtracer.png)
_experimental pathtracer on wgpu from @llamajestic_

The team concluded 2021 with the release of wgpu-0.12 and naga-0.8.
Details can be found on the [gfx-rs blog] and [wgpu reddit discussion].
Lots of fixes are shipped alongside one much-awaited improvement:
the error messages from validating shaders were finally made readable:

```rust
   ┌─ interpolate.wgsl:21:25
   │
21 │    out.linear_centroid = vec2<f32>(64.0, 125.0, 1.0);
   │                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ naga::Expression [16]

Entry point vert_main at Vertex is invalid: 
        Expression [16] is invalid
        Composing expects 2 components but 3 were given
```

[wgpu]: https://github.com/gfx-rs/wgpu
[gfx-rs blog]: https://gfx-rs.github.io/2021/12/25/this-year.html
[wgpu reddit discussion]: https://www.reddit.com/r/rust_gamedev/comments/rjci2n/wgpu012_is_released/

### [Pixels] 0.9.0 👾

[Pixels] is a tiny hardware-accelerated pixel frame buffer. It is popularly
used for emulators, software renderers, 2D pixel art games, and desktop
utilities.

Version 0.9.0 brings a few breaking changes. Notably `wgpu` was updated to
0.12 and it now requires Edition 2021. Full details are available in the
[release notes][pixels-changelog].

[pixels]: https://github.com/parasyte/pixels
[pixels-changelog]: https://github.com/parasyte/pixels/releases/tag/0.9.0

### [bevy_proto]

![YAML configuration files for bevy_proto](bevy_proto.png)

[bevy_proto] is a small plugin for the [Bevy] game engine, allowing entities to
be defined in their own config files (called "Prototypes"). These config files
are then read into a resource that you can use to spawn their pre-defined
entities from within any Bevy system.

The recently released 0.2 version, adds a templating feature (as suggested
by [@chrisburnor](https://github.com/chrisburnor)). This new feature allows any
entity prototype to define one or more templates, from which it will inherit
additional component definitions (including those from a template's templates).

This makes defining many entities with common functionality (such as enemy types
or weapons) much easier and reduces code duplication for an overall better
experience.

For more info, check out
the [original PR](https://github.com/MrGVSV/bevy_proto/pull/2), or explore
the [assets](https://github.com/MrGVSV/bevy_proto/tree/main/assets)
and [examples](https://github.com/MrGVSV/bevy_proto/tree/main/examples) folders.

[bevy_proto]: https://github.com/MrGVSV/bevy_proto
[Bevy]: https://github.com/bevyengine/bevy

### [bevy-remote-devtools]

![Demo of the Tauri based development app](bevy-remote-devtools.gif)

[bevy-remote-devtools] is a plugin and UI application for the [Bevy] game
engine allowing to view entities and their components, asset resources
like meshes, events from the [tracing] crate and system timings using a
very basic profiler. It also supports all of that over network so
debugging can be done from any remote machine and vice versa.

The first release of the 0.1 version comes with basic support for the
aforementioned features. It contains a plugin for [Bevy] that will extend
you application with a small REST HTTP API that can be consumed by the
included [Tauri] based UI application.

[bevy-remote-devtools]: https://github.com/reneeichhorn/bevy-remote-devtools
[Bevy]: https://github.com/bevyengine/bevy
[tracing]: https://github.com/tokio-rs/tracing
[Tauri]: https://tauri.studio/en/

### [kajiya]

![A rendering of a warmly-lit ruins environment](kajiya.jpg)

[kajiya] ([Discord][kajiya_discord])
by [@h3r2tic] is an experimental real-time global illumination
renderer made with Vulkan, and utilizing [rust-gpu][rust-gpu].

Last month the project was released into open source along with
a tiny sample: [Cornell McRay t'Racing][cornell-mcray].

The renderer is permissively licensed, and includes several cutting-edge
algorithms, including ray-traced effects.
It isn’t built to ship games (yet), but serves as a convenient
platform for learning and research.

_Discussions:
[medium](https://medium.com/embarkstudios/homegrown-rendering-with-rust-1e39068e56a7),
[r/rust](https://www.reddit.com/r/rust/comments/rkqmk3/homegrown_rendering_with_rust/),
[twitter (kajiya)](https://twitter.com/h3r2tic/status/1472957370972127233),
[twitter (cornell-mcray)](https://twitter.com/h3r2tic/status/1473856011941425155)._

[kajiya_discord]: https://discord.gg/dAuKfZS
[cornell-mcray]: https://github.com/h3r2tic/cornell-mcray/
[kajiya]: https://github.com/EmbarkStudios/kajiya/
[rust-gpu]: https://github.com/EmbarkStudios/rust-gpu
[@h3r2tic]: https://github.com/h3r2tic

### [Shard]

[Shard] by @HindrikStegenga is an Archetype-based Entity Component System.

Version 0.2 is a complete rewrite of the ECS, with the main new feature
that it supports no_std environments.

_Discussions: [/r/rust]_

[/r/rust]: https://reddit.com/r/rust/comments/r6mn0g/shard_020
[Shard]: https://github.com/HindrikStegenga/Shard

### [rapid-qoi]

[rapid-qoi] by @zakarumych is an implementation of QOI format written in Rust.

QOI format can fit nicely as a replacement for PNG
and other common loseless image formats
for game engines given its simplicity and blazing fast encoding and decoding.

[rapid-qoi] has simple API, zero unsafe, zero dependencies,
fast build times and high performance.
It is compatible with finalized QOI spec publised in December.

[rapid-qoi]: https://github.com/zakarumych/rapid-qoi

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
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
