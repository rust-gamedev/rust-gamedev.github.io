+++
title = "This Month in Rust GameDev #7 - February 2020"
draft = true
+++

<!-- markdownlint-disable no-trailing-punctuation -->

Welcome to the seventh issue of the Rust GameDev Workgroup’s
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

### [Rusty Shooter][rusty-shooter]

[Rusty Shooter][rusty-shooter] is a Quake3-like first person shooter written in Rust using [rg3d engine][rg3d-engine].

![Rusty Shooter in-game screenshot](rusty-shooter-in-game.jpg)

Small gameplay video (work-in-progress):
[![Rusty Shooter game](rusty-shooter-youtube.PNG)][rusty-shooter-video]

Features:

- Common FPS elements: bots, items, weapons.
- Single game mode - deathmatch.
- More or less modern graphics (shadows, deferred shading, particle systems etc.)
- Fully animated bots using animation blending state machines.
- Single map - something like legendary Q3DM6.
- Path finding using navmesh
- Save/load functionality
- GUI: main menu, options, HUD, leader board (using [rg3d-ui library][rg3d-ui])
- Binaural sound (using [rg3d-sound library][rg3d-sound])

[rg3d-engine]: https://github.com/mrDIMAS/rg3d
[rg3d-ui]: https://github.com/mrDIMAS/rg3d-ui
[rg3d-sound]: https://github.com/mrDIMAS/rg3d-sound
[rusty-shooter]: https://github.com/mrDIMAS/rusty-shooter
[rusty-shooter-video]: https://www.youtube.com/watch?v=UDn8ymyXPcI

### [Antorum]

![Spider NPCs](antorum.jpg)

[Antorum] is a multiplayer RPG where players build their characters and fight against the growing threats on the isle. The game server is authoritative and written in Rust, while the client is written in Unity/C#.

This month, the focus was on the cooking skill. This includes recipies and cookware. Players will need a cooking appliance, such as a stove or campfire to cook some Chonkrat Stew inside a pot. A heavy refactor to the interaction system had to be made, as well as changes to networking. Check out [@dooskington]'s devlog here:

- [#18 "Cooking"](https://dooskington.com/dev-log/18)

[antorum]: https://dooskington.com
[@dooskington]: https://twitter.com/dooskington

### [Tennis Academy Dash][tennis-academy-dash]

![release](dash.gif)

Tennis academy dash is a time management game where you are the manager of a tennis academy and you need to coordinate various players to play on your courts. 

The game is still a work in progress, but the demo version has been uploaded to itch.io this month, so go ahead and check it out! Give it a go (the build is only for mac at the moment but other platforms coming soon) and drop a comment with any feedback on [tennis-academy-dash].

[tennis-academy-dash]: https://iolivia.itch.io/tennis-academy-dash

### [Lonely Star][lonely-star]

> *Space is a lonely place, but at least you've got the music to keep you company.*

[Lonely Star][lonely-star] is a side-scrolling infinite runner, with simple generative music. You collect orbs and fly through rings in order to play notes and stay alive.

It was developed by [17cupsofcoffee][17cupsofcoffee], using the [Tetra][tetra] 2D game framework, for [Weekly Game Jam #135](weekly-game-jam-135).

[![Lonely Star screenshot](lonely-star.png)][lonely-star]

Tetra itself also received two small updates recently:

* [Version 0.3.2 was released][tetra-0.3.2], with bugfixes and some tools for simple AABB collision detection.
* [The Pong tutorial was updated with a new chapter][tetra-pong], showing how to use Tetra's graphics and input APIs.

[lonely-star]: https://17cupsofcoffee.itch.io/lonely-star
[17cupsofcoffee]: https://twitter.com/17cupsofcoffee
[tetra]: https://github.com/17cupsofcoffee/tetra
[weekly-game-jam-135]: https://itch.io/jam/weekly-game-jam-135
[tetra-0.3.2]: https://twitter.com/17cupsofcoffee/status/1217524602513055749
[tetra-pong]: https://twitter.com/17cupsofcoffee/status/1219758851416895489

## Library & Tooling Updates

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [Embark's open issues][embark-open-issues] ([embark.rs]);
- [winit's "Good first issue" and “help wanted” issues][winit-issues];
- [gfx-rs's "contributor-friendly" issues][gfx-issues];
- [wgpu's "help wanted" issues][wgpu-help-wanted];
- [luminance's "low hanging fruit" issues][luminance-fruits];
- [ggez's "good first issue" issues][ggez-issues];
- [Veloren's "beginner" issues][veloren-beginner];
- [Amethyst's "good first issue" issues][amethyst-issues];
- [A/B Street's "good first issue" issues][abstreet-issues];
- [Mun's "good first issue" issues][mun-issues];

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
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue

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
