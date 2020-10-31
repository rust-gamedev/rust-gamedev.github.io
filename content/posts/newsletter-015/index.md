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

## Learning Material Updates

## Library & Tooling Updates

### [Arsenal]

![Arsenal Engine](./arsenal.png)

Arsenal is a [Blender] game engine built on Rust and the [Bevy] game engine.
Arsenal's goal is to bring the ability to makes games of any scale to game
developers and artists of any experience level.

In the last month Arsenal has gotten back into full steam development with the
goal to produce an Arsenal 0.2 release that you can make simple games with.
Development has focused thus far on the all-important scripting interface
necessary to be able to make games without re-compiling the engine. Great
progress has been made on a Bevy [pull request][bevy_dynamic_pr] to facilitate
dynamic components and systems, and the first efforts have been started to
leverage that functionality to enable scripting with Python.

Weekly Arsenal development updates are made in the [Arsenal channel] on
[Katharostech.com], including the updates for this month:

- [Arsenal Development: Week 1 of Full Time Dev][arsenal_dev_week_1]
- [Arsenal Development: Week 2 - Bevy Benchmarks][arsenal_dev_week_2]
- [Arsenal Development: Week 3 - Nailing Down Dynamic ECS][arsenal_dev_week_3]
- [Arsenal Development: Week 4 - Lock Free Dynamic Queries][arsenal_dev_week_4]

_Links:
[GitHub Sponsors](https://github.com/sponsors/katharostech),
[GitHub Issues](https://github.com/katharostech/arsenal/issues),
[Project Workboard](https://github.com/katharostech/arsenal/projects/1)_

[arsenal]: https://github.com/katharostech/arsenal
[blender]: https://blender.org
[bevy]: https://bevyengine.org
[bevy_dynamic_pr]: https://github.com/bevyengine/bevy/pull/623
[katharostech.com]: https://katharostech.com
[arsenal channel]: https://katharostech.com/tag/arsenal
[arsenal_dev_week_1]: https://katharostech.com/post/arsenal-development-week-1-of-full-time-dev
[arsenal_dev_week_2]: https://katharostech.com/post/arsenal-development-week-2-bevy-benchmarks
[arsenal_dev_week_3]: https://katharostech.com/post/arsenal-development-week-3-nailing-down-dynamic
[arsenal_dev_week_4]: https://katharostech.com/post/arsenal-development-week-4-lock-free-dynamic-queries

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
