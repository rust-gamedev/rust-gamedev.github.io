+++
title = "This Month in Rust GameDev #43 - February 2023"
transparent = true
date = 2023-03-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 43rd issue of the Rust GameDev Workgroup's
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
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
- [Discussions](#discussions)
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

## Announcements

## Game Updates

### [Tunnet][tunnet-itch]

![Tunnet preview](tunnet.jpg)
_Tunnels and computer networks_

Tunnet ([Steam][tunnet-steam], [Itch.io][tunnet-itch]) by
[@puzzled\_squid][puzzled_squid] is a small puzzle/exploration game where you
play as a robot technician who has been tasked with building a computer network
in an underground complex.

The project is implemented using the Bevy engine. It is currently under
development and is expected to be released later this year.
This month, the announcement trailer and the first few pages of the manual have
been published on the [project page][tunnet-itch].

[tunnet-itch]: https://puzzled-squid.itch.io/tunnet
[tunnet-steam]: https://store.steampowered.com/app/2286390/Tunnet/
[puzzled_squid]: https://puzzledsquid.xyz/

## Engine Updates

### [godot-rust][gd-github]

![godot-rust GDExtension](godot-rust-gdextension.png)

The [release of Godot version 4.0][gd-godot4] marks a significant milestone in
the game development ecosystem. godot-rust aims to bring the open-source
game engine to the Rust community.

For the [Godot 4 (GDExtension) binding][gd-gdextension], February was a very
productive month, with a handful of new contributors and [16 merged pull
requests][gd-pulse]. An up-to-date feature overview is available
[in issue #24][gd-24]. Last month's changes include:

- Support for arrays, packed arrays and dictionaries
- Support for some geometric types (vectors, quaternions, colors)
- Bugfixes regarding ref-counts, use-after-free, memory leaks

On the [Godot 3 (GDNative) side][gd-gdnative], lots of quality-of-life
improvements have found their way into the library:

- Class self-registration based on `inventory` crate
- Flexible self types: `fn instance(#[self] this: Instance<Self>)`
- Trait entry point: `#[callbacks] impl GDNativeCallbacks for MyLibrary {...}`

Both bullet lists are examples for how the GDNative and GDExtension bindings
mutually benefit each other, reusing proven designs for user-friendly Rust APIs.

[gd-github]: https://github.com/godot-rust
[gd-gdextension]: https://github.com/godot-rust/gdextension
[gd-gdnative]: https://github.com/godot-rust/gdnative
[gd-godot4]: https://godotengine.org/article/godot-4-0-sets-sail/
[gd-pulse]: https://github.com/godot-rust/gdextension/pulse/monthly
[gd-24]: https://github.com/godot-rust/gdextension/issues/24

## Learning Material Updates

### [Write a First Person Game in 2KB with Rust][firstperson-wasm4]

![Game Preview](firstperson.png)

[@grantshandy] published an [article][firstperson-wasm4] about creating a simple
first-person game in Rust with [WASM-4]. It covers the basics of a ray casting
algorithm and minifying Rust with WebAssembly. You can play the finished game
[here][firstperson-wasm4-game].

_Discussion: [/r/rust](https://reddit.com/r/rust/comments/11bdsys/fps_game_2kb_rust)_

[@grantshandy]: https://github.com/grantshandy/
[firstperson-wasm4]: https://grantshandy.github.io/posts/raycasting
[firstperson-wasm4-game]: https://grantshandy.github.io/wasm4-raycaster/
[WASM-4]: https://wasm4.org

## Tooling Updates

### Sprite and Pixel Art Editor

![Image editor screenshot](sprite_pixel_art_editor.png)
_Screenshot of the editor_

A sprite and pixel art editor made with egui and macroquad is being
developed by @yds12 ([github][yds-github], [mastodon][yds-mastodon]).
The project is already usable, but has not been made public yet. Current
features are

- Drawing w/ brush, eraser, lines, rectangles, bucket (fill w/ color)
- Color selector, editable palette and eyedropper (pick color from canvas)
- Resize or completely erase the canvas
- Move camera, zoom in and out
- Selection (rectangular only for now), deleted, copied and pasted; flip
  selection (horizontal or vertical)
- Layers: create, remove, moved up/down, control visibility and opacity
- Spritesheet: specify how many columns and rows your image has, and an
  animated preview will be displayed in a window w/ configurable scale
- Save/load projects (with all its settings), export and import PNG/JPG
- Status bar w/ info about canvas size, canvas position, color under mouse, etc

The source is planned to be released in the next few weeks

[yds-github]: https://github.com/yds12
[yds-mastodon]: https://fosstodon.org/@yds/

## Library Updates

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

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to @rust_gamedev on [Twitter][rust_gamedev_twi],
[Mastodon][rust_gamedev_mas], or [/r/rust_gamedev subreddit][/r/rust_gamedev]
if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Twitter](TODO),
[Mastodon](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[rust_gamedev_twi]: https://twitter.com/rust_gamedev
[rust_gamedev_mas]: https://mastodon.gamedev.place/@rust_gamedev
