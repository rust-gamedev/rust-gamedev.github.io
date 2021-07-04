+++
title = "This Month in Rust GameDev #23 - June 2021"
date = 2021-07-01
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the {TODO}th issue of the Rust GameDev Workgroup's
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
  - [Open Combat](#open-combat)
- [Engine Updates](#engine-updates)
- [Learning Material Updates](#learning-material-updates)
- [Library & Tooling Updates](#library--tooling-updates)
  - [bevy_midi](#bevy_midi)
  - [bevy_config_cam](#bevy_config_cam)
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

### [Open Combat][opencombat]

![Open Combat logo](open_combat.jpg)

[Open Combat][opencombat]
([/r/OpenCombatGame](https://reddit.com/r/OpenCombatGame),
[Discord](https://discord.gg/YD2V7XsBQZ),
[Forum](https://discourse.opencombat.bux.fr/))
is a real time tactical game directly inspired from
[Close Combat Series](https://en.wikipedia.org/wiki/Close_Combat_(series)).
The player takes control of soldier units and orders them to win the battles
from a top down 2D view.

The project recently started with Rust language after a Python language proof of
concept in 2017. More info is available at [opencombat.bux.fr][opencombat],
and you can find a
[presentation](https://youtube.com/watch?v=pxVgjBKXlIw) video and a game
making of [video](https://youtube.com/watch?v=3TOEZ7krhvI) on YouTube.

[opencombat]: https://opencombat.bux.fr

## Engine Updates

## Learning Material Updates

## Library & Tooling Updates

### bevy_midi

[![bevy_midi logo](bevy_midi_logo.svg)](https://github.com/BlackPhlox/bevy_midi)

[bevy_midi](https://github.com/BlackPhlox/bevy_midi) by 
[@BlackPhlox](https://github.com/BlackPhlox) is a new bevy plugin that uses 
[midir](https://github.com/Boddlnagg/midir) to 
interact with the bevy game engine.

It started out with [bevy_osc](https://github.com/BlackPhlox/bevy_osc) as a
proof-of-concept interfacing with
[nannou_osc](https://github.com/nannou-org/nannou_osc)
and using other osc software to communicate with bevy.
Soon, realizing that nannou_osc is not that different
how you interfaces with midi, bevy_midi was born.

Here is one of the examples which you can use a midi controller
to play piano with ([audio](https://discord.com/channels/691052431525675048/692648638823923732/857177113923682304)): [Video](https://user-images.githubusercontent.com/25123512/124200245-1fb86700-dad5-11eb-88a8-67bfef473bec.mp4)

The plugins is still in its infancy.
So it still has some performance issues, so
any feedback and contributions is highly appreciated.
### bevy_config_cam

[![bevy_config_cam logo](bevy_config_cam_logo.svg)](https://github.com/BlackPhlox/bevy_config_cam)

[bevy_config_cam](https://github.com/BlackPhlox/bevy_config_cam) by [@BlackPhlox](https://github.com/BlackPhlox)
is an all-in-one purpose camera/player controller for bevy. 

With focus on plug-and-play,flexibility and ease of use, this bevy plugin is
for anyone who is prototyping in 3D and doesn't want the hassle of programming
a player-controller from scratch.Instantly switch between camera modes such as
Tracking to Topdown, Follow Behind, FPS and Free and more.

The plugins is very new.
So any feedback and contributions is highly appreciated.

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
