+++
title = "This Month in Rust GameDev #45 - April 2023"
transparent = true
date = 2023-05-08
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 45th issue of the Rust GameDev Workgroup's
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

### [CyberGate][cybergate-yt]

![hundreds of npcs smoothly interpolating](cybergate.jpg)
_hundreds of npcs smoothly interpolating_

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]),
an ambitious multiplayer project in development by CyberSoul,
aims to invite players into a constantly evolving universe.
Harnessing the power of procedural generation and artificial intelligence,
this work-in-progress aspires to provide an engaging experience
that emphasizes exploration and discovery across its diverse worlds.

The latest updates to CyberGate include:

- Networking Interpolation version 2:
  increased reliability over frame rate changes,
  improved accuracy of object motion and detail by ~20%,
  and objects update 12-45 milliseconds faster.
- Server compilation was drastically simplified (100x faster).
- Improved browser server process, to have more consistent behavior.
- Improved mouse lock on browsers.
- Simplified code related to state synchronization.
- Significant gameplay changes and bug fixes.

They are currecntly working on universe generation alghoritms for version 8.0.
Participate [by joining the Discord server][cybergate-dis].

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

## Engine Updates

## Learning Material Updates

### [Bevy <3 Github Actions][bevy-github-actions-blog]

![bevy logo](bevy_github_actions.png)

[Piotr Siuszko][piotr-siuszko] wrote [a blog post][bevy-github-actions-blog]
explaining how to automate building and publishing game written with Bevy
to GitHub Pages using GitHub Actions.

[piotr-siuszko]: https://mastodon.gamedev.place/@MevLyshkin
[bevy-github-actions-blog]: https://mevlyshkin.com/blog/bevy-github-actions

## Tooling Updates

### [Luminol][luminol-github]

![Luminol Screenshot](./luminol.png)

#### What is Luminol

Luminol ([Github][luminol-github] by [@speak2erase][@speak2erase]) is a remake
of the RPG Maker editor,
based mostly off of
[RPG Maker XP](https://store.steampowered.com/app/235900/RPG_Maker_XP/).
(RMXP from here on)
Created by [Leelee][@speak2erase] and [somedevfox][@somedevfox],
with the intent of creating a more modern, feature rich,
and open source version of RMXP.

RGSS, RMXP's runtime, has already been open sourcecd thanks to [mkxp](https://github.com/Ancurio/mkxp).
However despite the several attempts, no one has fully remade the editor.
There are [some tools](https://github.com/20kdc/gabien-app-r48) out there which
cover some of its functionality, but none are user friendly, nor feature complete.
And we aim to change that!

#### Key Differences

- Completely GPU accelerated (RMXP is software rendered!)
- Edit multiple maps at the same time
- Multiple data formats
- Edit encrypted archives (rgssad)
- Open source
- Won't make you pull your hair out

#### Motivation

RGSS, RMXP's runtime, is actually quite enjoyable to use.
The actual editor though- not so much.

There's too many reasons to dislike RMXP to list, but here's some of the worse ones:

- Dated, and often unintuitive UI
- Hard to extend, comments are usualy used as a hack
- Uses a binary format, making it allergic to source control
- Arbitrary limits that never existed in previous versions

Luminol was born out of sheer frustration from dealing with these issues-
and hopes to fix them!

#### Contributing

Luminol is currently looking for contributors too!

[There is a lot to be done.](https://github.com/Astrabit-ST/Luminol/issues)

If you'd like to help contribute, please reach out to [@speak2erase][@speak2erase]!

#### Links

- [github][luminol-github]
- [@speak2erase][@speak2erase] (main contributor)
- [@somedevfox][@somedevfox]

[luminol-github]: https://github.com/Astrabit-ST/Luminol
[@speak2erase]: https://github.com/Speak2Erase
[@somedevfox]: https://github.com/somedevfox

## Library Updates

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
