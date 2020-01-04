+++
title = "This Month in Rust GameDev #5 - December 2019"
draft = true
+++

<!-- markdownlint-disable no-trailing-punctuation -->

Welcome to the fifth issue of the Rust GameDev Workgroup’s
monthly newsletter.

[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.

We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

Want something mentioned in the next newsletter?
[Send us a pull request][pr].
Feel free to send PRs about your own projects!

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io

<!--
Ideal section structure is:

```
### [Title]

![image/GIF description](image link)

A paragraph or two with a summary and [useful links].

_Discussions:
[/r/rust](https://reddit.com/r/rust/todo),
[twitter](https://twitter.com/todo/status/123456)_

[Title]: https://first.link
[useful links]: https://other.link
```

Discussion links are added only if they contain
some actual interesting discussions.

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Game Updates

### [A/B Street][abstreet] - Adjust traffic patterns in real cities

Ever been on a bus stuck in traffic, wondering why there are cars parked on the
road instead of a bus lane? A/B Street is a game exploring how small changes to
road space and traffic signals affect the movement of drivers, cyclists,
transit users, and pedestrians. The game models Seattle as accurately as
possible using OpenStreetMap and other public datasets, lets the player adjust
existing infrastructure, and then does a detailed comparison to see who the
changes help and hurt.

A/B Street is Rust, using a custom GUI library on top of `glium`. [Play it
now](https://github.com/dabreegster/abstreet/blob/master/docs/INSTRUCTIONS.md)
and [start contributing](https://github.com/dabreegster/abstreet/issues) to
expand the game to more cities, model light rail and shared foot/bike paths,
and work on gameplay modes (like "make everything as slow as possible" and
"what if nobody owned and parked personal vehicles?").

![Demo of some UI work in A/B Street](abstreet.gif)

December highlights:

- Preview traffic signal changes "live" without resetting the simulation
- UI: new minimap, popup info panels with graphs, better shapes and colors for
  cars
- Data viz: histogram showing count of faster/slower trips, visualizing which
  road has the longest backup at a traffic signal, breaking down the timeline
  of a trip (walk to a car, drive somewhere, look for parking, walk to
  destination...)
- Improved pedestrian pathfinding and decisions to use a bus or not

[abstreet]: https://github.com/dabreegster/abstreet#ab-street

### Vange-rs

[vange-rs](https://github.com/kvark/vange-rs) is the project of re-implementing [Vangers](https://en.wikipedia.org/wiki/Vangers) game (from 1998) in Rust using modern development practices, parallel computations, and GPU.

This month, the project has gained a few major features. The biggest one is an implementation of the physics engine completely on GPU in a closed loop. At the same time, the CPU code path was fixed to allow for a smooth ride.

Another pack of changes has landed to allow many NPC cars to be riding the world alongside the user. The renderer has shifted towards being completely instanced, and CPU physics computations were parallelized. The game can now host up to 50000 total cars on the level, all simulated at once, with up to 5000 on screen at a time. See the recorded video and discuss [on reddit](https://www.reddit.com/r/rust_gamedev/comments/eg3k6x/spawning_4k_of_cars_in_vangers/).

In minor features, it became possible to jump in the game as well as change the car color.

Project has also started the [development blog](http://kvark.github.io/vange-rs/), describing both new and old technology, such as:
  - [Data formats](https://kvark.github.io/vange-rs/2019/12/12/data-formats.html) used in the original game.
  - [Collision model](https://kvark.github.io/vange-rs/2019/12/17/collision-model.html) of the original game.
  - [Pure-GPU implementation](https://kvark.github.io/vange-rs/2019/12/19/gpu-collisions.html) of the collision model.

## Library & Tooling updates

### rg3d-sound

[rg3d-sound](https://github.com/mrDIMAS/rg3d-sound) is the new sound library in active development. This month it has gained three major features: 

- [Head-related transfer function](https://en.wikipedia.org/wiki/Head-related_transfer_function) support - it provides perfect binaural sound. Try it: `cargo run --example hrtf --release`
- [Reverberation](https://en.wikipedia.org/wiki/Reverberation) support - basic effect that gives your scene "sound volume". Try it: `cargo run --example reverb --release`
- Vorbis/ogg support - compressed format similar to mp3.

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

- [#32 "Selective Enabling/Disabling optimizations at a crate/file/function level"](https://github.com/rust-gamedev/wg/issues/32);
- [#69 "Input Handling"](https://github.com/rust-gamedev/wg/issues/69);
- [#75 "Standardised API for sharing thread pools"](https://github.com/rust-gamedev/wg/issues/75);

<!-- TODO: more issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [/r/rust: "Need help porting steam libraries to rust"][help-steam-libs];
- [Embark's open issues][embark-open-issues] ([embark.rs]);
- [winit's "Good first issue" and “help wanted” issues][winit-issues];
- [gfx-rs's "contributor-friendly" issues][gfx-issues];
- [wgpu's "help wanted" issues][wgpu-help-wanted];
- [luminance's "low hanging fruit" issues][luminance-fruits];
- [ggez's "good first issue" issues][ggez-issues];
- [Veloren's "beginner" issues][veloren-beginner];
- [Amethyst's "good first issue" issues][amethyst-issues];
- [A/B Street's "good first issue" issues][abstreet-issues];

[help-steam-libs]: https://reddit.com/r/rust/comments/diuqg7/need_help_porting_steam_libraries_to_rust
[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[winit-issues]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[abstreet-issues]: https://github.com/dabreegster/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

------

That's all news for today, thanks for reading!

Subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discussions of this post**:
[/r/rust](TODO),
[twitter](TODO).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
