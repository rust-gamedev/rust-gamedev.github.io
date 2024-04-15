+++
title = "This Month in Rust GameDev #50 - April 2024"
transparent = true
date = 2024-05-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 50th issue of the Rust GameDev Workgroup's
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

### [SM64JSARCHIVE][sm64jsarchive]

![Super Mario 64 JavaScript](sm64jsarchive.jpg)

[SM64JSARCHIVE][sm64jsarchive] Source code available on the ([GitHub][sm64jsarchive-github], sm64jsarchive is a rewrite
of the decompilation project of Super Mario 64 JavaScript as an actively maintained fork instead. 
The reason this was made as original sm64js's developers and admins / moderators got demotivated and 
fully left the project sm64jsarchive was made as an new reboot of sm64js.

The [backend server][sm64jsarchive-server] has been finally been able to start after 10 long months
and is now live to <https://mmo.sm64jsarchive.com>

The newest updates have been:

- Working MMO
- More stable changes to the games client

A stress test is scheduled for 2024-4-10 12:25 CST and everyone is invited!

Note: if you have a laggy computer or something like that and the page does not load within 10-20 minutes then please try refreshing.

[sm64jsarchive]: https://mmo.sm64jsarchive.com
[sm64jsarchive-github]: https://github.com/uuphoria2/sm64jsarchive
[sm64jsarchive-server]: https://github.com/sm64jsarchived/sm64jsarchive-mmo-server

### [Open Combat][OpenCombat_website]

![OpenCombat: demo available soon](OpenCombat202404.jpg)
_Official demo available soon_

Open Combat ([Website][OpenCombat_website], [GitHub][OpenCombat_github],
[Discord][OpenCombat_discord]) is a real-time tactical game
which takes place during the 2nd World War.

Some major changes since last news !

- Basic HUD is now complete
- Hight definition map finished for the demo
- Basic game logic finished

The game demo is almost finished.
Some things are missing like soldier high definition assets, or minimal AI for opponent.
But the demo is playable and we need some alpha players to make feedbacks 🎮 !
You can find game binaries on the [Github page][OpenCombat_release].
Please come and see us on the [Discord][OpenCombat_discord] to make your feedback !

[OpenCombat_website]: https://opencombat.bux.fr/
[OpenCombat_github]: https://github.com/buxx/OpenCombat
[OpenCombat_discord]: https://discord.gg/6P2vtFh2Px
[OpenCombat_release]: https://github.com/buxx/OpenCombat/releases

## Engine Updates

### Bottomless-Pit 0.3.1
![The Bottomles-Pit Logo. A small hole in the ground with cat ears and text saying bottomless-pit](https://eggshark.dev/images/bplogo.png)


Bottomless-Pit is a 2d game engine written with WGPU that has been around for a year which can be found on [crates.io][Bottomless-Pit_cratesio] and [GitHub][Bottomless-Pit_github].
Very recently a 2d camera was added as well as WASM and web support.
Current development is being focused on stability and QoL changes like texture sampling options and improved input.
You can checkout several engine examples on the web [here][Bottomless-Pit_Website].
Since the engine is in it's infancy it would be great to have developers use it and give the engine some feedback.
Current features are:

- Custom Shader Support
- basic rendering
- text rendering
- input and window event handling

[Bottomless-Pit_Website]: https://eggshark.dev/bp-examples
[Bottomless-Pit_cratesio]: https://crates.io/crates/bottomless-pit
[Bottomless-Pit_github]: https://github.com/EggShark/bottomless-pit

## Learning Material Updates

## Tooling Updates

## Library Updates

### [Lightyear 0.13][lightyear_website]

[lightyear_website] is a comprehensive networking library for bevy to make multiplayer games.
It comes with multiple types of transports (WebTransport, WebSocket, UDP, etc.) and supports replication techniques like client-side prediction, server interpolation, interest management and more!
Check out the [examples][lightyear_examples]!

The latest release, [0.13][lightyear_release], brings two big new features:
- **Steam support**: you can now use the Steamworks SDK as your transport layer, which lets you use the Valve network! Note that lightyear supports running multiple transports in parallel, so it's possible to have cross-play between steam and non-steam users.
- **Listen-server mode**: it is not possible to run a server and a client in the same process/bevy app. This is can be useful to avoid the costs of a dedicated server, or to have a similar codebase between singleplayer and multiplayer.


Example (with 300ms of latency): https://github.com/cBournhonesque/lightyear/assets/8112632/ee547c32-1f14-4bdc-9e6d-67f900af84d0

[lightyear_website]: https://github.com/cBournhonesque/lightyear
[lightyear_release]: https://github.com/cBournhonesque/lightyear/releases/tag/0.13.0
[lightyear_examples]: https://github.com/cBournhonesque/lightyear/tree/main/examples


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
