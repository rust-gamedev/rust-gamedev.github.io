+++
title = "This Month in Rust GameDev #47 - June 2023"
transparent = true
date = 2023-07-07
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 47th issue of the Rust GameDev Workgroup's
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

## Learning Material Updates

## Tooling Updates

## Library Updates

### [posh]

![Example code written with posh, simplified from the hello triangle
example](posh.jpg)

[`posh`][posh] is a crate that seamlessly integrates a graphics library with an
embedded functional shading language. It is a proof of concept that aims to
demonstrate that graphics programming can be both type-safe and ergonomic.

With `posh`, shaders are written in plain Rust (with some caveats). Procedural
macros are only required for defining custom vertex and uniform types.

The core component of `posh` is the `Program<U, V, F>` type, which acts as a
bridge between the shading language and the graphics library. This type
represents a compiled shader and serves as the entry point for draw calls. By
explicitly carrying the types `U` (uniform interface), `V` (vertex shader
interface), and `F` (fragment shader interface), `posh` enables static
verification, ensuring that the data provided in draw calls matches the shader's
signature.

For simplicity, `posh` currently targets OpenGL ES 3.0. Although it is an
experimental project, its authors hope to inspire the community to further
explore how static typing can elegantly bridge the gap between host code and
shader code.

For more details, check out the [examples][posh-examples] or the authors' [blog
post][posh-blog].

[posh]: https://github.com/leod/posh
[posh-examples]: https://github.com/leod/posh/tree/main/examples
[posh-blog]: https://leod.github.io/rust/gamedev/posh/2023/06/04/posh.html

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

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
