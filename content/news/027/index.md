+++
title = "This Month in Rust GameDev #27 - October 2021"
transparent = true
date = 2021-11-04
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 27th issue of the Rust GameDev Workgroup's
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

## Game Updates

### [Lonely Star]

![Lonely Star screenshot](lonely-star.png)

[Lonely Star] is a 2D 'endless runner' game by [@17cupsofcoffee], featuring
simple generative music. It was built with [Tetra] back in February 2020,
for Weekly Game Jam 135.

This month, it was made [open-source][lonely-star-source], and received a
small update to improve the UI and fix a few bugs.

[Lonely Star]: https://17cupsofcoffee.itch.io/lonely-star
[Tetra]: https://github.com/17cupsofcoffee/tetra
[@17cupsofcoffee]: https://twitter.com/17cupsofcoffee
[lonely-star-source]: https://github.com/17cupsofcoffee/lonely-star

## Engine Updates

### [Tetra] 0.6.6

[Tetra] is a simple 2D game framework, inspired by XNA, Love2D, and Raylib. After
a few quiet months, version 0.6.6 has been released, featuring:

- A big overhaul of the keyboard API, with better support for international
  layouts
- Lots of new functions for manipulating the game window
- A long-requested [ECS example][tetra-ecs]
- Bugfixes and docs improvements

For more details, see the [changelog][tetra-changelog].

[Tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-changelog]: https://github.com/17cupsofcoffee/tetra/blob/main/CHANGELOG.md
[tetra-ecs]: https://github.com/17cupsofcoffee/tetra/blob/main/examples/ecs.rs

## Learning Material Updates

## Tooling Updates

### [SPV]

![SPV-0.1.0 screenshot](https://user-images.githubusercontent.com/23136737/139598984-4fcb2c74-4d65-4214-ae6c-f5a64276dacb.png)

[SPV] by [Albin Sjögren]
is a calculator utility for working with atronomical position and velocity data.

What was added for the first alpha release:

- A new UI
- Corrected vector normalizing
- JSON and TXT exporting

The primary features that are being worked on:

- A crate version
- Output filestrcuture
- Batch processing

For any feature requests, reach out to the developer on [Discord][spv-discord]
or [GitHub][spv].

[SPV]: https://github.com/AlbinSjoegren/SPV
[spv-discord]: https://discordapp.com/users/258254056185659392
[Albin Sjögren]: https://github.com/AlbinSjoegren

## Library Updates

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

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
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
