+++
title = "This Month in Rust GameDev #44 - March 2023"
transparent = true
date = 2023-04-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 44th issue of the Rust GameDev Workgroup's
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

### Matchbox

![matchbox logo](matchbox.png)

[Matchbox] is a library for easily establishing unreliable, unordered,
peer-to-peer WebRTC data connections using rust WASM (and native). This enables
cross-platform low-latency multiplayer games.

Previously, the socket opened a single udp-like data channel. In version 0.6,
however, support for adding extra channels with configurable ordering and
package retransmits was added. This enables direct p2p tcp-like connections as
well.

Two new crates were added in this release. `matchbox_signaling`, lets you
set up a custom signaling server, also supporting client-server topologies,
enabling scenarios where one player acts as the host for the other players.

`bevy_matchbox` provides ergonomic usage with Bevy. Severely cutting down on the
boiler-plate needed.

The tutorial series on [how to make a p2p web game with Bevy, GGRS and
Matchbox][extreme_bevy] was also updated to the latest versions of all three
libraries.

Read more about all the new features in the [0.6 release post][matchbox-0.6].

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/127ssuv/announcing_matchbox_06_painless_peertopeer_webrtc/),
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/127suhc/matchbox_06_released_painless_peertopeer_webrtc/),
[/r/bevy](https://www.reddit.com/r/bevy/comments/127sn3o/announcing_matchbox_06_and_a_new_bevy_matchbox/),
[Mastodon](https://mastodon.social/@johanhelsing/110119122081173196)_

[extreme_bevy]: https://johanhelsing.studio/posts/extreme-bevy
[Matchbox]: https://github.com/johanhelsing/matchbox
[matchbox-0.6]: https://johanhelsing.studio/posts/matchbox-0-6

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
