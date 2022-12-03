+++
title = "This Month in Rust GameDev #40 - November 2022"
transparent = true
date = 2022-12-01
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 40th issue of the Rust GameDev Workgroup's
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

## Announcements

## Game Updates

## Engine Updates

### [Pixel Engine][pixel_engine]

[pixel_engine] by [@Maix0] is a 2D game engine that started as a Rust-version
of olcPixelGameEngine (written in C++). It was used as a learning project
for Maix0, where he worked on it for over 3 years.

This engine has a very straightforward API and is mostly CPU based
(the exception is Decals which are GPU-sprites) but it can achieve some things.
Use it as a way to learn new algorithms or to make a simple game.

It uses [wgpu] underneath so there is support for all desktop targets and WASM
(even though there is a bug in the WASM builds
where the keyboard layout is only QWERTY).

The most recent addition is the [SpriteRef], a way to create a view
inside a sprite where it is possible to draw in it.
You can have multiple non-overlapping views at the same time.

[pixel_engine]: https://github.com/Maix0/pixel_engine
[@Maix0]: https://github.com/Maix0
[SpriteRef]: https://docs.rs/pixel_engine/0.6.0/pixel_engine/graphics/struct.SpriteMutRef.html
[wgpu]: https://wgpu.rs/

## Learning Material Updates

## Tooling Updates

### [Boytacean][boytacean]

Boytacean ([Github][boytacean], [Working Emulator][boytacean-web])
by [@joamag] is a Game Boy emulator written in Rust
with both Native (using SDL) and Web (using WebAssembly) frontends that has been
created as a learning experiment to better understand both Rust capabilities and
Game Boy hardware.
The Web frontend is especially interesting making use of Web standards like
[Gamepad API][gamepad-api] to provide a rich and joyful experience for both
desktop and mobile devices.
Performance wise the web version runs smoothly with little to no significant
hardware requirements.

Even though Boytacean supports most Game Boy games and passes most well known
test ROMs there are still some features lacking like support for Game Boy Color
and APU (sound) support.

You can check this [Reddit post][boytacean-red-ann] for more information.

[boytacean]: https://github.com/joamag/boytacean
[boytacean-web]: https://boytacean.joao.me
[@joamag]: https://github.com/joamag
[gamepad-api]: https://developer.mozilla.org/docs/Web/API/Gamepad_API/Using_the_Gamepad_API
[boytacean-red-ann]: https://reddit.com/r/rust/comments/ywxugc/game_boy_emulator_using_rust

## Library Updates

### [bevy_atmosphere 0.5](https://github.com/JonahPlusPlus/bevy_atmosphere)

![bevy_atmosphere collage](bevy_atmosphere.png)

bevy_atmosphere is now compatible with bevy 0.9.

The focus of this update was decoupling the atmospheric model from the
compute pipeline. What this means is that users can choose a different model
or create their own using the `Atmospheric` trait. This sets the groundwork for
having a variety of models to choose from, each for a different type of game.

With the removal of the `Atmosphere` resource, comes the addition of the
`AtmosphereModel` resource and the `Nishita` and `Gradient` models. `Nishita`
is the same model that was used in previous version of bevy_atmosphere.
`Gradient` is a new model that provides a simple gradient of three colors,
making it ideal for stylized games.

There is also the `Atmosphere<T>` and `AtmosphereMut<T>` system params,
which can be used to work with a particular model
without having to cast it from `AtmosphereModel`.

If you want to read more about the technical changes, check out my
[blog post](https://jonahplusplus.dev/2022/12/01/bevy_atmosphere_0.5.html)!

_External Links:
[Blog Post](https://jonahplusplus.dev/2022/12/01/bevy_atmosphere_0.5.html),
[crates.io](https://crates.io/crates/bevy_atmosphere),
[docs.rs](https://docs.rs/bevy_atmosphere/latest/bevy_atmosphere/),
[GitHub](https://github.com/JonahPlusPlus/bevy_atmosphere)_

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/za948o/bevy_atmosphere_05_is_now_released/),
[/r/bevy](https://www.reddit.com/r/bevy/comments/za93oo/bevy_atmosphere_05_is_now_released/),
[/r/rust](https://www.reddit.com/r/rust/comments/za93zb/bevy_atmosphere_05_is_now_released/)_

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
