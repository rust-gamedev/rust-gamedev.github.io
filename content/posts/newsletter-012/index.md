+++
title = "This Month in Rust GameDev #12 - July 2020"
date = 2020-08-03
transparent = true
draft = true
+++

Welcome to the twelfth issue of the Rust GameDev Workgroup’s
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
- [Library & Tooling Updates](#library--tooling-updates)
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

## Learning Material Updates

## Library & Tooling Updates

### [wgpu][wgpu-site]

![procgen dynamic "grass field"](tuitui-grass-field.jpeg)

^ _[@MacTuitui]'s everyday [nannou] experiement #1274_

The work is ongoing to validate all the incoming commands and guarantee API safety.
Special thanks to [@GabrielMajeri] for helping to convert assertions
into errors at `wgpu` level.
The wgpu devs are also introspecting shader requirements
and matching them against the pipelines, but this will take more effort
before it will become universally available.

[@cwfitzgerald] has been busy adding a few handy native-only extensions,
such as descriptor indexing and push constants.
They have also converted the project's logging to [tracing](https://crates.io/crates/tracing),
setting up the infrastructure for CPU profiling.

In the past 2 months, the API for descriptor structures in `wgpu-rs`
have been undergoing a turbulent period.
First, non-exhaustive semantics led to introduction of constructors.
Then, efforts to reduce code duplication inside `wgpu` project has led to the
[bovine invasion](https://github.com/gfx-rs/wgpu-rs/pull/460) on wgpu-rs API side.
The devs are figuring out the plan to address that with a builder pattern now,
which will address both the `Cow`s and non-exhaustives,
hopefully putting the end to the turbulence.

In the meantime, `wgpu-rs` ecosystem is flourishing with applications and libraries.
The [showcase gallery](https://wgpu.rs/#showcase) was updated with a few shiny images.

------

Finally, [@kunalmohan] has been busy
[implementing WebGPU in Servo][webgpu-in-servo], based on `wgpu`.
Thanks to this work, Servo is currently ahead of Gecko
in terms of API being up-to-date and covered 🎉.
It's already capable of rendering most of the examples,
and the devs are looking forward to the day when the same Rust code
(rendering with `wgpu-rs`) will be deployable to the Web,
and viewable from Firefox, Servo, Chrome, and other browsers.

[@GabrielMajeri]: https://github.com/GabrielMajeri
[@cwfitzgerald]: https://github.com/cwfitzgerald
[@kunalmohan]: https://github.com/kunalmohan
[webgpu-in-servo]: https://github.com/servo/servo/projects/24
[@MacTuitui]: https://twitter.com/MacTuitui
[nannou]: https://nannou.cc
[wgpu-site]: https://wgpu.rs

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
