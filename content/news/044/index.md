+++
title = "This Month in Rust GameDev #44 - March 2023"
transparent = true
date = 2023-04-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 44th issue of the Rust GameDev Workgroup's
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

## Game Updates

### [8bit Duels]

![movement_animations](8bit-duels-game.png)
_An 8bit Duels match_

[@ThousandthStar] is creating a simple multiplayer turn-based strategy using the
[Bevy Engine]. The [latest devlog] brings features like ownership indicators,
movement and attack animations, and a chat system.

The game is under development. The [8-bit Discord] is the best place to talk
about the game.

8bit Duels will be getting UI updates next, and the first version should release
soon after that. Other troops are coming as well.

_Discussions: [8-bit Discord]_

[8bit Duels]: https://thousandthstar.github.io/
[@ThousandthStar]: https://github.com/ThousandthStar
[Bevy Engine]: https://bevyengine.org/
[latest devlog]: https://thousandthstar.github.io/posts/8bd/8bd-part6/
[8-bit Discord]: https://discord.com/invite/NbBcF4bGU5

### [CyberGate][cybergate-yt]

![Hit and blackhole particle effects](cybergate.gif)
_Particles emit from bullet hits and blackholes_

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]),
an ambitious multiplayer project in development by CyberSoul,
aims to invite players into a constantly evolving universe.
Harnessing the power of procedural generation and artificial intelligence,
this work-in-progress aspires to provide an engaging experience
that emphasizes exploration and discovery across its diverse worlds.

The latest updates to CyberGate include:

- Skybox Animation and Transitions
- Dynamic Point Lights
- Particle System
- Post-processing Screen Shake for Hit Feedback
- Hit Particle Effects
- Blackhole

They released the 7th major update in March,
They are now working on universe generation alghoritms for the 8th.
Participate [by joining the Discord server][cybergate-dis].

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

### [ZOMBIE DEMO GAME]

![A person in a red suit shooting zombies with a pistol](zombie-demo-game.png)

[ZOMBIE DEMO GAME] is a small third person zombie shooter by [@LPGhatguy] and
[@evaera] that released this month.

It features an astonishing 10 minutes of gameplay, a built-in level editor, and
zombies! It was produced in order to practice shipping a game and uses a custom
engine using wgpu, hecs, and lots of other great crates from the ecosystem.

ZOMBIE DEMO GAME is available for Windows and Linux
[on itch.io][ZOMBIE DEMO GAME] today.

_Discussion: [Twitter](https://twitter.com/LPGhatguy/status/1632596982928687104)_

[@LPGhatguy]: https://twitter.com/LPGhatguy
[@evaera]: https://twitter.com/evaeraevaera
[ZOMBIE DEMO GAME]: https://lpghatguy.itch.io/zombie-demo-game

### Shifting Chamber

![Shifting Chamber Screen shot](shifting_chamber.png)

Shifting Chamber ([itch.io][shifting-chamber-itch],
[Github][shifting-chamber-github]) is a simple tactics game where
player, instead of moving the character, manipulates the map around it.
The goal is to defeat the enemies by forcing them into hazardous
positions - since they cannot be attacked directly.

The game is in an early prototype / proof of concept phase.
It is written with a help of the Bevy engine.
There is currently only a WASM build (freely available on the itch.io)

[shifting-chamber-itch]: https://maciekglowka.itch.io/shifting-chamber
[shifting-chamber-github]: https://github.com/maciekglowka/shifting_chamber

### [Jumpy]

![Live Map Editing Example](jumpy.gif)
_Live Map Editing!_

[Jumpy] ([GitHub][Jumpy], [Discord][jumpy_discord], [Twitter][jumpy_twitter]) by
[Spicy Lobster][spicy_lobster] is a pixel-style, tactical 2D shooter with a fishy
theme.

In the last month, the first [MVP release][jumpy_v0.6.0] of Jumpy was made. The
release adds some major new features including a live map editor, critters,
extended player animations, and basic AI. Soon afterward [an update][jumpy_v0.6.1]
was made with revised maps and some important bug fixes.

Along with the release is a new blog post, sharing thoughts on some of the lessons
learned during development:
[Jumpy v0.6 Retrospective][jumpy_retrospective].

The efforts are now focused on getting network play implemented, with a two
player LAN proof-of-concept already working. The hope is to get the remaining
network issues fixed and the online matchmaker connected before making another
release as soon as it's ready.

[Jumpy]: https://github.com/fishfolks/jumpy
[jumpy_v0.6.0]: https://github.com/fishfolk/jumpy/releases/tag/v0.6.0
[jumpy_v0.6.1]: https://github.com/fishfolk/jumpy/releases/tag/v0.6.1
[jumpy_twitter]: https://twitter.com/spicylobsterfam
[jumpy_discord]: https://discord.gg/4smxjcheE5
[spicy_lobster]: https://spicylobster.itch.io
[jumpy_retrospective]: https://fishfolk.org/blog/jumpy-0-6-retrospective/

### [Tunnet][tunnet-itch]

![Tunnet screenshot: a weird looking computer network](tunnet.jpg)
_Example of a puzzle in Tunnet_

Tunnet ([Steam][tunnet-steam], [Itch.io][tunnet-itch]) by
[@puzzled\_squid][puzzled_squid] is a short puzzle/exploration game where you
build a computer network in an underground complex.

This project is still WIP and a first [devlog][tunnet-post] has been
posted this month. The post describes the main gameplay loop as well as some
of the new environments recently added.

The game is developed using Bevy and is expected to be released late 2023.

[tunnet-itch]: https://puzzled-squid.itch.io/tunnet
[tunnet-steam]: https://store.steampowered.com/app/2286390/Tunnet
[tunnet-post]: https://puzzled-squid.itch.io/tunnet/devlog/507508/devlog-0-gameplay-loop-and-subnetworks
[puzzled_squid]: https://puzzledsquid.xyz

## Engine Updates

### hotline

![hotline_client](hotline_rdg44.jpg)
 _hotline live coding client_

hotline ([GitHub], [Blog], [Twitter]) is a modern, high-performance, hot-reload
graphics engine written in Rust. It aims to provide low-level access to modern
graphics API features, while at the same time providing high-level ergonomic
optimizations.  

It uses Bevy's ECS so the focus can remain primarily on the graphics
architecture. Direct3D12 is the only supported platform, but the graphics API is
abstracted to account for future ports to Vulkan and Metal. The project is in
its early stages but already has a decent amount of features showcasing
different render strategies, async command buffer generation, plugin based
architecture, and hot-reload support for Rust code, HLSL shaders, and render
configs. It supports ImGui with docking and multiple windows, video decoding,
complex image loading (cubemaps, arrays, volumes), and more.

[@polymonster] has been live streaming development on [Twitch] with archives
available on [YouTube]. Recently they have been designing a bindless material
system.

[@polymonster]: https://github.com/polymonster
[GitHub]: https://github.com/polymonster/hotline
[Blog]: https://www.polymonster.co.uk
[Twitter]: https://twitter.com/polymonster
[Twitch]: https://www.twitch.tv/polymonstr
[YouTube]: https://www.youtube.com/channel/UCQRmui5w4Urz-h4P9CL7rmA

## Learning Material Updates

### Developing an editor with egui

![Gif displaying the functionality of the editor](TheGrimsey-Editor.gif)

[@TheGrimsey] published a three-part series of articles about developing a Spell
Editor with egui.

- ["Databases & Editors (1/3)"] covers displaying egui windows & tables of
  entries.
- ["Editors (2/3): Editing entries"] elaborates on handling editing of entries &
  properties such as enums.
- Finally, ["Editors (3/3): Selection dialog & new entries"] talks about
  developing a selection dialog and creating new entries.

[@TheGrimsey]: https://mastodon.social/@TheGrimsey
["Databases & Editors (1/3)"]: https://thegrimsey.net/2023/03/07/Bevy-Four-Editor.html
["Editors (2/3): Editing entries"]: https://thegrimsey.net/2023/03/12/Bevy-Five-Editor-Two.html
["Editors (3/3): Selection dialog & new entries"]: https://thegrimsey.net/2023/03/21/Bevy-Six-Editor-Three.html

### [Writing NES assembly programs in a Rust DSL][writing-nes-programs-in-rust-video]

[![Title slide from presentation about writing NES assembly programs in Rust](nes-programming-in-rust-cover.jpg)
_Video: Talk about writing NES assembly programs in Rust_][writing-nes-programs-in-rust-video]

This is a talk about writing a program for the Nintendo Entertainment System
that exposes all of its audio processor registers through an interface that lets
the user flip bits using the controller and hear the result in real time. The
program is written in Rust using an Embedded Domain-Specific Language. The talk
demonstrates the features of the language and how they can be used to help
express NES assembly programs in Rust.

Some features of the EDSL:

- defining and calling assembly functions by string labels
- using Rust as a powerful macro language (e.g. generate code inside a for-loop)
- using Rust's type system to catch invalid combinations of instruction and
  addressing mode

The source code for the NES program described in the talk is
[here][nes-audio-playground-github] and there is a [demo of the tool on
youtube][nes-audio-tool-demo-video]. The PDF of the slides from the talk are
[here][writing-nes-programs-in-rust-pdf].

[writing-nes-programs-in-rust-video]: https://www.youtube.com/watch?v=hs-MrEoOX5Y
[nes-audio-playground-github]: https://github.com/gridbugs/nes-audio-playground
[writing-nes-programs-in-rust-pdf]: https://raw.githubusercontent.com/gridbugs/nes-programming-in-rust-sydney-rust-meetup-2023-03-01/main/slides.pdf
[nes-audio-tool-demo-video]: https://www.youtube.com/watch?v=QHoISiWdPXo

## Tooling Updates

### Tiger

![Tiger screenshot](tiger.png)

Tiger ([Github][tiger-github],
[itch.io][tiger-itch.io] by
[@agersant] is a visual tool to
author game spritesheets and their metadata.

Version 1.0 launched this month, which means Tiger is ready for production.
It currently has the following features:

- Easy-to-use timeline to author animation.
- Supports perspectives for any 2D game (top-down, sidescroller, isometric,
  etc.).
- Automatically hot-reloads source images when they are changed.
- Packs animation frames into texture atlases.
- Can add and tag hitboxes.
- Flexible template system exports metadata in any text-based format.
- Free and open-source with a permissive license.

[tiger-github]: https://github.com/agersant/tiger
[tiger-itch.io]: https://agersant.itch.io/tiger
[@agersant]: https://mastodon.gamedev.place/@agersant

## Library Updates

### [`bevy_text_mode`]

![Screenshot of 1-bit sprites drawn using bevy_text_mode.](bevy_text_mode.png)

[`bevy_text_mode`] ([GitHub][bevy_text_mode-src]) by [yopox] is a Bevy plugin which
makes it possible to set the background and the foreground color of a texture atlas
sprite (built-in Bevy sprites only have a tint property).
This plugin is convenient when using 1-bit tilesets such as [MRMOTEXT].

The 0.1 release adds a `TextModeTextureAtlasSprite` component with
configurable background, foreground, x/y flip and opacity.

_Discussion: [Mastodon](https://mstdn.social/@yopox/110010264001721310)_

[`bevy_text_mode`]: https://crates.io/crates/bevy_text_mode
[bevy_text_mode-src]: https://github.com/yopox/bevy_text_mode
[yopox]: https://github.com/yopox
[MRMOTEXT]: https://mrmotarius.itch.io/mrmotext

### Matchbox

![matchbox logo](matchbox.png)

[Matchbox] is a library for easily establishing unreliable, unordered,
peer-to-peer WebRTC data connections using rust WASM (and native). This enables
cross-platform low-latency multiplayer games.

Previously, the socket opened a single udp-like data channel. In version 0.6,
however, support for adding extra channels with configurable ordering and
package retransmits was added. This enables direct p2p tcp-like connections as
well.

Two new crates were added in this release. `matchbox_signaling`, lets you
set up a custom signaling server, also supporting client-server topologies,
enabling scenarios where one player acts as the host for the other players.

`bevy_matchbox` provides ergonomic usage with Bevy. Severely cutting down on the
boiler-plate needed.

The tutorial series on [how to make a p2p web game with Bevy, GGRS and
Matchbox][extreme_bevy] was also updated to the latest versions of all three
libraries.

Read more about all the new features in the [0.6 release post][matchbox-0.6].

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/127ssuv/announcing_matchbox_06_painless_peertopeer_webrtc/),
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/127suhc/matchbox_06_released_painless_peertopeer_webrtc/),
[/r/bevy](https://www.reddit.com/r/bevy/comments/127sn3o/announcing_matchbox_06_and_a_new_bevy_matchbox/),
[Mastodon](https://mastodon.social/@johanhelsing/110119122081173196)_

[extreme_bevy]: https://johanhelsing.studio/posts/extreme-bevy
[Matchbox]: https://github.com/johanhelsing/matchbox
[matchbox-0.6]: https://johanhelsing.studio/posts/matchbox-0-6

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
