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

### Rusty Vangers

![Vange-rs rendered with a voxel tree](vangers-3rd-person.jpg)

[Rusty Vangers] ([GitHub][vangers-src], [Itch-io][vangers-itch]) is an
experimental re-implementation of the [Vangers] game,
using GPUs and multi-threading in Rust.

The project has started with a strong focus on rendering,
since efficient GPU implementation of a Voxel world as large as
2048x16384x256 (that's about 8 giga-voxels!) turned into a tough challenge,
even though the original game from 1998 easily does it on CPU.

Finally, after years of experiments, a method has been implemented
that is fast and universal when it comes to viewing angles. It's based
on an acceleration structure in the form of a voxel octree.
This work has landed at the start of November, and now it's possible
to [ride through][vangers-video] the strange worlds
while looking from behind the car, or even from inside it.

This method runs on all APIs (including OpenGL!), thanks to wgpu/naga
portability. It's suitably fast, regardless of perspective, even on
an old macBook with an integrated GPU. It concludes the rendering story
of the project, and we can shift focus on other areas.

_Discussions: [Reddit](https://www.reddit.com/r/rust_gamedev/comments/ypf38k/description_of_the_voxel_tracing_in_rusty_vangers/)_

[Rusty Vangers]: https://vange.rs/
[vangers-src]: https://www.github.com/yopox/LD51
[vangers-itch]: https://kvark.itch.io/vangers
[Vangers]: https://store.steampowered.com/app/264080/Vangers/
[vangers-video]: https://vimeo.com/manage/videos/765602608

## Engine Updates

## Learning Material Updates

## Tooling Updates

## Library Updates

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
