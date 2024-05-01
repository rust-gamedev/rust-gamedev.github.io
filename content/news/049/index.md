+++
title = "This Month in Rust GameDev #49 - August 2023"
transparent = true
date = 2023-11-16
draft = false
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 49th issue of the Rust GameDev Workgroup's
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
- [Other News](#other-news)

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

It's been a while, huh? This newsletter is coming to you with a delay because
the project cost too much maintainer burden and was put on hold for a while.
Since then, we have had some restructuring and are back now, starting this month!
The exact details will be part of April's newsletter, scheduled for release on May 3rd (just 5 days from now!)  
See you all then!

## Game Updates

### [Graviton - The Great Sand Simulator][graviton-steam]

![Graviton Sand Simulator Image](graviton.gif)

[Graviton - The Great Sand Simulator][graviton-website]
([Discord][graviton-discord], [Youtube][graviton-youtube])
by [@hakolao] is a falling sand simulator in which you can define
your own interactive sand rules.

Continuing the developer's exploration into GPU sand simulation
the app has been recently taken to another level with a complete rewrite.
Now, with some [training][graviton-docs],
you can program your own rules for the sand.
Many example sands are provided from acid and blood to the classic
Game of Life.

Recent updates include:

- Customizable sand with programmable rules.
- [Shape & Mirror Draw Modes][graviton-youtube-mirror].
- New UI, graphics and render modes.
- Gif and Image export.
- Image import.

You can support the development by purchasing or wishlisting on
[Steam][graviton-steam].

[@hakolao]: https://github.com/hakolao
[graviton-discord]: https://discord.gg/3MyPaDagsd
[graviton-youtube]: https://youtube.com/watch?v=X_O90KyEt8o
[graviton-steam]: http://s.team/a/2137280
[graviton-website]: https://www.gravitongame.art/
[graviton-docs]: https://docs.gravitongame.art/Tutorial
[graviton-youtube-mirror]: https://youtube.com/watch?v=cOPy4Shqn8U

### [Tunnet][tunnet-itch]

![Tunnet screenshot showcasing the recent visual enhancements](tunnet.jpg)

Tunnet ([Steam][tunnet-steam], [itch.io][tunnet-itch]) is an upcoming short
puzzle/exploration game about digging tunnels and building computer networks.

In August, [a new version of the demo build has been released][tunnet-post].
Here are the most notable updates:

- The game is now better optimized to run smoothly on the Steam Deck.
- Some of the textures have been revamped and are now slightly more detailed.
- The animations of the character portraits have been improved.
- Several minor quality-of-life improvements like the ability to sprint have
  been made.
- A basic egui-based crash reporter will now be displayed when the game process
  ends unexpectedly.

[tunnet-itch]: https://puzzled-squid.itch.io/tunnet
[tunnet-steam]: https://store.steampowered.com/app/2286390/Tunnet
[tunnet-post]: https://puzzled-squid.itch.io/tunnet/devlog/580255/devlog-2-optimizations

### [Oort]

![Asteroids-like vector graphics with ships and missiles
made out of simple geometric forms](oort.png)
_A fleet of ships_

[Oort] ([GitHub][oort-gh], [Discord][oort-dis]) by [@rlane] is a programming
game where you write Rust code to control spaceships in combat against other
players. Your code needs to manage the thrusters, guns, missiles, comms, and
radar of each ship in your fleet. There's a series of tutorials where you can
solve key problems one by one, such as leading moving targets or missile
guidance. The game runs in your browser via WebAssembly.

Oort has started running weekly tournaments and the AIs have gotten more and more
sophisticated each time. Check out this recent [tournament writeup][oort-tournament]
where the top players discuss their strategies.

_Discussions: [r/rust](https://reddit.com/r/rust/comments/167qyn0/oort)_

[Oort]: https://oort.rs
[oort-gh]: https://github.com/rlane/oort3
[oort-dis]: https://discord.gg/vYyu9EhkKH
[@rlane]: https://github.com/rlane
[oort-tournament]: https://github.com/rlane/oort3/wiki/Tournament-Writeup-2023%E2%80%9009%E2%80%9011

### [Tiny Glade]

![A vibrant fantasy castle in a lush forest glade](tinyglade.jpg)

[Tiny Glade] ([Twitter][tglade-twi])
is a small relaxing game about doodling castles.

This month, Tiny Glade was featured in the
[Future Games Show August Showcase][tglade-fgs] with an exclusive new trailer.

The [trailer and a number of accompanying screenshots][tglade-post] demonstrate
recent changes in the game, and especially show off the new global illumination
and [dynamic time passage][tglade-tod].

[Tiny Glade]: https://store.steampowered.com/app/2198150/Tiny_Glade
[tglade-twi]: https://twitter.com/PounceLight
[tglade-post]: https://store.steampowered.com/news/app/2198150/view/3673302243803533512
[tglade-fgs]: https://www.gamesradar.com/tiny-glade-fgs-gamescom-2023/
[tglade-tod]: https://twitter.com/h3r2tic/status/1694442717252661448

### [Veloren][veloren]

![Veloren a group of friends](veloren.jpg)
_A group of friends_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In August, Veloren saw a network library update, new locations in the character
selection screen, the implementation of a new portal graphic, and numerous
translation updates. Moreover, improvements were made to the airship fixes, loot
balancing, and group chat issues. There have also been upgrades to the
dependency, a README update, and tweaks to the buff death message.

Ongoing projects currently in the works include the addition of Phoenix
abilities, NPC arenas, frost Giga attacks, compasses, and a banking storage
system. Other upcoming updates include an enhancement to the windmills, CI
scripts, saving window size, the selection of a single-player world, the
addition of lava material, and improvements to the weather network protocol.
Work is also ongoing on ship movement, pet commands, Terracotta ruins, dwarven
quarry, coastal towns, clifftown rework, and axe skills. They are also planning
to implement physics interactions that increase your height when gliding,
including the introduction of thermal and ridgelines.

August's full weekly devlogs: "This Week In Veloren...": [#216][veloren-216].

[veloren]: https://veloren.net
[veloren-216]: https://veloren.net/devblog-216

### [CyberGate][cybergate-yt]

![GIF of a player attacking a spherical enemy: one window is active,
the other shows the same view but a menu overlay on top](cybergate.gif)
_Two client windows controlling the same pawn simultaneously._

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]),
CyberSoul is developing an ambitious multiplayer project,
utilizing procedural generation and AI to offer a dynamic universe.

Tech Progress:

- Complete game framework overhaul.
- Addressed engine limitations.
- Upgraded game tools and utilities.
- Introduced Cosmos APIs for universe management.
- Redesigned privacy mechanisms.
- New character authentication system.
- Persistent player data.
- Player Accounts: Login, Register, Verify, Guests.

Also, this month's gameplay changes include
characters remaining active despite a client's closure
and saved player inventory, achievements, and settings.

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

## Engine Updates

### [goku]

[goku] ([Discord][goku-dis]) by [@ladroid] is a new 2D Rust game engine
backed by SDL2. It's currently compatible with Windows and WASM
and features [multi-language (Spa, Fra, Ger, Jpn) docs][goku-docs].

Quick Peek:

- Sprite sheets loading and animation support.
- Basic particle effects.
- Point, spot, and ambient lights.
- UI layer with ready widgets like buttons, checkboxes, and sliders.
- Audio support backed by SDL2 Mixer.
- Gamepad input support.
- Tile system and JSON format for describing scenes.
- Built-in support for parallax backgrounds.
- Simple timing and frame management utils.
- Behavior tree AIs.

_Discussions: [/r/rust](https://reddit.com/r/rust/comments/165luwu/intro_goku)_

[goku]: https://github.com/ladroid/goku
[@ladroid]: https://github.com/ladroid
[goku-docs]: https://lados-organization.gitbook.io/goku
[goku-dis]: https://discord.gg/9TAMqdRyED

## Learning Material Updates

### [Failing to build P2P Multiplayer Pong with Bevy][chrisbiscardi-vid1]

[![multiplayer-pong](multiplayer-pong-fail.jpg)][chrisbiscardi-vid1]

[@chrisbiscardi] published a [video][chrisbiscardi-vid1] covering
P2P multiplayer games with rollback networking and physics.
This video dives into what makes it difficult and what parts
work out of the box before identifying better potential paths to take in the future.

_Discussions: [Mastodon](https://hachyderm.io/@chrisbiscardi/110934091254135119)_

[chrisbiscardi-vid1]: https://youtube.com/watch?v=wpx9qhKEuP8
[@chrisbiscardi]: https://twitter.com/chrisbiscardi

### Mobile Development with Bevy

[@Nikl][nikl] published two blog posts on the topic of mobile development
using Bevy. [The first post][mobile-bevy-post] concentrates on getting
builds ready for the Apple and Google App stores. It outlines how to
use the tool [x-build][x-build] to create Android App bundles and some
required changes to get iOS builds accepted by the App store.

[A second post][android-workflow] documents how to set up and configure
a GitHub workflow to automate releases of a Bevy application to the
Google Play Store.

[nikl]: https://mastodon.online/@nikl_me
[x-build]: https://github.com/rust-mobile/xbuild/
[mobile-bevy-post]: https://nikl.me/blog/2023/notes_on_mobile_development_with_bevy_2
[android-workflow]: https://nikl.me/blog/2023/github_workflow_to_publish_android_app

## Tooling Updates

### [Space editor][space_editor]

![Space editor window with opened level](space_editor.png)

[Space editor][space_editor] is an editor designed for Bevy engine
that simplifies level and object template creation. Here are its key features:

- Intuitive UI is built on top of bevy-inspector-egui and egui-gizmo
  to easy objects manipulate.
- It supports the bevy_xpbd physics library,
  making customizing collider positions faster than ever.
- Run your levels directly from the editor.
  This enables quick and efficient development iteration.
- Save your levels and object templates in the standard Bevy scene format
  and spawn in game with just one line of code.
- Many custom structures that allow you to customize saved scenes
  equally conveniently, both via gui and directly editing the saved text file.

The [Github project][space_editor] is free for use
and open to contributions from everyone, be it with suggestions, bugs or PRs.

[space_editor]: https://github.com/rewin123/space_editor

## Library Updates

### [Dexterous Developer][dexterous_developer]

[Dexterous Developer][dexterous_developer] by [@lee-orr]
is an experimental hot-reload system for the [Bevy] game engine.
Features:

- Define the reloadable areas of your game explicitly \- which can include
  systems, components, and resources (with some limitations).
- Reset resources to a default or pre-determined value upon reload.
- Serialize/deserialize your reloadable resources & components, allowing you to
  evolve their schemas so long as they are compatible with the de-serializer.
- Mark entities to get removed on hot reload.
- Run systems after hot-reload.
- Create functions to set up & tear down upon either entering/exiting a state
  or on hot reload.
- Only includes any hot reload capacity in your build
  when you explicitly enable it - such as by using the CLI launcher.
- Cross-platform/cross-device hot reload - run a "hot reload server"
  on a dev environment, and execute the application elsewhere.

The library is quite new and currently known issues include:
mobile/WASM support and the need to pre-define events & states.

[dexterous_developer]: https://github.com/lee-orr/dexterous_developer
[@lee-orr]: https://github.com/lee-orr
[Bevy]: https://bevyengine.org

### [nanogltf]

![The "DamagedHelmet" sample model](nanogltf-helmet.gif)
_nanogltf+miniquad glTF viewer_

[nanogltf] by [@not-fl3] is a minimalist [nanoserde]-based [glTF][gltf]
parser library that can load most of the glTF's [sample models][gltf-models]
and fairly complex Blender exported scenes.

> Macroquad used to be notoriously bad at 3d. nanogltf is a part of a big
> macroquad overhaul with a goal to make it suitable for, at least,
> simple low-poly 3d games.

nanogltf comes with a a GL2+/Metal glTF miniquad-based
[viewer example][nanogltf-view].

[nanogltf]: https://github.com/not-fl3/nanogltf
[nanogltf-view]: https://github.com/not-fl3/nanogltf/tree/master/examples/viewer
[nanoserde]: https://reddit.com/r/rust/comments/hfru5a/nanoserde_cut_50s_of_build_time
[@not-fl3]: https://github.com/not-fl3
[gltf-models]: https://github.com/KhronosGroup/glTF-Sample-Models
[glTF]: https://khronos.org/gltf

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

- Other game updates:
  - [Tribes][tribes-devlog] got multiplayer support, new art and economics rework.

[tribes-devlog]: https://uvizhe.im/posts/tribes-p2

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
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
