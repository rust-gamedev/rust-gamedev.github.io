+++
title = "This Month in Rust GameDev #23 - June 2021"
date = 2021-07-01
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the {TODO}th issue of the Rust GameDev Workgroup's
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

![Egregoria in 3D](egregoria.jpg)

[Egregoria] ([GitHub][Egregoria], [Discord][egregoria-discord])
by [@Uriopass]
is a simulation oriented city builder that tries
to replicate modern society as well as possible.

It recently upgraded from a 2D top-down view to a
3D third-person camera as seen in the screenshot above.

Elevated roads and bridges are now possible, allowing to build
[complex highway interchanges][highway-screenshot].

Some technical details around the renderer with more screenshots,
along with an architectural overview of the project can be read in the
[9th devlog][egregoria-blog-post].

[Egregoria]: https://github.com/Uriopass/Egregoria
[@Uriopass]: https://github.com/Uriopass
[egregoria-blog-post]: https://douady.paris/blog/egregoria_9.html
[egregoria-discord]: https://discord.gg/CAaZhUJ
[highway-screenshot]: http://douady.paris/blog/img/blog_9/interchange.jpg

### [Open Combat][opencombat]

![Open Combat logo](open_combat.jpg)

[Open Combat][opencombat]
([/r/OpenCombatGame](https://reddit.com/r/OpenCombatGame),
[Discord](https://discord.gg/YD2V7XsBQZ),
[Forum](https://discourse.opencombat.bux.fr/))
is a real time tactical game directly inspired from
[Close Combat Series](https://en.wikipedia.org/wiki/Close_Combat_(series)).
The player takes control of soldier units and orders them to win the battles
from a top down 2D view.

The project recently started with Rust language after a Python language proof of
concept in 2017. More info is available at [opencombat.bux.fr][opencombat],
and you can find a
[presentation](https://youtube.com/watch?v=pxVgjBKXlIw) video and a game
making of [video](https://youtube.com/watch?v=3TOEZ7krhvI) on YouTube.

[opencombat]: https://opencombat.bux.fr

### [Battleship.rs](https://github.com/deepu105/battleship-rs)

![Battleship gameplay](battleship.gif)

[Battleship.rs](https://github.com/deepu105/battleship-rs) by
[Deepu](https://twitter.com/deepu105) is an open source Battleship game for
the terminal built in Rust using the [tui-rs](https://github.com/fdehau/tui-rs)
crate.

The game uses different ship shapes, unlike the traditional vertical/horizontal
shapes, and has multiple game rules to choose from. There are two difficulty
levels as well. The game is supported in Linux, Mac and Docker.

If you have docker installed, you can play the game instantly by running

```bash
docker run --rm -it deepu105/battleship:main
```

The next iteration would be to support a WebAssembly version of the same.

### [Blightmud][blightmud]

![Blightmud logo](blightmud.png)

[Blightmud][blightmud] ([Discord](https://discord.gg/qnxgUC5)) is a mud client
for the terminal inspired by [tintin++][tintin] and [tinyfugue][tinyfugue]
allowing users to connect and get immersed in the worlds offered by text based
online multi user dungeons known as muds.

The project was birthed in April of 2020 and has come a long way since.  It now
offers granular scripting access using [lua][lua], plugin handling, built in
text-to-speech (via [Speech dispatcher][speechd]), split view scrolling, modern
telnet protocols and TLS connections to name a few.

[blightmud]: https://github.com/Blightmud/Blightmud
[tintin]: https://tintin.mudhalla.net/
[tinyfugue]: http://tinyfugue.sourceforge.net/
[lua]: https://www.lua.org/
[speechd]: https://freebsoft.org/speechd

### [The Hat Chooses the Wizard][hatchooseswizard]

![Level 1-4 of the game "The Hat Chooses the Wizard" running on a Game Boy
Advance](hatchooseswizard.jpg)
_Runs on real hardware!_

The Hat Chooses the Wizard is a 2D platformer for the Game Boy Advance.

It was made for this year's Game Maker's Toolkit (GMTK) game jam with the theme
joined together and came in the top 25% of over 5800 entries. The game plays
over 12 levels with the core mechanic being to throw your hat and then
accelerate towards it. You can play it on a web based emulator embedded on the
[itch][hatchooseswizard] page.

The game is written in pure Rust and uses [agb][agblibrary] to
interface with the hardware. The library is designed to allow you to write games
without needing a detailed understanding of the hardware while still giving full
access to all of its capabilities. It is under active development with
plenty more features on the way.

You can find the source code for the game [here][hatchooseswizardsource] and all
feedback is welcome.

[hatchooseswizard]: https://lostimmortal.itch.io/the-hat-chooses-the-wizard
[hatchooseswizardsource]: https://github.com/corwinkuiper/joinedtogether
[agblibrary]: https://github.com/corwinkuiper/agb

### [Themengi]

![User highlighting objects in the game world and parsing the phrase
"dang puru rupuu kythengi" into the action "open", object "door", and mods
"red" and "left".](themengi.gif)
_Demonstration of natural language parser with temporary words and grammar._

[Themengi] ([Discord][themengi-discord], [Twitter][themengi-twitter])
is a puzzle adventure game where you learn an alien language,
with completely unknown words and grammar, to navigate the world
and find your way home.

This month the [first devlog][themengi-video] for
Themengi was published, discussing its natural language parser using
Head-Driven Phrase Structure Grammar, the choice to use Bevy, a texture
upscaling technique for faithful pixel art rendering, and implementing an
outline shader in the Bevy render pipeline.

[Themengi]: https://vgel.me/themengi
[themengi-discord]: https://discord.gg/GpparbnXPC
[themengi-twitter]: https://twitter.com/voooooogel
[themengi-video]: https://youtube.com/watch?v=gtIphiK7tMs

### [Dango]

[![Dango bouncing and jumping around](dango.gif)][Dango]
_Cute rice dumplings_

[Dango] ([GitHub][dango-github]) is a little multiplayer blob physics sandbox
made by [@ErnWong] as a tribute to the [Dango Daikazoku][dango-daikazoku] from
[Clannad]. It was made using various libraries from the Rust community,
including the [Bevy] game engine, the [NPhysics] physics engine, and the
[CrystalOrb] networking library. To avoid the costs of running a server, Dango
currently runs the server in the browser and generates a unique URL that lets
other players to join using WebRTC.

[Dango]: http://ernestwong.nz/dango-tribute/server/
[dango-github]: https://github.com/ErnWong/dango-tribute
[@ErnWong]: https://github.com/ErnWong
[dango-daikazoku]: https://www.youtube.com/watch?v=XXDxZ0YGWG8
[Clannad]: https://en.wikipedia.org/wiki/List_of_Clannad_episodes
[Bevy]: https://bevyengine.org/
[NPhysics]: https://nphysics.org/
[CrystalOrb]: https://github.com/ErnWong/crystalorb

### [The Process]

![The new terrain editor in The Process](the_process.gif)
_Building the world, one voxel at a time_

[The Process] by @setzer22 is an upcoming game about factory building, process
management and carrot production, built with Rust using the Godot game engine!

In this month, the main focus has been towards the addition of a new terrain
editor to speed up the creation of game levels. Terrain meshes are built using
smooth voxels using the implementation in the [building
blocks](https://docs.rs/building_blocks_core) crate.

This month has seen the following changes and improvements:

- The new [terrain
  editor](https://twitter.com/PlayTheProcess/status/1406707803637551107), with a
  minimalistic GUI built in Godot itself.
- A new [island](https://gfycat.com/talkativeneatcatfish), fully made and
  procedurally textured with the new editor
- Implemented random factory maintenance
  [events](https://twitter.com/PlayTheProcess/status/1403986026402619393).
- Migration of several old GDScript code into Rust, using the ECS pattern, like
  the system for character
  [movement](https://twitter.com/PlayTheProcess/status/1411410261651738635).

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/o3o8d0/experimenting_with_the_building_blocks_crate_for/),
[Twitter](https://twitter.com/PlayTheProcess)_

[The Process]: https://twitter.com/PlayTheProcess/

## Engine Updates

## Learning Material Updates

### [A Trig-less Line of Sight Algorithm for 2D Games][lineofsight]

![2D Sight Example](lineofsight.png)

[@basstabs] published a tutorial which explains how to write a
line of sight algorithm for 2D games in Rust without using trigonometry or
square roots. It includes vector diagrams and typeset math to explain the ideas
behind each stage of the algorithm, source code for each step, tests to verify
accuracy of the methods, and suggestions for further improvements.
Additionally, the
[repository](https://github.com/basstabs/2d-line-of-sight) contains benchmarks
and a sample application written in [ggez](https://crates.io/crates/ggez).

_Discussions: [/r/rust_gamedev](
https://www.reddit.com/r/rust\_gamedev/comments/nx79kq/)_

[lineofsight]: https://basstabs.github.io/2d-line-of-sight/
[@basstabs]: https://github.com/basstabs

## Tooling Updates

## Library Updates

### [backroll-rs] and [GGRS]

[backroll-rs] ([Discord](https://discord.gg/VuZhs9V),
[crates.io](https://crates.io/crates/backroll)) by [@james7132] and
[GGRS]([crates.io](https://crates.io/crates/ggrs)) by [@g_schup] are pure
Rust implementations of the [GGPO] rollback networking library.

![Evo Moment 37](rollback.jpg)
_[Evo Moment 37](https://www.youtube.com/watch?v=JzS96auqau0):
Only offline or with rollback!_

Rollback networking is a peer-to-peer network technique designed to hide
network latency in fast-paced games with precise inputs. Traditional techniques
account for network transmission time by delaying the game execution, resulting
in a sluggish game-feel. Rollback uses input prediction and speculative
execution instead. Upon receiving inputs from remote clients, resimulation of
incorrect game states occurs. This allows for gameplay that "feels just
like offline". The open source standard for rollback netcode [GGPO] is used
in successful games like Skullgirls, Guilty Gear XX Accent Core +R or
Fightcade. For further explanation about rollback,
[click here](https://ki.infil.net/w02-netcode.html).

Two projects in Rust were independently created to provide a working
implementation as well as helpful resources for developers.
backroll-rs features an added abstraction for the transportation layer and
also provides a bevy plugin, [bevy-backroll]. GGRS replaces the
C-style callback API of GGPO with a simpler, more understandable control flow.
The authors of both libraries recommend backroll-rs for developement,
as it is currently more actively collaborated on.
GGRS is recommended as a learning recource and entry point,
with a plethora of internal documentation and explanation.

The main requirement to make use of both presented libraries is determinism
in your game execution. Resimulation requires that the result of progressing
the game state depending on the given inputs yield the exact same results
every time. Additionally, you need to be able to load, save and progress
your gamestate without rendering the outcome.

If you are interested in integrating rollback networking into your game or
just want to chat with other rollback developers (not limited to Rust),
check out the [GGPO Developers Discord]!

[backroll-rs]: https://github.com/HouraiTeahouse/backroll-rs
[bevy-backroll]: https://github.com/HouraiTeahouse/backroll-rs/tree/main/bevy_backroll
[GGPO Developers Discord]: https://discord.gg/8FKKhCRCCE
[GGRS]: https://github.com/gschup/ggrs
[GGPO]: https://www.ggpo.net/
[@g_schup]: https://twitter.com/g_schup
[@james7132]: https://twitter.com/james7132

### [CrystalOrb]

[![CrystalOrb demo animation](crystalorb.gif)][crystalorb-demo]
_Interactive [demo][crystalorb-demo] that uses the [Rapier] physics engine._

[CrystalOrb] by [@ErnWong] is a new networking library that aims to help
fast-paced client-server games synchronize their game state across multiple
clients. Just like [backroll-rs] and [GGRS], each CrystalOrb client predicts
the next game state without waiting for other remote players' inputs to arrive.
Unlike backroll-rs's and GGRS's peer-to-peer approach which only send input
data between its peers, CrystalOrb relies on having a server to send
authoritative snapshots of the entire game state to each client. In response,
each client unconditionally rolls-back to that snapshot. Although this may lead
to higher network and memory usage, it means that CrystalOrb clients can join
and leave at any time, and games that cannot guarantee full-determinism can
still work with CrystalOrb.

This library was written as a learning exercise for the author, and as such,
the author warns that this library may not be suitable for serious games.

There is an [interactive demo][crystalorb-demo] of CrystalOrb that features the
[Rapier] physics engine.

[CrystalOrb]: https://github.com/ErnWong/crystalorb
[@ErnWong]: https://github.com/ErnWong
[crystalorb-demo]: https://ernestwong.nz/crystalorb/demo
[backroll-rs]: https://github.com/HouraiTeahouse/backroll-rs
[GGRS]: https://github.com/gschup/ggrs
[Rapier]: https://rapier.rs

### [erupt]

![erupt logo](erupt.svg)

[erupt] by [@Friz64] provides bindings to the Vulkan API.

Since being last mentioned in the newsletter shortly after its release, erupt
has undergone significant development. The generator, erupt's heart, has been
rewritten from scratch with the aim to improve maintainability. On top of that,
many bugs were fixed, the function loader was rewritten and usability was
improved while always keeping up to date with the latest Vulkan Headers as best
as possible.

The ecosystem has gained traction, with many people using the crate for their
projects. Pure Rust Vulkan allocators with support for erupt have been released.

[erupt]: https://gitlab.com/Friz64/erupt
[@Friz64]: https://blog.friz64.de/about

### [wgpu] family re-union

![wgpu family reunion](wgpu-family-reunion.svg)

[wgpu] is a [WebGPU] implementation in Rust. It is safe, efficient,
and portable: it can target both native and the Web.

[Family reunion] is by far the biggest change in `wgpu` project since
the inception. First, the Rust API of [wgpu-rs] was moved to the main
[wgpu] repository. Second, the whole base was relicensed under MIT/Apache2.

[gfx-hal] - the Vulkan Portability-like graphics API abstraction -
was detached from the project. Instead `wgpu` got its own in-house unsafe
abstraction called "wgpu-hal" developed within the [wgpu] repository.

The team released [wgpu-0.9] right before this transition, to give the new
graphics infrastructure more time to take shape. At the time of writing,
supported backends on the new HAL include Vulkan, Metal, and OpenGL ES3.

Finally, the testing infrastructure received a major upgrade. It started
rendering the examples on the available adapters and compraring the results
with reference images.
This includes automatic testing using software adapters on CI.

[wgpu]: https://github.com/gfx-rs/wgpu
[wgpu-rs]: https://github.com/gfx-rs/wgpu-rs
[gfx-hal]: https://github.com/gfx-rs/gfx
[wgpu-0.9]: https://crates.io/crates/wgpu/0.9.0
[Family reunion]: https://github.com/gfx-rs/wgpu/milestone/9?closed=1

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
