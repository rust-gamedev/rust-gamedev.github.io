+++
title = "This Month in Rust GameDev #15 - October 2020"
date = 2020-11-03
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the 15th issue of the Rust GameDev Workgroup's
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

### [pGLOWrpg]

![walking through a forest](pglowrpg.gif)

The [@pGLOWrpg] (Procedurally Generated Living Open World RPG) is a long-term
project in development by [@Roal_Yr], which aims to be a text-based game with
maximum portability and [accessibility](https://youtu.be/_jgzAddgEPU)
and focus on replayability, interactions, and emergent narrative.

For the past month the main focus of the development was on:

- Improving the UI.
- Implementing the input autocomplete system.
- Implementing save data import and parsing.
- Implementing world navigation system.
- Implementing rudimentary CLI graphics (for debugging and some future use).

Main features of reported (pre-alpha) version are:

- Ability to generate and explore one or many worlds (see previous news).

For main feature reports and dev blogs follow [@pGLOWrpg] on Twitter.

[@Roal_Yr]: https://twitter.com/Roal_Yr
[@pGLOWrpg]: https://twitter.com/pglowrpg
[pGLOWrpg]: https://github.com/roalyr/pglowrpg

## Learning Material Updates

## Library & Tooling Updates

### [glam] v0.10.0

[glam] is a simple and fast linear algebra crate for games and graphics.

This month v0.10.0 was released.
There were a lot of additions in this update and a small breaking change.

- The return type of `Vec4::truncate()` was changed from `Vec3A` to `Vec3` which
  is a breaking change and thus the version jumped from 0.9 to 0.10.
- Vector swizzle functions similar to those found in [GLSL] were added. Swizzle
  functions allow a vectors elements to be reordered. The result can be a vector
  of a different size to the input. Swizzles are implemented with SIMD
  instructions where possible, e.g. for the `Vec4` type.

  ```rust
  let v = vec4(1.0, 2.0, 3.0, 4.0);
  
  // Reverse elements of `v`.
  // If SIMD is supported this will use a vector shuffle.
  let wzyx = v.wzyx();
  
  let yzw = v.yzw(); // Swizzle the yzw elements of `v` into a `Vec3`
  let xy = v.xy(); // You can swizzle from a `Vec4` to a `Vec2`
  let yyxx = xy.yyxx(); // And back again
  ```

- [no_std] support was added, using [libm] for math functions that are not
  implemented in `core`.
- Optional support for the [bytemuck] crate was added, this allows appropriate
  glam types to be cast into `&[u8]`.

For a full list of changes see the [glam changelog].

[glam]: https://github.com/bitshifter/glam-rs
[GLSL]: https://www.khronos.org/opengl/wiki/Data_Type_(GLSL)#Swizzling
[no_std]: https://rust-embedded.github.io/book/intro/no-std.html
[libm]: https://github.com/rust-lang/libm
[bytemuck]: https://docs.rs/bytemuck
[glam changelog]: https://github.com/bitshifter/glam-rs/blob/master/CHANGELOG.md

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
