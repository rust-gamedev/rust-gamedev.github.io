+++
title = "This Month in Rust GameDev #42 - January 2023"
transparent = true
date = 2023-02-09
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 42nd issue of the Rust GameDev Workgroup's
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

### [big-brain]

[big-brain] ([GitHub][big-brain-github], [Discord][big-brain-discord]) by [@zkat]
is a highly-parallel [Utility AI][big-brain-utility-ai] library
for the Bevy game engine.

[big-brain] recently tagged [v0.16.0][big-brain-v16],
bringing with it a couple of breaking changes and a few goodies.

Probably the biggest change in this release is removal of the blanket
[`ActionBuilder`][big-brain-action-builder] and [`ScorerBuilder`][big-brain-scorer-builder]
implementations for `Clone` types. This is a fairly significant breaking change,
but one that is fairly easy to resolve: simply use the new `#[derive(ActionBuilder)]`
and `#[derive(ScorerBuilder)]` macros to derive the necessary implementations
for your Action and Scorer Components and you should be good to go.

Finally, since the recent [merging of the bevy scheduler changes][big-brain-bevy-scheduler-changes],
big-brain users should expect the next version of big-brain to bring with it
some significant breaking changes to scheduling, so keep an eye out for that
and be mindful of building a lot on top of the current [`BigBrainStage`][big-brain-stage]
(which is used by the default `BigBrainPlugin`).

_Discussions: [Mastodon][zkat-mastodon-ann]_

[big-brain]: https://crates.io/crates/big-brain
[big-brain-github]: https://github.com/zkat/big-brain
[big-brain-discord]: https://discord.com/channels/691052431525675048/829441190067306596
[@zkat]: https://github.com/zkat
[big-brain-utility-ai]: https://en.wikipedia.org/wiki/Utility_system
[big-brain-v16]: https://github.com/zkat/big-brain/releases/tag/v0.16.0
[big-brain-action-builder]: https://docs.rs/big-brain/0.16.0/big_brain/actions/trait.ActionBuilder.html
[big-brain-scorer-builder]: https://docs.rs/big-brain/0.16.0/big_brain/scorers/trait.ScorerBuilder.html
[big-brain-bevy-scheduler-changes]: https://tech.lgbt/@alice_i_cecile/109815432105482093
[big-brain-stage]: https://docs.rs/big-brain/0.16.0/big_brain/enum.BigBrainStage.html
[zkat-mastodon-ann]: https://toot.cat/@zkat/109776883506682388

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
