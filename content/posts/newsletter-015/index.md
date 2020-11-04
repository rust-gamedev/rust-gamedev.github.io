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

### [rust-psp]

![tetris on rust-psp](rust-psp-tetris-small.jpg)

Move over Tetris Effect and Tetris 99, the first game has been created with
[rust-psp], and it's [Tetris]! This was a big step because it proves that
rust-psp is ready for game development, even though it's still `#![no_std]`.
`std` support is a work in progress, and the project is always open to new
contributors to the library, the tooling, or people who want to make PSP games
in Rust.

Another development for rust-psp this month is [reverse engineering]
of the Sony library for the hardware vector floating point unit of the PSP.
All the vector and matrix operations provided by the Sony library have been
PR'ed to our main repo, and there are still more functions to come.

To stay up to date on [rust-psp] development, you can join the project's [Discord]
or follow [@sajattack] on Twitter.

[rust-psp]: https://github.com/overdrivenpotato/rust-psp
[Tetris]: https://github.com/sajattack/rust-psp/tree/tetris/examples/tetris
[reverse engineering]: https://psp.re
[Discord]: https://discord.gg/tvGzD4GqvF
[@sajattack]: https://twitter.com/sajattack

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
