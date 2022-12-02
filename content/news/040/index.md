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

## Engine Updates

## Learning Material Updates

## Tooling Updates

## Library Updates

### [Bevy Sequential Actions]

![Bevy sequential actions simple demo](sequential_actions.gif)
_An entity with a queue of repeating actions._

`bevy-sequential-actions` ([GitHub][seq-actions-gh], [docs.rs][seq-actions-docs])
is a simple helper library for the [Bevy][bevy] game engine.
It aims to execute a queue of various actions in a sequential manner.

An action is anything that implements the `Action` trait,
and can be added to any `Entity` that contains the `ActionsBundle`.
In the image above, the following actions have been added:

```rust
commands
    .actions(entity)
    .config(AddConfig {
        order: AddOrder::Back,
        start: true,
        repeat: Repeat::Forever,
    })
    .add(WaitAction::new(1.0))
    .add(MoveAction::new(Vec3::X * 2.0))
    .add(WaitAction::new(1.0))
    .add(MoveAction::new(Vec3::X * -2.0));
```

With version `0.6` comes the ability to add a collection of actions that run in parallel.
This means that all actions will start and stop at the same time,
as the whole collection is treated as "one action".
In other words, the action queue will only advance
when all actions in the collection are finished.

```rust
commands
    .actions(agent)
    .add_many(
        ExecutionMode::Parallel,
        actions![
            action_a,
            action_b,
            action_c,
        ]
    );
```

[Bevy Sequential Actions]: https://crates.io/crates/bevy-sequential-actions
[seq-actions-gh]: https://github.com/hikikones/bevy-sequential-actions
[seq-actions-docs]: https://docs.rs/bevy-sequential-actions
[bevy]: https://bevyengine.org/

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
