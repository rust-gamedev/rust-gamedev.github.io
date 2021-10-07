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

## Rust Graphics Meetup \#1

![logo](graphics-meetup.png)

The Rust Graphics Meetup is an online gathering where rustaceans share
technical details of their work related to graphics and compute,
not affiliated to any particular stack.
The pilot edition has happened on Oct 2nd! Check out the talks:

- [gfx-rs Lessons Learned][rgm1-video] - [@kvark], [slides][rgm1-slides].
- [rend3 Architecture: Efficient, Customizable Rendering][rgm2-video] -
  [@cwfitzgerald], [slides][rgm2-slides].
- [Blub - Interactive GPU Fluid Solver][rgm3-video] - [@wumpf], [slides][rgm3-slides].

Learn more at the [gfx meetup repo].
Thanks everyone for tuning in and helping to make this happen!

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/q08byh/videos_from_rust_graphics_meetup_1),
[Twitter](https://twitter.com/rust_gamedev/status/1444326130035666953)_

[rgm1-video]: https://youtube.com/watch?v=m0JgF5Wb-dA
[rgm1-slides]: https://github.com/gfx-rs/meetup/blob/main/Meeting01/GfxLessonsLearned.pdf
[rgm2-video]: https://youtube.com/watch?v=F0wGz5UJTrY
[rgm2-slides]: https://github.com/gfx-rs/meetup/blob/main/Meeting01/rend3s_Architecture_-_Efficient_Customizable_Rendering.pdf
[rgm3-video]: https://youtube.com/watch?v=Yzr9va5UtiE
[rgm3-slides]: https://github.com/gfx-rs/meetup/blob/main/Meeting01/Blub_-_Quick_tour_through_a_GPU_fluid_solver.pdf
[gfx meetup repo]: https://github.com/gfx-rs/meetup
[@kvark]: https://github.com/kvark
[@cwfitzgerald]: https://github.com/cwfitzgerald
[@wumpf]: https://github.com/wumpf

## Game Updates

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

## Learning Material Updates

## Tooling Updates

## Library Updates

### [wgpu]

![Deno with wgpu crown](deno-wgpu.png)
_deno-wgpu_

[wgpu] is a cross-platform, safe, pure-rust graphics API that runs natively
on Vulkan, Metal, D3D12, D3D11, and OpenGLES; and on top of WebGPU on wasm.

wgpu has set up the infrastructure to run WebGPU proper tests on its CI,
via [Deno]. This will ensure correctness down the road when we reach a
decent level of coverage. Read more on [gfx-rs blog].

Aside from that, wgpu team has been pumping out patches. In fact, wgpu-0.10 is
easily the most patched release of all!

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/ppgb2l/wgpu_alliance_with_deno),
[twitter](https://twitter.com/deno_land/status/1438573126670028801)_

[wgpu]: https://github.com/gfx-rs/wgpu
[Deno]: https://github.com/denoland/deno
[gfx-rs blog]: https://gfx-rs.github.io/2021/09/16/deno-webgpu.html

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
