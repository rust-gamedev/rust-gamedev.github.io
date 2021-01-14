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

### [Swoop][swoop-itch]

![Doing donuts while being overtaken](swoop.gif)
_Getting lapped by purple? - don't worry, it happens to everyone_

[Swoop][swoop-itch] by [@sdfgeoff] is a procedural racing web game
written in Rust from scratch.

> I've tried to make games in a variety of engines, but invariably got frustrated.
> So I decided to throw out the engine and find out what makes game-making so complex.
> It turns out that the stuff below the game engine is only slightly less friendly
> than the stuff above it.
>
> All up this game was a large experiment:
> I'm not all that familiar with Rust, it was my first go at targetting WASM,
> I've never used WebGL before, and my linear algebra is worse than I thought.

[The source code is available here][swoop-source] and
you can also read about about the process of making the game
here: ["WASM Games From Scratch"][swoop-book].

You can also play the game's [prototype version done in shadertoy][swoop-shadertoy]
and check out a [prototype of the next @sdfgeoff's project][swoop-next]
that is based on raymarching giant caves.

[swoop-itch]: https://sdfgeoff.itch.io/swoop
[swoop-source]: https://github.com/sdfgeoff/wasm_minigames
[swoop-shadertoy]: https://shadertoy.com/view/WlScWd
[swoop-book]: https://sdfgeoff.github.io/wasm_minigames/a_first_game_swoop.html
[swoop-next]: https://shadertoy.com/view/tltyRB
[@sdfgeoff]: https://github.com/sdfgeoff

## Learning Material Updates

### [WASM Games From Scratch][wasm-scratch-book]

![sprite transformation explanations](wasm_sprite_transform.svg)

[@sdfgeoff] published a book that describes the process
of building the abovementioned web game [Swoop][swoop-itch] from scratch:
["WASM Games From Scratch"][wasm-scratch-book].

> Game engines are huge behemoths, and contain algorithms
> for handling everything and the kitchen sink.
> While that's normally good, if you want to do something small,
> or possibly do something outside the bounds of a normal game enine,
> you suddenly have to learn how to do everything yourself.
>
> Or perhaps you just like the "type it and run" style of development
> for shadertoy shaders and want something similar
> that you can host on your system as (pretty much) a single file.
>
> Either way, this book chronicles my adventures
> into creating WASM games from scratch in Rust.

Some of the topics covered by the book:

- Building for WASM, event handling, WebGL and shader basics.
- Map generation using a Fourier series.
- Camera positioning and drawing a map, ships and engine trails.
- Ship physics and simple AI.

[wasm-scratch-book]: https://sdfgeoff.github.io/wasm_minigames

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
