+++
title = "This Month in Rust GameDev #16 - November 2020"
date = 2020-12-02
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the 16th issue of the Rust GameDev Workgroup's
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

## Learning Material Updates

## Library & Tooling Updates

### [gfx-rs] and [wgpu]

![gfx-picture](wgpu-big-picture.svg)

The gfx-rs team has published a post ["The Big Picture"][gfx-post] providing
the overview of all projects in the works, and how they are connected to each other.

[wgpu] has moved from [gfx-extras] to the new [gpu-alloc] and [gpu-descriptor]
libraries by [@zakarumych]. These are backend-agnostic, which allows `wgpu`
to now depend on `gfx-hal` directly without intermediates. Patching [gfx-rs]
will now be easier, without the need to release every little change.

Finally, all the latest [wgpu] code has landed into Gecko, and new
features and fixes are implemented in Firefox. That allows it to run
most of the updated [WebGPU samples][wgpu-samples].

[gfx-rs]: https://github.com/gfx-rs/gfx
[wgpu]: https://github.com/gfx-rs/wgpu
[gfx-post]: https://gfx-rs.github.io/2020/11/16/big-picture.html
[gfx-extras]: https://github.com/gfx-rs/gfx-extras
[@zakarumych]: https://github.com/zakarumych
[gpu-alloc]: https://github.com/zakarumych/gpu-alloc
[gpu-descriptor]: https://github.com/zakarumych/gpu-descriptor
[wgpu-samples]: https://austineng.github.io/webgpu-samples

### [Tetra]

[Tetra] is a simple 2D game framework, inspired by XNA and Raylib. This month,
versions 0.5.3 and 0.5.4 were released, with some frequently requested features:

- A `Mesh` API, allowing users to create arbitary 2D geometry
- Experimental support for high-DPI rendering

There has also been numerous bug fixes and documentation improvements. For full
details and a list of breaking changes, see the [changelog][tetra-changelog].

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md

### [ogmo3]

[ogmo3] is a Rust crate for parsing projects and levels created with
[Ogmo Editor 3]. This month, version 0.1 was released, adding serialization
support, and helper methods for unpacking layer data. The [sample code][ogmo3-sample]
has also been updated to show the new helpers in action.

[ogmo3]: https://github.com/17cupsofcoffee/ogmo3
[Ogmo Editor 3]: https://ogmo-editor-3.github.io/
[ogmo3-sample]: https://github.com/17cupsofcoffee/ogmo3/blob/main/examples/sample.rs

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
