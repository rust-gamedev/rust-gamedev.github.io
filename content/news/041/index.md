+++
title = "This Month in Rust GameDev #41 - December 2022"
transparent = true
date = 2023-01-04
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 41st issue of the Rust GameDev Workgroup's
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

### [Temple Knight]

![Shooting automatons in Temple Knight](temple-knight.jpg)
_Shooting automatons in Temple Knight_

Temple Knight ([Itch.io] [Twitter]) by [@nilaysavant]
is a 3D FPS game developed using [Bevy].
You play the role of a knight and protect the temple from raiding automatons.

What began as an experiment to learn game dev in Rust using [Bevy].
Initially motivated by the visual appeal of a [scene running in the browser via WASM].
It quickly started taking the shape of a game:

- From adding [Rapier🗡️] for [basic physics] to developing mechanics for other entities.
- Path finding for Automaton's using [control systems].
- Which was later switched to a deterministic [A-start navmesh approach].
- Developed mechanics for the player controller including the first-person-camera.
- Implemented weapon + projectiles systems.
- Finally [custom shaders for projectiles] were added as a finishing touch.

An experiment that became the first game published by [@nilaysavant].
Play [Temple Knight] in your browser.

[Temple Knight]: https://nilaysavant.itch.io/temple-knight
[Itch.io]: https://nilaysavant.itch.io/temple-knight
[Twitter]: https://twitter.com/nilay_savant/status/1607789552621727744
[@nilaysavant]: https://github.com/nilaysavant
[Bevy]: https://bevyengine.org/
[scene running in the browser via WASM]: https://twitter.com/nilay_savant/status/1568307034390675456
[Rapier🗡️]: https://rapier.rs/
[basic physics]: https://twitter.com/nilay_savant/status/1569665425046384641
[control systems]: https://twitter.com/nilay_savant/status/1573783227911012352
[A-start navmesh approach]: https://twitter.com/nilay_savant/status/1574735050809413633
[custom shaders for projectiles]: https://twitter.com/nilay_savant/status/1607115041253519361

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
[Mastodon](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
