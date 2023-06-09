+++
title = "This Month in Rust GameDev #46 - May 2023"
transparent = true
date = 2023-06-11
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 46th issue of the Rust GameDev Workgroup's
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

## Library Updates

### [seldom_state]

[seldom_state] is a Bevy plugin that adds a `StateMachine` component that you
can add to your entities. The state machine will change the entity's components
based on states, triggers, and transitions that you define. It's useful
for player controllers, animations, simple AI, etc.

This month, [seldom_state] 0.6 was released:

- Triggers don't need to be registered!
- `StateMachine::new(MachineState)` has been replaced with
  `StateMachine::default()`, and you must insert the initial state manually
- `MachineState` requires `Component` now instead of `Bundle`
- `MachineState` and `Trigger` no longer require `Reflect`
- `StateMachine`'s
  `trans_builder(Trigger, Fn(&Trigger::Ok) -> Option<MyNextState>)` is now
  `trans_builder(Trigger, Fn(&MyCurrentState, Trigger::Ok) -> Option<MyNextState>)`,
  so you can take information from the current state when building the next!
- `StateMachine` no longer tracks the current state, so you may add and remove
  state components manually, as long as it's still in one state. Manual state
  changes won't trigger `on_enter` etc events. States that aren't used in any
  transitions can be registered manually with `StateMachine::with_state`, else it
  will think it isn't in a state and panic.
- Replaced `StateMachine`'s `insert_on_enter(Bundle)` and `remove_on_exit()`
  with the more versatile `on_enter(Fn(&mut EntityCommands))`,
  `on_exit(Fn(&mut EntityCommands))`, `command_on_enter(Command)`, and
  `command_on_exit(Command)`
- `Trigger`s may be combined with combinators `not`, `and`, and `or`
- Transitions have priority in the order they are added
- `Trigger::trigger` accepts `ReadOnlySystemParam` instead of `&SystemParam`, so
  you can use `EventReader`, `Local`, etc in your triggers!
- Added an `EventTrigger<E>` that triggers on an event
- `StateMachine::set_trans_logging` sets whether to log state transitions for
  debugging.

Thanks to [Sera] for coauthoring this update!

[seldom_state]: https://github.com/Seldom-SE/seldom_state
[Sera]: https://github.com/deifactor

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
