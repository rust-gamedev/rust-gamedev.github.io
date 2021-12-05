+++
title = "This Month in Rust GameDev #28 - November 2021"
transparent = true
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 28th issue of the Rust GameDev Workgroup's
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

The eleventh Rust Gamedev Meetup happened in November. You can watch the recording
of the meetup [here on Youtube][gamedev-meetup-video]. The meetups take place on
the second Saturday every month via the [Rust Gamedev Discord
server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch]. If you would like to show off what you've been
working on at the next meetup on [December 11th][rust-meetup-dec-time], fill
out [this form][gamedev-meetup-form].

[gamedev-meetup-video]: https://youtu.be/nLyiLnC5mn4
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev
[gamedev-meetup-form]: https://forms.gle/BS1zCyZaiUFSUHxe6
[rust-meetup-dec-time]: https://everytimezone.com/s/bb9cdaec

## Game Updates

### Flesh

![flesh preview](flesh.gif)
_The melee weapon in action_

[Flesh] by [@im_oab] is a 2D-horizontal shmup game with hand-drawn animation and
organic/fleshy theme. It is implemented using [Tetra]. This month's updates
include:

- Support different types of ships that players can choose.
- Add a melee weapon.

[Flesh]: https://store.steampowered.com/app/1660850/Flesh/
[@im_oab]: https://twitter.com/im_oab
[Tetra]: https://github.com/17cupsofcoffee/tetra

### [One-Click Ninja]

![Screenshot of One-Click Ninja](one-click-ninja.png)
_Screenshot of One-Click Ninja_

One-Click Ninja is a rhythm game made in 10 days for [1-Button Jam 2021],
written in Rust using the [Bevy] engine.

The source is available MIT licensed on [GitHub][One-Click Ninja], and
you can [play in your browser on itch.io][One-Click Ninja itch.io].

[One-Click Ninja]: https://github.com/fluffysquirrels/one-click-ninja
[One-Click Ninja itch.io]: https://fluffysquirrels.itch.io/one-click-ninja
[1-Button Jam 2021]: https://itch.io/jam/1-button-jam-2021
[Bevy]: https://bevyengine.org

### [Fish Fight: The Prequel][fishfight-steam]

[![fishfight](fishfight.gif)][fishfight-steam]

Fish Fight is a fast-paced 2D brawler game, played by 1-4 players online
or on a shared screen, built with [macroquad] game engine.

This month it got a trailer, and the game is now available to
wishlist on [Steam][fishfight-steam]!

[macroquad]: https://github.com/not-fl3/macroquad
[fishfight-github]: https://github.com/FishFight/FishFightThePrequel
[fishfight-steam]: https://store.steampowered.com/app/1771640/Fish_Fight_The_Prequel/

### [BITGUN][bitgun-steam]

[![Gameplay screenshot with lots of zombies in a tunnel](bitgun-zombies.jpeg)][bitgun-steam]

BITGUN ([Steam][bitgun-steam], [Twitter][bitgun-twitter],
[Discord][bitgun-discord]) by [@LogLogGames][bitgun-twitter] is an action
roguelike zombie shooter with lots of blood. The game is built using Godot
and Rust (via [godot-rust][bitgun-godot-rust]).

They recently implemented a mission system, where you can select one of
[three types of missions][bitgun-missions] to go to from the central camp.
One is to defend supplies from horde of zombies, second is to search
a facility for some object or clear all the zombies and the last one
is to fight your way through a tunnel full of spiders and other enemies!
They also worked on a [tutorial][bitgun-tutorial].

[bitgun-steam]: https://store.steampowered.com/app/1673940/BITGUN/
[bitgun-twitter]: https://twitter.com/logloggames
[bitgun-discord]: https://discord.gg/XrGZQkq
[bitgun-godot-rust]: https://godot-rust.github.io/
[bitgun-missions]: https://twitter.com/LogLogGames/status/1464009563976392713?s=20
[bitgun-tutorial]: https://twitter.com/LogLogGames/status/1461898845810348033?s=20

### Country Slice

![country-slice-gif](country_slice_gif.gif)

[Country Slice][country-slice-github] is
[@anastasiaopara][country-slice-twitter]'s hobby project, where users can draw a
small scene, and their input is amplified with real-time procedural geometry
generation.

Country Slice uses [Bevy Engine][bevy-link] for entity management, and has
recently [been ported to OpenGL][country-slice-twitter-opengl] (using
[gl-rs][gl-rs-link] and [glutin][glutin-link]). It is being developed openly on
[GitHub][country-slice-github].

You can follow the development of Country Slice on
[Twitter][country-slice-twitter].

[country-slice-github]: https://github.com/anopara/country-slice
[country-slice-twitter]: https://twitter.com/anastasiaopara/
[country-slice-twitter-opengl]: https://twitter.com/anastasiaopara/status/1464304076074672144?s=20
[bevy-link]: https://github.com/bevyengine/bevy
[gl-rs-link]: https://github.com/brendanzab/gl-rs/tree/master/gl
[glutin-link]: https://github.com/rust-windowing/glutin

### [Veloren][veloren]

![Travelling merchant](veloren.jpg)
_A merchant paused in their travels_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

In November, Veloren started a new initiative to help new developers learn more
about the codebase; the Veloren Reading Club. You can watch the
[first][veloren-reading-club-1] and [second][veloren-reading-club-2] sessions
now. Hats were merged, and a major rewrite of the server-hosting section of the
book happened. New textures were made for item drops. Some concept art was
created for what massive cities could look like. Dynamic weather was added, and
you can [watch that in action][veloren-rain-storm].

Experience sharing went through a large overhaul to evenly distribute EXP gained
across groups. The difficulty of dungeons was adjusted to be more balanced for
new players. Persistence was added to skills, and measures were put in place to
help with future migrations to new skill trees. Work was done on site2, the
system that is used to generate structures in a procedural way. This will help
make the variance more dynamic by adding more parameters that can be adjusted.
In December, Veloren will release 0.12, hopefully with some holiday spirit!

November's full weekly devlogs: "This Week In Veloren...":
[#144][veloren-144],
[#145][veloren-145],
[#146][veloren-146],
[#147][veloren-147],
[#148][veloren-148].

[veloren]: https://veloren.net
[veloren-144]: https://veloren.net/devblog-144
[veloren-145]: https://veloren.net/devblog-145
[veloren-146]: https://veloren.net/devblog-146
[veloren-147]: https://veloren.net/devblog-147
[veloren-148]: https://veloren.net/devblog-148
[veloren-reading-club-1]: https://www.youtube.com/watch?v=DpXwYEe_LWo
[veloren-reading-club-2]: https://www.youtube.com/watch?v=n8XayRvVBEs
[veloren-rain-storm]: https://www.youtube.com/watch?v=MZwfaohynvc

### [BENDYWORM]

![An animation of a platformer where the entire world bends around
you](bendyworm.gif) _Watch out! The entire world bends around you!_

BENDYWORM ([GitHub][BENDYWORM-github], [Twitter][BENDYWORM-twitter], by
[@bauxitedev][BENDYWORM-bauxitedev]) is a platformer with a twist:
the entire world bends and twists around you as your progress through the
level. Why? Because you're inside of a gigantic worm, and worms are bendy.

The game was made for GitHub Game Off 2021, and uses `godot-rust` behind the
scenes.

The game is available for free on [itch.io][BENDYWORM-itch.io], and the source
code is available on [GitHub][BENDYWORM-github].  (Windows only for now, Linux
build available soon)

_Discussions:
[/r/rust/][BENDYWORM-reddit],
[Twitter][BENDYWORM-twitter]_

[BENDYWORM]: https://bauxite.itch.io/bendyworm
[BENDYWORM-bauxitedev]: https://twitter.com/bauxitedev
[BENDYWORM-twitter]: https://twitter.com/bauxitedev/status/1466034866122891266
[BENDYWORM-itch.io]: https://bauxite.itch.io/bendyworm
[BENDYWORM-github]: https://github.com/Bauxitedev/bendyworm
[BENDYWORM-reddit]: https://www.reddit.com/r/rust/comments/r742z1/

## Engine Updates

### [Tetra] 0.6.7

[Tetra] is a simple 2D game framework, inspired by XNA, Love2D, and Raylib. This
month, version 0.6.7 was released, featuring:

- Updates to the gamepad backend, adding rumble support for a much wider variety
  of controllers (including DualShock 4s)
- Various bugfixes and docs improvements

For more details, see the [changelog][tetra-changelog].

Additionally, development has begun on version 0.7 - check out
[the planned features and changes][tetra-07], and feel free to suggest more!

[Tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md
[tetra-07]: https://github.com/17cupsofcoffee/tetra/issues/297

## Learning Material Updates

### [The Raytracer Challenge][raytracer-challenge-github]

![The Raytracer Challenge](the-raytracer-challenge.jpg)

[The Raytracer Challenge][raytracer-challenge-github] is a project with the goal
to write a raytracer from scratch in Rust, while showing each step of the way
[as a weekly live coding session][raytracer-challenge-playlist]. Everything is
documented, starting with implementing [Vectors][raytracer-challenge-vector] and
[Matrices][raytracer-challenge-matrix] all the way to creating [Phong
Lighting][raytracer-challenge-phong].

November has been a busy month for the project with lots of visual changes in the
raytraced results:

- A [camera][raytracer-challenge-camera] was added to allow arbitrary views on
  the [World][raytracer-challenge-world].

- [Basic animation support][raytracer-challenge-animation] came along allowing
  the easy creation of video sequences.

- More realistic and life-like scenes due to [Shadow
  Casting][raytracer-challenge-shadows].

- As a new basic body type [Planes][raytracer-challenge-planes] came to life.

[raytracer-challenge-github]: https://github.com/jakobwesthoff/the_ray_tracer_challenge_in_rust
[raytracer-challenge-playlist]: https://www.youtube.com/playlist?list=PLy68GuC77sUTyOUvDhVboQoOlHoa4XrSO
[raytracer-challenge-vector]: https://youtu.be/xGEDQXBMdV4
[raytracer-challenge-matrix]: https://youtu.be/RYALPW0pJr4
[raytracer-challenge-phong]: https://youtu.be/HSgS_NQob2I
[raytracer-challenge-camera]: https://youtu.be/izzp4xZfcHI
[raytracer-challenge-world]: https://youtu.be/1l54RUGigtk
[raytracer-challenge-animation]: https://youtu.be/3LinpB7ns60
[raytracer-challenge-shadows]: https://youtu.be/agqAUa1qgGo
[raytracer-challenge-planes]: https://youtu.be/4y1aRPiH9Ko

## Tooling Updates

## Library Updates

### [Pixels] 0.8.0 👾

[Pixels] is a tiny hardware-accelerated pixel framebuffer. Its goals include
pixel-perfect rendering and custom shader pipelines for textures with direct
pixel access. It's perfect for making 2D animations, games, and emulators.

Version 0.8.0 was released this month, bringing highly anticipated support for
WASM targets, as well as support for Raspberry Pi 4. A [minimal example for web
browsers][pixels-web] is included to get you started. Full details are available
in the [release notes][pixels-changelog].

[pixels]: https://github.com/parasyte/pixels
[pixels-changelog]: https://github.com/parasyte/pixels/releases/tag/0.8.0
[pixels-web]: https://github.com/parasyte/pixels/tree/0.8.0/examples/minimal-web

### [Quinn]

[Quinn] is an async-enabled implementation of the state-of-the-art IETF QUIC
transport protocol, a robust foundation for real-time networking.

[Quinn 0.8][quinn_release] introduces support for the final QUIC 1 specification
defined in [RFC 9000][RFC9000]. Other highlights include an improved CUBIC
congestion controller, a more ergonomic configuration API, and numerous
performance and robustness improvements.

[Quinn]: https://github.com/quinn-rs/quinn
[RFC9000]: https://www.rfc-editor.org/rfc/rfc9000.html
[quinn_release]: https://github.com/quinn-rs/quinn/releases/tag/0.8.0

### [hecs]

[hecs] is a fast, lightweight, and unopinionated archetypal ECS library.

[Version 0.7][hecs-changelog] introduces several new features, including two new
query combinators, a `CommandBuffer` for recording operations to be applied to a
`World` at a future time, accessors for efficient random access within columns,
and a variant of `EntityBuilder` that clones its components and can therefore be
spawned from repeatedly. Other improvements include compatibility with 32-bit
MIPS and PPC, and introduction of a niche to `Entity` so that
e.g. `Option<Entity>` will not consume additional space.

[hecs]: https://github.com/Ralith/hecs
[hecs-changelog]: https://github.com/Ralith/hecs/blob/master/CHANGELOG.md#071

### [godot-rust](https://github.com/godot-rust/godot-rust)

![module before/after](godot-rust-modules.png)

godot-rust ([GitHub][gd-github], [Discord][gd-discord], [Twitter][gd-twitter])
is a Rust library that provides bindings for the Godot game engine.

November has been a month of refactoring for godot-rust. The API was cleaned up
across different locations, reducing confusion and making the library more
accessible:

- The module simplification ([#811][gd-811]) continued initial efforts on the
  module structure, such as shorter paths and avoidance of redundant re-exports.
  Some differences between v0.9.3 and now can be seen in the above picture.
- Several core symbols were renamed for consistency ([#815][gd-815]):
  `RefInstance` -> `TInstance` and `TypedArray` -> `PoolArray`, among others.
- Another refactoring affects the `Variant` conversion methods ([#819][gd-819]).
  Instead of `Variant::to_i64()` which may silently fail and return a default
  value (Godot behavior), the recommended method is now `Variant::to<T>()`. This
  enables genericity and is more idiomatic in Rust, returning an `Option` to
  indicate success or failure.

As a binding to a C++ library, one topic godot-rust has to deal with is the use
of `unsafe`, which sometimes boils down to a trade-off between safety and
ease-of-use. Even though Rust provides basic guidelines, there are different
philosophies on their execution, see [The CXX Debate][gd-cxx] for an example.
To discuss how APIs interacting with Godot can as ergonomic as possible while
preserving safety, [issue #808][gd-808] was opened.

[gd-808]: https://github.com/godot-rust/godot-rust/pull/808
[gd-811]: https://github.com/godot-rust/godot-rust/pull/811
[gd-815]: https://github.com/godot-rust/godot-rust/pull/815
[gd-819]: https://github.com/godot-rust/godot-rust/pull/819

[gd-cxx]: https://steveklabnik.com/writing/the-cxx-debate

[gd-github]: https://github.com/godot-rust/godot-rust
[gd-discord]: https://discord.com/invite/FNudpBD
[gd-twitter]: https://twitter.com/GodotRust

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

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
