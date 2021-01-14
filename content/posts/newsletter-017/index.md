+++
title = "This Month in Rust GameDev #17 - December 2020"
date = 2021-01-04
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the 17th issue of the Rust GameDev Workgroup's
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

Table of contents:

- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Library & Tooling Updates](#library-tooling-updates)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
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

## Game Updates

### [Way of Rhea has a Discord!][wor-discord]

![New Way of Rhea assets](way-of-rhea.gif)
_Updated visuals for interactive items._

[Way of Rhea][wor-website] is a puzzle platformer that takes place in a world
where you can only interact with objects that match your current color. The game
is being developed in a custom built Rust game engine and hot swappable
scripting language.

This month's updates:

- More progress has been made on the hub world! The game is no longer fully
  linear.
- All interactive elements are getting a visual update, pictured above.
- The devs have created [a Discord server][wor-discord] where you can hang out,
  stay up to date on the latest developments, and if you're interested, chat
  about the implementation (see the `#tech` channel.)

[wor-discord]: https://discord.gg/JGeVt5XwPP
[wor-website]: https://anthropicstudios.com/way-of-rhea

## Learning Material Updates

## Library & Tooling Updates

### [Tetra]

[Tetra] is a simple 2D game framework, inspired by XNA and Raylib. This month,
versions 0.5.5 and 0.5.6 were released, with various improvements:

- Customizable `Mesh` colors and winding orders
- Enabling/disabling the user's screen saver
- Improved CPU usage on some devices

For full details and a list of breaking changes, see the
[changelog][tetra-changelog].

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md

### [Bevy Engine v0.4][bevy-0-4]

[![bevy logo](bevy_logo.png)][bevy]

[Bevy][bevy] is a refreshingly simple data-driven game engine built in Rust.
It is [free and open source][bevy-repo] forever!

This month, thanks to 66 contributors, 178 pull requests, and their
[generous sponsors][bevy-sponsors], Bevy 0.4 was released. You can view the
[full Bevy 0.4 announcement here][bevy-0-4]. Here are some highlights:

- a WebGL2 render backend;
- cross platform main function: `#[bevy_main]`;
- live shader reloading;
- Schedule v2 with custom stages, run criteria, fixed timestep,
  and typed stage builders;
- States that allow you to enable/disable systems
  according to the state your app is in;
- scenes can now be spawned as children;
- dynamic linking that significantly cuts compile times.
- a new general-purpose Rust reflection API;
- 3D texture assets;
- HIDPI fixes;
- GLTF, timer, text layout, task system, logging & profiling improvements;
- ECS improvements: flexible system parameters, improved query filter API,
  and system inputs/outputs/chaining;
- Apple Silicon support!

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/kge7zy/bevy_04/),
[hacker news](https://news.ycombinator.com/item?id=25480321),
[Twitter](https://twitter.com/cart_cart/status/1340376850560905218)_

[bevy]: https://bevyengine.org
[bevy-repo]: https://github.com/bevyengine/bevy
[bevy-0-4]: https://bevyengine.org/news/bevy-0-4
[bevy-sponsors]: https://github.com/sponsors/cart

------

Community plugin updates:

- [bevy_webgl2](https://github.com/mrk-its/bevy_webgl2):
  WebGL2 renderer plugin for WASM target.
- [bevy_rapier](https://github.com/dimforge/bevy_rapier):
  Rapier Physics' official Bevy plugin was updated to support Bevy 0.4.
- [bevy_megaui](https://github.com/mvlabat/bevy_megaui): A plugin for
  [megaui](https://crates.io/crates/megaui) integration into Bevy.
- [bevy_prototype_inline_assets](https://crates.io/crates/bevy_prototype_inline_assets):
  A simple plugin for bundling assets into your binary.
- [bevy_doryen](https://github.com/smokku/bevy_doryen): A plugin integrating Bevy.
  ECS with [doryen-rs](https://github.com/jice-nospam/doryen-rs) Ascii
  roguelike library.
- [bevy_discovery](https://crates.io/crates/bevy_discovery): Automatically detects
  and registers systems for you.
- [bevy_prototype_parallax](https://github.com/btrepp/bevy-prototype-parallax):
  A parallax scrolling background plugin.
- [Kurinji](https://crates.io/crates/kurinji): Input Map for bevy. Converts user
  input from different input hardware into game specific actions, eg. keyboard
  "Space" or joystick "A" can be mapped to "Jump" Action.  This allows decoupling
  of the game code from device specific input api.
- [bevy-earcutr](https://github.com/frewsxcv/bevy-earcutr): Draw polygons.
- [bevy_stl](https://github.com/nilclass/bevy_stl): STL mesh asset loader plugin.

Community tutorial updates:

- [Making Chess Clone in 3D](https://caballerocoll.com/blog/bevy-chess-tutorial):
  Walkthrough on how to make a Chess Clone with 3D pieces.
- [0.3 to 0.4 Migration Guide](https://sburris.xyz/posts/bevy-update-0-4/).
- [Bevy Chinese Website(Bevy中文网)](https://bevyengine-cn.github.io/): Translate
  official website and The Bevy Book in Chinese.

Community game updates:

- [Robbo](https://github.com/mrk-its/bevy-robbo):
  Bevy port of great 8-bit Atari game, working native and in the browser.
- [SiO2](https://github.com/dmitriy-shmilo/sio2): A simple powder toy clone.
- [snake_bevy](https://github.com/mtKeller/snake_bevy): It's Snake!
- [DJMcNab/life-rs](https://github.com/DJMcNab/life-rs): Bevy reproduction of the
  rules of [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
  on a randomised board. Alternative implementation: [Byteron/life-rs](https://github.com/Byteron/life-rs).

Join Bevy's [Discord][bevy-discord], [/r/bevy subreddit][bevy-reddit],
and follow [@BevyEngine on Twitter][bevy-twitter].

[bevy-discord]: https://discord.com/invite/gMUk5Ph
[bevy-reddit]: https://reddit.com/r/bevy
[bevy-twitter]: https://twitter.com/BevyEngine

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

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
