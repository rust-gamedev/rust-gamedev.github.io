+++
title = "This Month in Rust GameDev #53 - July 2024"
transparent = true
date = 2024-08-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 53th issue of the Rust GameDev Workgroup's
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
- [Popular Workgroup Issues in GitHub](#popular-workgroup-issues-in-github)
- [Other News](#other-news)
- [Meeting Minutes](#meeting-minutes)
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)
- [Bonus](#bonus)
- [Future news](#future-news)

<!--
Ideal section structure is:

```
### [Title]

{{ image_figure(
    alt="image/GIF description",
    src="image link",
    caption="image caption") }}

OR

{{ video_figure(
    type="video/mp4", 
    src="my-video.mp4", 
    caption="optional video caption") }}

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

### [Chuột][chuot-website]

{{ image_figure(
    alt="Bunnymark example",
    src="chuot.png",
    caption="[Bunnymark example](https://tversteeg.nl/chuot/examples/bunnymark/)") }}

Chuột ([Website][chuot-website], [GitHub][chuot-github]) by [@tversteeg]
is an AGPL licensed game engine for 2D pixel-art games.

The main goal of the Chuột (Vietnamese for mouse) game engine is to make it easy to create and deploy small FOSS games.
The license has been chosen to foster an open community of game development.

The Chuột game engine is standing on the shoulders of giants of the Rust ecosystem,
such as [winit] for window handling and [wgpu] for drawing graphics.

Recently, [version 0.2][chuot-0.2] has been released, which includes a big rewrite
of the internal system and simplifying a lot of the API.
Many rough and inconsistent parts have been cleaned up and renamed,
resulting in quite a lot of breaking changes.
This mainly happened because the developer was still finding a proper direction for the engine.
Asset loading has been improved, especially asset hot-reloading,
which is now also enabled by defining an external asset source.

_Check out the [web examples][chuot-examples]!_

[chuot-website]: https://tversteeg.nl/chuot
[chuot-github]: https://github.com/tversteeg/chuot
[chuot-0.2]: https://github.com/tversteeg/chuot/releases/tag/chuot-v0.2.0
[chuot-examples]: https://tversteeg.nl/chuot/examples
[winit]: https://docs.rs/winit
[wgpu]: https://docs.rs/wgpu
[@tversteeg]: https://github.com/tversteeg

## Learning Material Updates

## Tooling Updates

## Library Updates

## Popular Workgroup Issues in GitHub

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

## Future news

<!-- Section to get more people involved in writing news. -->

Editing this newsletter wouldn't be possible without [your contributions][news_current_prs]. 
Thanks to everyone who helped us this month!

If you want something mentioned in the next newsletter, [send us a pull request][pr].

You can also get an early look at pending issues for the [next newsletter][news_future_prs].

[news_current_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N53%27
[news_future_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N54%27

------

That's all news for today, thanks for reading!

Also, subscribe to our socials if you want to receive fresh news!
- X/Twitter: [@rust_gamedev][@x_rust_gamedev]
- Mastodon: [@rust_gamedev][@mastodon_rust_gamedev]
- Reddit: [/r/rust_gamedev][/r/rust_gamedev]

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@x_rust_gamedev]: https://twitter.com/rust_gamedev
[@mastodon_rust_gamedev]: https://mastodon.gamedev.place/@rust_gamedev
