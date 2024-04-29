+++
title = "This Month in Rust GameDev #50 - April 2024"
transparent = true
date = 2024-05-03
draft = false
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
- [Library Updates](#library-updates)
- [Other News](#other-news)
- [Discussions](#discussions)

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

*Please fill out [this survey][survey] before skiping this section! More info below!*

Hey everyone, it's been a while! As you've certainly noticed, the newsletter was on
a hiatus for a while. The reason was mostly maintainer burnout, which is also why
the newsletter of August 2023 was not published [until a few days ago][august-news].

We're back now though! The community member Jan Hohenheim ([@janhohenheim]) 
has taken up the main responsibility for reviving the newsletter. This includes making changes requested 
by the community, and making sure the format is sustainable for the long term. 

### Schedule Changes

Thierry Berger ([@Vrixyz]), who has also decided to help with the project,
has come up with a new monthly schedule that we will try out:

- 3rd of the month: Newsletter starts. A call for submissions is made on social media 
and community Discord servers interested in receiving it. At the same time, last month's newsletter is published.
- 3rd to 28th of the month: submissions are collected and the newsletter is written.
- 28th of the month: Submissions are closed. New submissions go into the next month's newsletter.
- 3rd of the next month: The newsletter is published. Any submissions not edited 
in time will be moved to the next month or removed entirely.

This more strict schedule should help with the issue of late entries and reduce the pressure of editing by
having a dedicated time for it with no incoming submissions. The goal is to be more consistent and reliable
in our publishing schedule.

### Community Survey

This restructuring is also a good time to improve the content of the newsletter.
We've got some community feedback on our [Discord] already and would like to hear more from you.
It would be great if you could fill out [this survey][survey] to let us know how 
we can improve the newsletter going forward.

### Future Steps

Based on feedback we've already gotten, the steps for next months are:
- Add an email subscription option to the newsletter
- Setup a system for how to edit entries that are not ready before the newsletter ships.
We are currently looking into either hiring a part-time editor, 
using generative AI to add a few sentences where needed, or simply removing these entries.

Additionally, we will be evaluating the [survey] results in the next newsletter, so stay tuned for that.

That's all for now. Have fun reading!


[august-news]: https://gamedev.rs/news/049/
[@janhohenheim]: https://github.com/janhohenheim
[@Vrixyz]: https://github.com/Vrixyz
[survey]: TODO
[Discord]: https://discord.gg/game-development-in-rust-676678179678715904

## Game Updates

### [Way of Rhea][wor]

[![Way of Rhea](wor.jpg)][wor-trailer]

[Way of Rhea][wor] just got a release date: it will be coming to Steam on
**May 20th, 2024**!

Way of Rhea is a color based puzzle game with difficult puzzles, but forgiving
mechanics being developed by [@masonremaley] in a custom Rust engine.

You can support development by [wishlisting Way of Rhea on Steam][wor], or
[signing up for the mailing list][wor-mail].

Recent updates:
- A [closed beta][wor-closed-beta] began
- All characters now have voices
- A [reset button][wor-reset] was added for when undo is inconvenient
- Speech bubbles now [identify the speaker][wor-speech-bubble]
- Orbs now are shown with an "xray" effect so they are visible even when behind scenery
- Older CPUs without AVX support are [now supported][wor-avx]
- Various [speedrunning features][wor-speedrun] were added
- Secrets were made harder
- An [in game achievement UI][wor-achievements] was created
- An [in game Jukebox UI][wor-jukebox] was created
- For more updates, see the [release notes on Steam][wor-release-notes]...

[@masonremaley]: https://twitter.com/masonremaley
[wor]: https://store.steampowered.com/app/1110620/Way_of_Rhea/?utm_campaign=tmirgd&utm_source=n50
[wor-trailer]: https://youtu.be/vFsO436r2Pw
[wor-closed-beta]: https://store.steampowered.com/news/app/1110620/view/7665759271877780609
[wor-reset]: https://clan.cloudflare.steamstatic.com/images//35599024/49e8760118b7b18e3b230ba3a3a28179c4b0e526.png
[wor-speech-bubble]: https://clan.cloudflare.steamstatic.com/images//35599024/5f63bca0a4258a26e77ac40b3d2a75f197304dcb.png
[wor-avx]: https://store.steampowered.com/news/app/1110620/view/4118050466869150657
[wor-speedrun]: https://clan.cloudflare.steamstatic.com/images//35599024/6ee82d4e0105f073082c83626e37933e682b5936.png
[wor-achievements]: https://clan.cloudflare.steamstatic.com/images//35599024/573f81c1ebce54d9efedcd693fcbe684a5629c7f.png
[wor-jukebox]: https://clan.cloudflare.steamstatic.com/images//35599024/b21c4b8ce5fa9cca7c6c1967ec5ffe169d8f1cb2.png
[wor-mail]: https://anthropicstudios.com/newsletter/signup/tech
[wor-release-notes]: https://store.steampowered.com/news/app/1110620

### [SM64JSARCHIVE][sm64jsarchive]

![Super Mario 64 JavaScript](sm64jsarchive.jpg)

[SM64JSARCHIVE][sm64jsarchive] is an actively maintained fork of [sm64js]: a decompilation project of Super Mario 64 to javaScript.
Its source code is available on [GitHub][sm64jsarchive-github]

The [backend server][sm64jsarchive-server] has been finally been able to start after 10 long months
and is now live to <https://mmo.sm64jsarchive.com>

The newest updates have been:

- Working MMO
- More stable changes to the games client

A stress test is scheduled for 2024-04-10 12:25 CST and everyone is invited!

Note: if you have a laggy computer or the page does not load within 10-20 minutes then please try refreshing.

[sm64jsarchive]: https://mmo.sm64jsarchive.com
[sm64jsarchive-github]: https://github.com/uuphoria2/sm64jsarchive
[sm64js]: https://github.com/sm64js/sm64js
[sm64jsarchive-server]: https://github.com/sm64jsarchived/sm64jsarchive-mmo-server

### [Open Combat][OpenCombat_website]

![OpenCombat: demo available soon](OpenCombat202404.jpg)
_Official demo available soon_

Open Combat ([Website][OpenCombat_website], [GitHub][OpenCombat_github],
[Discord][OpenCombat_discord]) is a real-time tactical game
which takes place during World War II.

Some major changes since last news!

- Basic HUD is now complete
- High definition map finished for the demo
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

### [Times of Progress][times-of-progress-steam]

![Times of Progress: an isometric city builder game set during the industrial revolution](times_of_progress.jpg)

Times of Progress ([Steam][times-of-progress-steam]) is an upcoming city builder game set during the industrial revolution.

During the month of April:
- The orders systems (how buildings request resources from other buildings) has been refactored to improve performance and make better use of the ECS.
- Lots of UI widgets have been developed, in particular those related to showing stats about currently hovered and selected building,
as well as during building placement.

The demo is not available yet but interested players can sign up for the upcoming closed beta by joining the [newsletter][times-of-progress-newsletter].

More GIFs and progress updates are available on [Twitter][times-of-progress-twitter] and [Mastodon][times-of-progress-mastodon].

[times-of-progress-steam]: https://store.steampowered.com/app/2628450/Times_of_Progress/
[times-of-progress-newsletter]: https://subscribepage.io/pressingthumbs
[times-of-progress-twitter]: https://twitter.com/ElmoSampedro
[times-of-progress-mastodon]: https://mastodon.online/@elmowilk

### Monk Tower

![Monk Tower Screen shot](monk_tower.png)

Monk Tower ([itch.io][monk-tower-itch], [Google Play][monk-tower-play], [Github][monk-tower-github])
is a tiny coffee-break roguelike game, intended for short runs (ca. 15mins).

The gameplay is quite distilled and revolves mostly around resource management.
The player has limited inventory capacity and the weapons get damaged
after each use. There are 20 randomly generated levels to beat.

It is available on desktop (Windows / Linux), Android and Web (mobile friendly).
The game is [open-sourced][monk-tower-github]) - together with a custom WGPU-based 2d framework.

_Discussions: ([/r/roguelikes][monk-tower-reddit])_

[monk-tower-itch]: https://maciekglowka.itch.io/monk-tower
[monk-tower-play]: https://play.google.com/store/apps/details?id=com.maciejglowka.monk_tower
[monk-tower-github]: https://github.com/maciekglowka/tower-rl
[monk-tower-reddit]: https://www.reddit.com/r/roguelikes/comments/1butvew/monk_tower_a_coffeebreak_roguelike_google_play/

### You are Merlin

![You are Merlin screenshot](you-are-merlin.png)

You are Merlin ([Web Game][you-are-merlin-web], [GitHub - Rust/CLI][you-are-merlin-github], [GitHub - WASM][you-are-merlin-www-github]) by @hseager
is a text adventure game that compiles to both CLI and WebAssembly.

This initial version features a main quest, side quests, items and a boss fight.
Players can choose their favourite theme such as Zelda, Warcraft and Fallout. 
With the web version, players can select their prefered input method of buttons or keyboard and fully works on mobile.
Although fairly simple, this first version provides a good foundation for building more features in later updates.

_Discussions: ([Reddit post][you-are-merlin-reddit-post])_

[you-are-merlin-web]: https://hseager.github.io/you-are-merlin-www/
[you-are-merlin-github]: https://github.com/hseager/you-are-merlin
[you-are-merlin-www-github]: https://github.com/hseager/you-are-merlin-www
[you-are-merlin-reddit-post]: https://old.reddit.com/r/rust_gamedev/comments/1c9k1kb/you_are_merlin_a_text_adventure_game/

### [Jumpy]

![Machine Gun and Periscope](jumpy.png)
_Jumpy: Machine gun and Periscope_

[Jumpy] ([GitHub][Jumpy], [Discord][jumpy_discord], [Twitter][jumpy_twitter]) by
[Spicy Lobster][spicy_lobster] is a pixel-style, tactical 2D shooter with a fishy
theme.

This month the base functionality of round scoring and map transitions have been implemented.
New weapons such as the Blunderbuss, Periscope, and Machine Gun are ready for fish on fish combat.

Jumpy is now featuring corpse physics and a "ragdoll" button to send your Fish [flopping about][jumpy_ragdoll].

On the treasure map for the near future is improving UX and new player experience,
polish and improvements on match scoring / round transitions, and more awesome weapons.

_Discussions: [GitHub][jumpy_discussions], [Twitter][jumpy_twitter]_

[Jumpy]: https://github.com/fishfolks/jumpy
[jumpy_ragdoll]: https://github.com/fishfolk/jumpy/pull/932
[jumpy_discussions]: https://github.com/fishfolks/jumpy/discussions
[jumpy_twitter]: https://twitter.com/spicylobsterfam
[jumpy_discord]: https://discord.gg/4smxjcheE5
[spicy_lobster]: https://spicylobster.itch.io/

## Engine Updates

### Bottomless-Pit 0.3.1
![The Bottomles-Pit Logo. A small hole in the ground with cat ears and text saying bottomless-pit](https://eggshark.dev/images/bplogo.png)


Bottomless-Pit is a 2d game engine written with WGPU that has been around for a year, which can be found on [crates.io][Bottomless-Pit_cratesio] and [GitHub][Bottomless-Pit_github].
Very recently a 2d camera was added as well as WASM and web support.
Current development is being focused on stability and QoL changes like texture sampling options and improved input.
You can checkout several engine examples on the web [here][Bottomless-Pit_Website].
Since the engine is in its infancy, its developer calls for developers to use it and give the engine some feedback.

Current features are:

- Custom Shader Support
- Basic rendering
- Text rendering
- Input and window event handling

[Bottomless-Pit_Website]: https://eggshark.dev/bp-examples
[Bottomless-Pit_cratesio]: https://crates.io/crates/bottomless-pit
[Bottomless-Pit_github]: https://github.com/EggShark/bottomless-pit

## Learning Material Updates

### Building games for Android with Rust

@maciekglowka has recently shared some thoughts about building Rust games
for Android. Rather than a step-by-step guide, it is a collection
of issues one can possibly encounter when targeting Android.

Topics mentioned:

- 'Window' creation (via winit)
- Android app's lifecycle vs. the WGPU surface creation
- User data storage
- System UI hiding via jni and Android API
- Building AAB files to meet Google Play requirements

[Blog post link][android-games-blog]

[android-games-blog]: https://maciejglowka.com/blog/building-games-for-android-with-rust/


### Bevy: A case study in ergonomic Rust

TODO: <https://www.youtube.com/watch?v=CnoDOc6ML0Y>

### Reactivity in Bevy: From the Bottom Up

TODO: <https://machinewords.hashnode.dev/reactivity-in-bevy-from-the-bottom-up-part-1>

## Library Updates

### Jolt Bindings

TODO: <https://docs.rs/joltc-sys/0.1.1+Jolt-5.0.0/joltc_sys/>

### Hexx 0.17

TODO: <https://github.com/ManevilleF/hexx/releases/tag/0.17.0>

### [Lightyear 0.13][lightyear_website]

[lightyear_website] is a comprehensive networking library for bevy to make multiplayer games.
It comes with multiple types of transports (WebTransport, WebSocket, UDP, etc.) 
and supports replication techniques like client-side prediction, server interpolation, interest management and more!
Check out the [examples][lightyear_examples]!

The latest release, [0.13][lightyear_release], brings two big new features:
- **Steam support**: you can now use the Steamworks SDK as your transport layer, which lets you use the Valve network!
Note that lightyear supports running multiple transports in parallel, so it's possible to have cross-play between steam and non-steam users.
- **Listen-server mode**: it is now possible to run a server and a client in the same process/bevy app.
This can be useful to avoid the costs of a dedicated server, or to have a similar codebase between singleplayer and multiplayer.

[Example (with 300ms of latency)](https://github.com/cBournhonesque/lightyear/assets/8112632/ee547c32-1f14-4bdc-9e6d-67f900af84d0)

[lightyear_website]: https://github.com/cBournhonesque/lightyear
[lightyear_release]: https://github.com/cBournhonesque/lightyear/releases/tag/0.13.0
[lightyear_examples]: https://github.com/cBournhonesque/lightyear/tree/main/examples

## Other News

Alice I. Cecile of the Bevy Foundation would like to collect community feedback
on game development in Rust. Please fill out [her survey](https://forms.gle/kLzv5Ww3U8dLGUHU8)!

## Discussions

TODO: <https://loglog.games/blog/leaving-rust-gamedev/>

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
