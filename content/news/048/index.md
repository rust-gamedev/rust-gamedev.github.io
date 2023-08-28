+++
title = "This Month in Rust GameDev #48 - July 2023"
transparent = true
date = 2023-08-25
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 48th issue of the Rust GameDev Workgroup's
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

### [Rerun][rerun]

![Rerun showing a large 3D point cloud](rerun.png)

[Rerun][rerun] ([Discord][rerun-dis], [Github][rerun-gh]) is an open-source SDK
for logging complex visual data paired with a visualizer for exploring that data
over time. While its primary focus is on robotics and computer vision, it can be
useful for all kinds of rapid prototyping & algorithm development.

[v0.8.0][rerun-v0-8-0] and subsequently [v0.8.1][rerun-v0-8-1] are out now!

A few of the biggest highlights:

- Pinhole logging is now easier to use in many cases.
- The visualizer can now show coordinate arrows for all affine transforms
  within the view.
- Users that build their own Viewer applications can now add fully custom Space Views.
- New optional flush_timeout specifies how long Rerun will wait if a TCP stream
  is disconnected during a flush.
- The `RecordingStream` now offers a stateful time API, similar to the Python APIs
- Defaults to 8ms long microbatches instead of 50ms. This makes the default behavior
  more suitable for use-cases like real-time video feeds.
- The web viewer now incremental loads .rrd files when streaming over HTTP. #2412

There's a growing community on [Discord][rerun-dis] waiting for you to join in
case you have any questions, comments or just want to follow the latest
development. The [Github project][rerun-gh] is MIT/Apache licensed and open to
contribute for everyone, be it with suggestions, bugs or PRs.

[rerun]: https://rerun.io
[rerun-dis]: https://discord.gg/npTFxYR9
[rerun-gh]: https://github.com/rerun-io/rerun
[rerun-v0-8-0]: https://github.com/rerun-io/rerun/releases/tag/0.8.0
[rerun-v0-8-1]: https://github.com/rerun-io/rerun/releases/tag/0.8.1

## Library Updates

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
