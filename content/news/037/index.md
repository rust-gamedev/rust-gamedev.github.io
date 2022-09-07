+++
title = "This Month in Rust GameDev #37 - August 2022"
transparent = true
date = 2022-09-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 37th issue of the Rust GameDev Workgroup's
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

### [Catacomb 2-64k][catacomb-2-repo]

[![Catacomb 2 image](catacomb_2.png)][catacomb-2-repo]

[Catacomb 2-64k][catacomb-2-repo] is a (completed) experimental
project in porting a moderately complex project, first from C to unsafe Rust,
then to (fully) safe Rust.

The objective of the project has been to study the tooling, transformations
and the overall process required perfom real-world, exact, ports; an article
will follow in September on [64kramsystem's blog][64ramsystem-blog].

The port uses the [Rust-SDL2 bindings][rust-sdl2-bindings]. More exact ports
of id Software games are expected in the future, with the introduction of a
refactoring tool based on the [Language Server Protocol][language-server-protocol]
/[Rust Analyzer][rust-analyzer].

[catacomb-2-repo]: https://github.com/64kramsystem/catacomb_ii-64k
[64ramsystem-blog]: https://saveriomiroddi.github.io
[rust-sdl2-bindings]: https://github.com/Rust-SDL2/rust-sdl2
[language-server-protocol]: https://microsoft.github.io/language-server-protocol
[rust-analyzer]: https://github.com/rust-lang/rust-analyzer

### [CyberGate][cybergate-yt]

![browser udp technology](cybergate.jpg)
_The new browser version works exactly like the native version_

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]) by CyberSoul
is a new multiplayer project that aims at procedurally generating distinct
universes and gameplay experiences. CyberGate is the name of the main world
where universes can be created and accessed by quantum portals.

Recent updates:

- Ported to browser (wgpu with webgl backend)
- Unreliable network protocol achieved with WebRTC
- Dynamically spawn and synchronize ECS components using macros
- Massively improved the events system and actions system
- Refactored over 50% of the project
- Small features such as grabbing objects and dash forward
- Fixed 3 major bugs that slowed down the server

[Join the Discord server][cybergate-dis] to participate in upcoming Phase 5.0!

_Discussions: [/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/x60n9y/cybergate_45_progress_browser_udp_client_with/)_

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

## Engine Updates

### [miniquad]

[![diff](android_playground.gif)][quad-android-playground]

[miniquad] is a pure Rust, cross-platform graphics library.

This month was about polishing miniquad-android experience.
To make it easier for regression testing, miniquad got
[the android playground][quad-android-playground].

The playground demonstrates all known android shenanigans in
one quad-based app.

It includes:

- onscreen keyboard
- java interop (with file dialog as an example)
- dealing with big java services (with bluetooth as an example)
- accessing permissions, both runtime and compile time

[miniquad]: https://github.com/not-fl3/miniquad/
[quad-android-playground]: https://github.com/not-fl3/quad-android-playground

## Learning Material Updates

## Tooling Updates

## Library Updates

### [hot-lib-reloader]

![hot-lib-reloader thumbnail](hot-lib-reloader.png)

[hot-lib-reloader] is a development tool that allows you to reload functions
of a running Rust program. This allows to do "live programming" where you
modify code and immediately see the effects in your running program. Gone
are the days of edit-compile-restart loops (to some degree).

hot-lib-reloader works by reloading parts of your application that are defined
as dynamic libraries. This approach works on Linux, MacOS, and Windows but has
some constraints - see the [documentation] for details. There are several
[examples], showing how to create hot-reload setups with various frameworks
and libraries, e.g. bevy, egui, and [nannou].

[hot-lib-reloader]: https://github.com/rksm/hot-lib-reloader-rs
[documentation]: https://docs.rs/hot-lib-reloader/latest/hot_lib_reloader/
[examples]: https://github.com/rksm/hot-lib-reloader-rs/tree/master/examples
[nannou]: https://youtu.be/hyyeLtJ7SQk

### [bevy_kira_audio]

![Configuring a sound when playing it](bevy_kira_audio_settings.png)
_Configuring a sound when playing it_

[bevy_kira_audio] by [@nikl_me] is an alternative audio plugin for the [Bevy]
game engine. It uses [Kira] as its audio library and aims to integrate
well with Bevy's ECS.

Last month saw the release of versions [0.11.0] and [0.12.0]. With the
latest version, sound settings like volume, playback-rate, or panning can
be adjusted directly when playing audio. The screenshot above shows the new API
with multiple example settings. The plugin now also offers control
over single sound instances via asset handles and will apply configurable
tweens to most operations.

[bevy_kira_audio]: https://github.com/NiklasEi/bevy_kira_audio/
[Kira]: https://github.com/tesselode/kira
[@nikl_me]: https://twitter.com/nikl_me
[Bevy]: https://bevyengine.org/
[0.11.0]: https://github.com/NiklasEi/bevy_kira_audio/blob/main/CHANGELOG.md#v0110
[0.12.0]: https://github.com/NiklasEi/bevy_kira_audio/blob/main/CHANGELOG.md#v0120

### [bevy_asset_loader]

![Configuration of a loading state](loading_state.png)
_Configuration of a loading state_

[bevy_asset_loader] by [@nikl_me] is a plugin for [Bevy] apps aiming to
improve a common pattern for asset-loading. The boilerplate required to set up
a loading-state is reduced to a minimum. The plugin is based on storing
asset handles in resources, which makes it easy to use them in any system
across your app.

The screenshot above shows how a loading state can be added to the Bevy app
in the latest version of the plugin. The update also fixed issues with
configuring the same loading state in different places of your code and enabled
users to define their own dynamic assets.

[@nikl_me]: https://twitter.com/nikl_me
[bevy_asset_loader]: https://github.com/NiklasEi/bevy_asset_loader/
[Bevy]: https://bevyengine.org/

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
