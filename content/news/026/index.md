+++
title = "This Month in Rust GameDev #26 - September 2021"
transparent = true
date = 2021-10-04
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 26th issue of the Rust GameDev Workgroup's
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

### [Harvest Hero Origins @ PAX West 2021](https://store.steampowered.com/app/1651500/Harvest_Hero_Origins/)

![hho @ pax](./hho_pax.jpg)
_Gemdrop Games booth at PAX West 2021_

Hey there rustaceans, [Gemdrop Games] recently took
Harvest Hero Origins to PAX West 2021.
We had a very positive response from most of the players!

Being able to watch people play the game was extremely valuable, we were
able to see pain points in UI/UX design and can now fix them without worry.
We were also able to see what players find fun about controlling each hero,
which helps us plan the next hero in the full release of the game.

Harvest Hero Origins is still planned to release by the end of 2021,
please wishlist on [steam] and I hope you're looking forward to it!


_Discussions:
[discord](https://discord.gg/CJRbxQn3d9)_

_built on [Emerald]_

[Emerald]: https://github.com/Bombfuse/emerald
[Gemdrop Games]: https://twitter.com/GemdropGames
[steam]: https://store.steampowered.com/app/1651500/Harvest_Hero_Origins/


## Engine Updates

### [good-web-game]

![supported platforms](supported_platforms.svg)

[`good-web-game`] has been released on crates.io, together with [`ggez`] 0.6.1!
`ggez` is a lightweight cross-platform game framework for making 2D games
with minimum friction, with an API inspired by Love2D. `good-web-game` is a
subset of ggez, which is based upon [`miniquad`] and can therefore run natively
on the web, mobile and of course desktop as well.

`good-web-game` was originally created to run [Zemeroth] on the web. However,
as Zemeroth switched from using `ggez` to [`macroquad`] the project was
discontinued, until recently. In search of [a new graphics backend for ggez]
the ggez team now picked up development again and released a massive update,
updating `good-web-game` for compatability to `ggez` 0.6, expanding its
functionality.

With only [a single change in boilerplate code] many `ggez` 0.6 games can now be
directly ported to `good-web-game`. Yet, it's no drop in replacement for `ggez`
as [several key differences remain].

[good-web-game]: https://github.com/ggez/good-web-game
[`good-web-game`]: https://github.com/ggez/good-web-game
[`ggez`]: https://github.com/ggez/ggez
[`miniquad`]: https://github.com/not-fl3/miniquad
[Zemeroth]: https://ozkriff.itch.io/zemeroth
[`macroquad`]: https://github.com/not-fl3/macroquad/
[a new graphics backend for ggez]: https://github.com/ggez/ggez/issues/962
[a single change in boilerplate code]: https://github.com/PSteinhaus/PSteinhaus.github.io/blob/main/ggez/web-examples/README.md#ggez-animation-example
[several key differences remain]: https://github.com/ggez/good-web-game#differences

### [Emerald]
![hotreload](emd_texture_hotreload.gif)
_Built in texture hot reloading, just call `emd.loader().hotreload()`_

The core principal of Emerald is to be super portable and easy-to-use.

[Emerald] has slowly been growing, both in contributor size and feature sets
recently. If any of this interests you and you'd like to contribute, [feel free to grab
a task](https://github.com/Bombfuse/emerald/issues), fork and PR!

New Features
- Texture hot reloading
    - COMING SOON - Sound hot reloading
- Cross-platform file saving/loading
    - This is essential for games, basically allows the user to save
    their files to the platform specific save directory.

Currently Support Platforms
- Windows
- Linux (WIP gamepad support)
    - [GameShell](http://imgur.com/a/8cWxOPs)
- MacOS (WIP gamepad support)
- Web (WIP Audio)
- Android (WIP audio, gamepad Support)
    - [WearOS](https://twitter.com/bombfuse_dev/status/1444100458260299778)

[Emerald]: https://github.com/Bombfuse/emerald


## Learning Material Updates

## Tooling Updates

## Library Updates

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

<!-- TODO: browse previous newsletter coord-issues and select some cool section
that wasn't written. -->

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
