+++
title = "This Month in Rust GameDev #11 - June 2020"
date = 2020-07-01
transparent = true
draft = true
+++

<!-- markdownlint-disable no-trailing-punctuation -->
<!-- markdownlint-enable line-length -->

Welcome to the eleventh issue of the Rust GameDev Workgroup’s
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

Table of contents:

- [Game Updates](#game-updates)
- [Learning Material Updates](#learning-material-updates)
- [Library & Tooling Updates](#library-tooling-updates)
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

### [A/B Street][abstreet] - Adjust Traffic Patterns in Real Cities

![Measuring the effects of changes](abstreet-evaluating-impacts.gif)

^ _Measuring the effects of some changes_

[A/B Street][abstreet] is a traffic simulation game exploring how
small changes to roads affect cyclists, transit users, pedestrians, and drivers.

June highlights:

- Alpha release with a [trailer][abstreet-trailer], an excited reaction from
  [r/seattle][abstreet-reddit], and some
  [local press coverage][abstreet-stranger]
- Support for parking lots, automatically inferring the number and position of
  individual slots from OpenStreetMap geometry
- Names of roads shown in-game, in a way that doesn't cause clutter with agents
  moving nearby
- Work starting on light rail and restricting through-traffic to zones

A/B Street uses a [custom GUI library][ezgui], leveraging `glium`, `usvg`, and
`lyon`. Help with Rust and visual/game design is always welcome! Check out the
[roadmap][abstreet-roadmap] and [good first issues][abstreet-issues].

[abstreet]: https://abstreet.org
[ezgui]: https://github.com/dabreegster/abstreet/tree/master/ezgui/
[abstreet-roadmap]: https://github.com/dabreegster/abstreet/blob/master/docs/roadmap.md
[abstreet-issues]: https://github.com/dabreegster/abstreet/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22
[abstreet-trailer]: https://www.youtube.com/watch?v=LxPD4n_1-LU
[abstreet-reddit]: https://old.reddit.com/r/Seattle/comments/hdtucd/ab_street_think_you_can_fix_seattles_traffic/
[abstreet-stranger]: https://www.thestranger.com/slog/2020/06/29/43999454/ab-streets-game-lets-you-create-the-seattle-street-grid-of-your-dreams

### [Guacamole Runner][guacamole]

![gif](guacamole.gif)

[Guacamole Runner][guacamole] is a small game made with
[Tetra][tetra] and [Shipyard][shipyard] in approximately 2 days
by [@EllenNyan][ellen_twitter].
The game's concept is that the player is constantly falling
and must jump off planes to stay in the air.
When they go over the top of the dirt tiles
they plant flowers which gives them points.

[guacamole]: https://github.com/EllenNyan/guacamole-runner
[ellen_twitter]: https://twitter.com/EllenNyan0214
[tetra]: https://github.com/17cupsofcoffee/Tetra
[shipyard]: https://github.com/leudz/shipyard

## Learning Material Updates

## Library & Tooling Updates

### [This Month in Mun][mun-june]

![Language Server Diagnostics in action](mun-languageserver.gif)

^ _Mun language server diagnostics in action_

[Mun] is a scripting language for gamedev focused on quick iteration times
that is written in Rust.

After the dust of the [Mun v0.2 release][mun-release] settled, this month focus
has been on fixing several issues found by community members, improving the
overall quality of the code base and working towards the next release: Mun v0.3.

Their [June updates][mun-june] include:

- [*Make It or Break It* contest](https://github.com/mun-lang/mun/issues/220);
- several fixes for issues that arose thanks to the contest;
- the foundation for Mun projects;
- an initial language server setup;

[Mun]: https://mun-lang.org
[mun-release]: https://mun-lang.org/blog/2020/05/16/release-mun-v0-2-0
[mun-june]: https://mun-lang.org/blog/2020/06/30/this-month-june

### [yaks]

[yaks] is a minimalistic framework for automatic multithreading
of [`hecs`] ECS library using [Rayon] data-parallelism library.

While the project itself started earlier this year, with this month's release
`yaks` gained an overhauled API, further leaning into the promise of
simplicity:

- systems are any functions or closures of a specific signature,
- `Executor` is a container for one or more systems,
- system execution order can be defined when building an `Executor`
  to create concurrent chains of systems,
- resources used by systems (any data that is not associated with an entity)
  are now borrowed for the duration of execution, instead of being owned
  by the framework.

All items in the library are exhaustively documented, and the repository
contains a fully annotated example.

Enabled-by-default `parallel` cargo feature can be disabled to force
everything in `yaks` to become single-threaded, which allows using code
written with the framework on platforms without threading - notably, web.

[yaks]: https://crates.io/crates/yaks
[`hecs`]: https://crates.io/crates/hecs
[Rayon]: https://crates.io/crates/rayon

### [Tetra 0.4][tetra-040]

[Tetra] is a simple 2D game framework, inspired by XNA and Raylib. This month,
[version 0.4][tetra-040] was released, featuring:

- A rework of the text rendering API, which improves performance and fixes a
  number of long-standing bugs
- Functions for capturing the player's mouse
- Various tweaks and bug fixes under the hood

Also, [a new guide has been added to Tetra's website][tetra-dist], listing some
things to consider when distributing your game to the public. This guide is
still a work in progress, so contributions are welcomed!

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-040]: https://twitter.com/17cupsofcoffee/status/1275778769077317637
[tetra-dist]: https://tetra.seventeencups.net/distributing/

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label-meeting] including full text notes
or [join the next meeting][join].

[label-meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

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

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

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
