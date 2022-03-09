+++
title = "This Month in Rust GameDev #31 - February 2022"
transparent = true
date = 2022-03-01
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 31st issue of the Rust GameDev Workgroup's
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

## Game Updates

### [Name Needed][name-needed]

![The player orders a selection of blocks to be broken, and a brick wall to be
built.](name-needed.gif)
_The player orders a selection of blocks to be broken, and a brick wall to be
built._

[Name Needed][name-needed] by [@DomWilliams0][domwilliams-github] is a one-man
effort to produce an open source, intuitive and high performance Dwarf
Fortress-esque game with a custom engine.

Recent progress has been on procedural terrain generation, the player UI, item
stacks and build jobs. A major refactor of the AI system integrated Rust's
superb `async`/`await` support, which is documented in the most recent devlog.

- [Devlog #5: voxel world goals][name-needed-devlog5]
- [Devlog #6: async activities][name-needed-devlog6]
- [Devlog #7: custom async runtime][name-needed-devlog7]

[name-needed]: https://github.com/DomWilliams0/name-needed
[domwilliams-github]: https://github.com/DomWilliams0
[name-needed-devlog5]: https://domwillia.ms/devlog5/
[name-needed-devlog6]: https://domwillia.ms/devlog6/
[name-needed-devlog7]: https://domwillia.ms/devlog7/

### [This is Fine Sokoban][sokoban-github]

![This is Fine Sokoban screenshot](sokoban_screenshot.gif)
_Screenshot of This is Fine Sokoban_

This is Fine Sokoban ([GitHub][sokoban-github]) by
[@Syn-Nine][synnine-twitter] is a Sokoban game inspired by the This is Fine
meme created for the [Game Developers Refuge 4x4x4 Challenge] in February
2022. Use the arrow keys to push the TPS reports into the file folders while
the room is burning down and you're surrounded by clocks - a metaphor for
the developer's work life.

The 4x4x4 Challenge was to create a game based on four emojis. In
this case the chosen emoji combination was: :nerd_face: :open_file_folder:
:clock830: :fire:

The game is part of an open source repository of several mini-games that use
Syn9's [Rust Mini Game Framework][mgfw].

[sokoban-github]: https://github.com/Syn-Nine/rust-mini-games/tree/main/2d-games/sokoban
[synnine-twitter]: https://twitter.com/Syn9Dev
[Game Developers Refuge 4x4x4 Challenge]: https://noop.rocks/gdr/viewtopic.php?f=2&t=84
[mgfw]: https://github.com/Syn-Nine/mgfw

### [Build A Better Buddy][build-a-better-buddy]

[![Build A Better Buddy Screenshot](build-a-better-buddy.png)][build-a-better-buddy]

Build A Better Buddy is a cute auto-battler built by [@cart_cart][cart-cart] using
[Bevy Engine][buddy-bevy-engine] for [Bevy Jam #1][buddy-bevy-jam-1]. The source
code is [available here][buddy-source]. It runs on Windows, Mac, Linux, and
the Web.

[build-a-better-buddy]: https://cart.itch.io/build-a-better-buddy
[cart-cart]: https://twitter.com/cart_cart
[buddy-bevy-jam-1]: https://itch.io/jam/bevy-jam-1/
[buddy-bevy-engine]: https://bevyengine.org/
[buddy-source]: https://github.com/cart/build_a_better_buddy

### [Weegames]

![Grid of Weegames minigames](weegames.jpg)

[Weegames] is a fast-paced minigame collection available on web and Windows.
The latest release:

- Uses [quad-storage] on WASM to save high scores
  and a record of how games the player has played
- Fixes bug where the game was being played at an incorrect speed
  when the player's monitor was not 60hz
- Adds 8 more minigames

[Weegames]: https://yeahross.itch.io/weegames
[quad-storage]: https://crates.io/crates/quad-storage

### [Dis-order]

![Screenshot of Dis-order](dis-order.png)

Dis-order by [@jkhelsing] is a short sokoban-esque puzzle game made in 72 hours
for MiniJam 100. In Dis-order you're making chaos instead of order, you win when
there are are no patterns or order in the level.

It's made using [Bevy][dis-order-bevy] and uses [bevy_smud][bevy_smud] for shape
rendering, and a compute pass for the [particle
effects][dis-order-particle-effects]. The levels are made with ldtk and loaded
using [bevy_ecs_ldtk][bevy_ecs_ldtk]. Read more about this in the
[post-mortem][dis-order-post-mortem].

[Download the game on itch.io][Dis-order].

[Dis-order]: https://jhelsing.itch.io/dis-order
[bevy_smud]: https://github.com/johanhelsing/bevy_smud
[dis-order-bevy]: https://bevyengine.org
[bevy_ecs_ldtk]: https://github.com/Trouv/bevy_ecs_ldtk
[dis-order-post-mortem]: https://johanhelsing.studio/posts/dis-order
[dis-order-particle-effects]: https://twitter.com/jkhelsing/status/1495604656164282374
[@jkhelsing]: https://twitter.com/jkhelsing

### [Molecoole][molecoole-steam]

[![A molecoole and some enemies](molecoole.png)][molecoole-steam]

Molecoole is a top-down shooter roguelike where you build your character from
different atoms. Each atom has a unique ability to provide tons of variety
between playthroughs. It's made using the [Bevy Engine][bevy-engine].

This month Molecoole launched on [Steam][molecoole-steam], making it the first
game made with Bevy Engine there! It's available on Windows and Linux. You can
check out its gameplay on [youtube][youtube-molecoole], or on the Steam page.

[molecoole-steam]: https://store.steampowered.com/app/1792170/Molecoole/
[youtube-molecoole]: https://www.youtube.com/watch?v=bwbVplq03ew
[bevy-engine]: https://github.com/bevyengine/bevy

## Engine Updates

## Learning Material Updates

### [Bevy Minesweeper]

![screenshot](bevy_minesweeper.png)
_Demo Screenshot_

[@ManevilleF] published a 12 step [course][Bevy Minesweeper] on how to make a
simple 2D Minesweeper using [bevy][bevy] 0.6.
A [public repository][bevy_minesweeper_repo] is
available, as well as a live [demo][bevy_minesweeper_demo].

The tutorial showcases:

- essential features of the [bevy][bevy] engine
- important ECS notions for beginners
- WASM build
- and soon, android native apk build

_Discussions: [Twitter][bevy_minesweeper_twitter], [dev.to][Bevy Minesweeper]_

[Bevy Minesweeper]: https://dev.to/qongzi/bevy-minesweeper-introduction-4l7f
[bevy_minesweeper_repo]: https://gitlab.com/qonfucius/minesweeper-tutorial
[bevy_minesweeper_demo]: https://qonfucius.gitlab.io/minesweeper-tutorial/
[bevy]: https://bevyengine.org
[@ManevilleF]: https://github.com/ManevilleF
[bevy_minesweeper_twitter]: https://twitter.com/ManevilleF/status/1495787155280510977?s=20&t=omNFCI2cWgDFNC0MC7NWTg

### [Actor Pattern with Async Rust]

@Sorokya ([twitter][sorokya-twitter], [github][sorokya-github]) [published a blog
post][Actor Pattern with Async Rust] about how they improved their game server
by switching over to an actor pattern approach. This method allowed the server
to be refactored to be more modular and cleaner.

[Actor Pattern with Async Rust]: https://eo-rs.dev/blog/the-actor-pattern-with-async-rust/
[sorokya-twitter]: https://twitter.com/sorokya
[sorokya-github]: https://github.com/sorokya

## Tooling Updates

### [Vismut]

![Vismut](vismut.png)

[Vismut] ([GitLab][Vismut GitLab], [Zulip][Vismut Zulip]) by
[@lukors][Vismut @lukors]
will be a procedural texturing tool.

This application saw its first public release a month ago, where it added
support for its first use case: manual channel shuffling.

The latest version, [v0.4.0][Vismut v0.4.0], brings an all new interface that's
not only prettier, but also much easier to use thanks to `bevy_egui`!

Upcoming versions will turn it into a fully featured node based procedural
texturing tool. [Read the introduction][Vismut Introduction]
on the author's blog for more information.

[Vismut]: http://vismut.org
[Vismut GitLab]: https://gitlab.com/vismut-org/vismut
[Vismut Zulip]: https://vismut.zulipchat.com
[Vismut @lukors]: https://gitlab.com/lukors
[Vismut v0.4.0]: https://gitlab.com/vismut-org/vismut/-/releases/v0.4.0
[Vismut Introduction]: https://orsvarn.com/introducing-vismut/

### [Blackjack]

![Blackjack: Showcase of the new catmull-clark subdivision](blackjack.gif)

[Blackjack] by @setzer22 is a new procedural modeling application made in Rust,
using rend3, wgpu and egui. It follows the steps of applications like
Houdini, or Blender's geometry nodes project and provides a node-based
environment to compose procedural recipes to create 3d models.

The last two months have been quite busy for Blackjack. After an initial open
source release, several new features have been added:

- Added a resizeable viewport system, with node graph pan and zoom.
- Built an initial implementation for a properties inspector and geometry
  spreadsheet panels.
- Added a subdivision node, with a fast catmull-clark subdivision technique
 based on
 [this recent paper][blackjack-paper]
- Separated the node graph functionality into
 [its own crate][blackjack-node-graph-crate]

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/srgd41/your_rusty_procedural_3d_modeler_blackjack_just/),
[/r/rust](https://www.reddit.com/r/rust/comments/sfqung/media_blackjacks_eguibased_node_graph_now/)_

[Blackjack]: https://github.com/setzer22/blackjack
[blackjack-paper]: https://onrendering.com/data/papers/catmark/HalfedgeCatmullClark.pdf
[blackjack-node-graph-crate]: https://github.com/setzer22/egui_node_graph

## Library Updates

### [vach]

[vach] is an archiving file format developed from the ground up for games and
other realtime applications by [@zeskeertwee] and [@sokorototo]. It is
written in pure Rust.

Its primary objectives (in no particular order) are:

- Have a simple, yet complete API.
- Fine control over each individual entry in an archive, i.e. neighbouring
  entries can have vastly different compression schemes.
- Support compression (with multiple compression schemes), encryption,
  and signatures for data authentication
- Efficient fetching of data by avoiding unnecessary traversal of the file.
  Once a file is parsed, locations of every entry are known to the loader.
- Be as compact as possible - the smallest valid archive is only 13 bytes.
- Each entry has some metadata attached to it - this is implemented using
  bitflags and up to 8 bits are free to the user.
- Has mutlithreaded implementations of both the loader and the writer.

A [CLI][vach-cli] is allowing one to use vach as a general purpose archive
format. The CLI is fully multithreaded, allowing for insane un/packing speeds.

Feel free to drop into the [repo][vach] and open an issue, pull request or
drop a star 🌟. It helps maintain momentum in the project.

[vach]: https://github.com/zeskeertwee/vach
[vach-cli]: https://crates.io/crates/vach-cli
[@zeskeertwee]: https://github.com/zeskeertwee
[@sokorototo]: https://github.com/sokorototo

### Sparsey 0.7

![Sparsey](sparsey.png)

[Sparsey] by [@LechintanTudor] is a sparse set-based Entity Component System
with beautiful and concise syntax.

The biggest change in this release was the removal of component change detection
which had a significant impact on performance and memory usage. As a result,
Sparsey performs much better in all benchmarks and the codebase is easier to
maintain.

The systems module received a major overhaul with an improved scheduling
algorithm, allowing more systems to run in parallel, and an important usability
improvement allowing systems to be added to schedules without having to call
`.system()` on the system functions.

[Sparsey]: https://github.com/LechintanTudor/sparsey
[@LechintanTudor]: https://github.com/LechintanTudor

### [Encase]

![Encase Logo](./encase.svg)

[Encase] ([docs.rs], [crates.io]) by [@teoxoy] is a new library
that provides a mechanism to lay out data into GPU buffers
according to [WGSL's memory layout] rules.

Features

- supports all WGSL [host-shareable types] + wrapper types
  (`&T`, `&mut T`, `Box<T>`, ...)
- extensible by design; most traits can be easily implemented
  for user defined types via macros (see [design])
- built in support for data types from a multitude of crates
  (enabled via [features])
- covers a wide area of use cases (see [examples])

Example

```rust
use encase::{WgslType, UniformBuffer};

#[derive(WgslType)]
struct AffineTransform2D {
    matrix: glam::Mat2,
    translate: glam::Vec2
}

let transform = AffineTransform2D {
    matrix: glam::Mat2::IDENTITY,
    translate: glam::Vec2::ZERO,
};

let mut buffer = UniformBuffer::new(Vec::new());
buffer.write(&transform).unwrap();
let byte_buffer = buffer.into_inner();

// write byte_buffer to GPU
```

[Encase]: https://github.com/teoxoy/encase
[docs.rs]: https://docs.rs/encase/latest/encase
[crates.io]: https://crates.io/crates/encase
[@teoxoy]: https://github.com/teoxoy
[WGSL's memory layout]: https://gpuweb.github.io/gpuweb/wgsl/#memory-layouts
[host-shareable types]: https://gpuweb.github.io/gpuweb/wgsl/#host-shareable-types
[design]: https://docs.rs/encase/latest/encase/#design
[features]: https://docs.rs/crate/encase/latest/features
[examples]: https://docs.rs/encase/latest/encase/#examples

### [Notan]

![Notan](notan.png)

The first version of [Notan] was released.
[Notan] aims to be a simple and portable multimedia layer, designed to make
your own multimedia app on top of it without worrying too much about
platform-specific code.

The main goal is to provide a set of APIs and tools that can be used to create
your project in an ergonomic manner without enforcing any structure or pattern,
always trying to stay out of your way. The idea is that you can use it as a
foundation layer or backend for your next app, game engine or game.

This first version comes with windowing, input and rendering support on MacOS,
Linux, Windows and Web. Behind feature flags you can use a fast 2D renderer,
text rendering, and [egui] integration.  

You can try [Notan] by installing it via cargo: `cargo install notan` or
checking the [online demos].

[Notan]: https://github.com/Nazariglez/notan
[online demos]: https://nazariglez.github.io/notan-web/
[egui]: https://github.com/emilk/egui

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
