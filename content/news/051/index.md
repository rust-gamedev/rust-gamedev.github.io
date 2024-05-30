+++
title = "This Month in Rust GameDev #51 - May 2024"
transparent = true
date = 2024-06-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 51th issue of the Rust GameDev Workgroup's
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

### [Way of Rhea][wor]

[![Way of Rhea](wor.jpg)][wor]
*Way of Rhea: a puzzle game. Available on Steam.*

[Way of Rhea][wor] released on May 20th as part of the
[Cerebral Puzzle Showcase][wor-cps]!

[![Way of Rhea](wor-animated.gif)][wor]

Way of Rhea is a color-based puzzle game with difficult puzzles, but
forgiving mechanics developed by [Mason Remaley] in a custom Rust engine.

You can support development by [purchasing Way of Rhea on Steam][wor], or
[signing up for the mailing list][wor-mail] to hear about future games.

[Mason Remaley]: https://masonremaley.com/
[wor]: https://store.steampowered.com/app/1110620/Way_of_Rhea/?utm_campaign=tmirgd&utm_source=n51
[wor-mail]: https://anthropicstudios.com/newsletter/signup/tech
[wor-cps]: https://www.cerebralpuzzleshowcase.com/

### [Untitled Pixel Wizard Game][pixel-wizards]

[![A target being destroyed by a rudimentary flame thrower spell](untitled-pixel-wizards-game.gif)][pixel-wizards]
_A deadly foe meets their end._

[Untitled Pixel Wizard Game][pixel-wizards] is a local-multiplayer [Noita]-like platformer about
killing baddies using spells powered by pixel physics.

Over the last few months, the falling sand simulation learned to play (somewhat) nicely with Rapier
rigid bodies; see [Bridging Physics Worlds][pixel-wizards-bridging-physics-worlds] and subsequent updates.

This month:

- [Tilemapping via LDTK][pixel-wizards-tilemapping]: levels got just a tiny bit prettier.
- [Level Progression][pixel-wizards-levels]: players learned to die, and levels link together.
- [Architectural Ruminations][pixel-wizards-arch]: reflections on using Rust for game development,
  prompted by LogLog Games's '[Leaving Rust gamedev after 3 years]'.
- [Target Practice][pixel-wizards-targets]: the first "enemy" was added to the game.

[pixel-wizards]: https://slowrush.dev
[Noita]: https://store.steampowered.com/app/881100/Noita/
[pixel-wizards-bridging-physics-worlds]: https://www.slowrush.dev/news/bridging-physics-worlds/
[pixel-wizards-targets]: https://www.slowrush.dev/news/target-practice/
[pixel-wizards-arch]: https://www.slowrush.dev/news/architectural-questions/
[pixel-wizards-levels]: https://www.slowrush.dev/news/level-progression/
[pixel-wizards-tilemapping]: https://www.slowrush.dev/news/tilemapping/
[caspark]: https://github.com/caspark/
[Leaving Rust gamedev after 3 years]: https://loglog.games/blog/leaving-rust-gamedev/

### [mirr/orb]

![mirr/orb](mirrorb.png)

[mirr/orb] by [syn9]
is a puzzle game about bouncing lasers off mirrors to activate orbs.

The game was created in 9 days using syn9's Rust mini game framework (mgfw) and released on May 27th.

This release contains 110 levels which pull from 870 available puzzle layouts.

[mirr/orb]: https://syn9dev.itch.io/mirrorb
[syn9]: https://twitter.com/Syn9Dev

### [CyberGate Playground][cybergate-shorts]

![Improved Hammer Destruction](cybergate.mp4)
_Shooting a Hammer against a Floating Wall and Destroying part of it_

CyberGate Playground is a multiplayer browser game where players claim territory
by painting the environment in their color, with the goal of overpowering opponents.

The past few months' updates include:
- Flying with butterfly-like mechanics;
- [Fusion Upgrade:][cybergate-fuse] Combine hammers, balls, dices, to multiply their powers;
- Hammer destruction made more challenging and interesting, with upgrades enabling deeper wall penetration;
- Improved Strength and Weight system, and calculate their impact on character movement and abilities;
- Added an 'Owned Upgrades' menu using `yakui` crate, giving a neat overview of all acquired upgrades;
- Many other UI / gameplay improvements based on player feedback;

Rust's ownership and strongly typed features played a crucial role in allowing the gameplay code to scale 
to more complex and detailed mechanics while retaining correct, clean, and bug-free code.

CyberGate Playground is a passion project.
If you're interested in the game's progress, join the [Discord server][cybergate-discord]

[cybergate-shorts]: https://youtube.com/@cyber-gate/shorts
[cybergate-discord]: https://discord.gg/P3D8weeQ7Z
[cybergate-fuse]: https://www.youtube.com/shorts/ewnZ6VVSYMM

## Engine Updates

### [Macroquad]

![quad-gl](twiq_3d_helmet.gif)
_"Basic" 3d rendering (gltf helmet)_

[@Fedor](https://github.com/not-fl3/), creator of [*Quad], a game engine written in Rust, is starting a [This week in Quads](https://macroquad.rs/twiq) newsletter.

Overall polish, developer experience, performance optimization and basic 3d visualization have been worked on.

[Macroquad]: https://github.com/not-fl3/macroquad
[*Quad]: https://www.patreon.com/posts/on-buses-and-101117631

## Learning Material Updates

### Xkcd Machine

![XKCD Machine](xkcd_machine.gif)
_A small part of the XKCD Machine_

Chromakode released a detailed [blog post][xkcd_machine_blogpost] about their implementation of [xkcd "Machine"][xcd_machine_playable].

Machine is written in React/Typescript, and uses [Rapier][xkcd_rapier]: a physics engine written in Rust.

[xkcd_machine_blogpost]: https://chromakode.com/post/xkcd-machine/
[xcd_machine_playable]: https://xkcd.com/2916/
[xkcd_rapier]: https://rapier.rs/

## Tooling Updates

## Library Updates

## Popular Workgroup Issues in GitHub

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

### Bevy rustunit meetup #3

![Bevy meetup youtube extract](bevy_rustunit_meetup_3.jpg)
_Bevy meetup youtube extract, showing its 3 participants._

[Rustunit][rustunit] has hosted its 3rd unofficial online [Bevy Engine][bevy] meetup on April 19th with the following topics:
- Intro / Code of Conduct
- Julian - Animating 3D Characters with Bevy
- Niklas - Learnings from a Bevy game template

Check out [the recording][rustunit_bevy_meetup_3_youtube]
and join [the meetup group][rustunit_bevy_meetup_event] to get notified of future events.

[rustunit_bevy_meetup_3_youtube]: https://www.youtube.com/watch?v=Fyr1ud1OIpU

### Bevy rustunit meetup #4

![Bevy meetup youtube extract](bevy_rustunit_meetup_4.jpg)
_Bevy meetup youtube extract, showing its 4 participants._

[Rustunit][rustunit] has hosted its 4th unofficial online [Bevy Engine][bevy] meetup on May 24th with the following topics:
- Francois - Catching Rendering Regressions on all Platforms
- Lorenz - Hooking into the Bevy Rendering Pipeline
- Jos - Recreating Townscaper using Rust & Bevy

Check out [the recording][rustunit_bevy_meetup_4_youtube]
and join [the meetup group][rustunit_bevy_meetup_event] to get notified of future events.

[rustunit_bevy_meetup_4_youtube]: https://www.youtube.com/watch?v=rnE_nINEs2M
[rustunit]: https://rustunit.com/
[rustunit_bevy_meetup_event]: https://www.meetup.com/bevy-game-development/
[bevy]: https://bevyengine.org/


### RustNL

[RustNL][rustnl_main_website] happened May 7. & 8. in Delft, Netherlands.

While the conference was not specific to game development,
organizers contacted rust game development communities
to showcase games developed in Rust between talks,
which you can [watch on youtube][rustnl_games_youtube].

Special mention to the following talks, relevant to game development:
- [Let's Build High Performance Rust UI][rustnl_kevin_boos_talk] by Kevin Boos  
- [A Research Project on Rust User Interface Architecture][rustnl_xilem_talk] by Ralph Levien about [Xilem][rustnl_xilem_intro]  
- [(Th)Rust for Space: Initial momentum][rustnl_michael_melchiore_talk] by Michaël Melchiore, who gave a shout out to [Bevy Engine][rustnl_bevy_engine].

[rustnl_main_website]: https://2024.rustnl.org/
[rustnl_games_youtube]: https://www.youtube.com/watch?v=XLefuzE-ABU&t=7583s
[rustnl_xilem_talk]: https://www.youtube.com/watch?v=521NfGf7AR0&t=19308s
[rustnl_xilem_intro]: https://raphlinus.github.io/rust/gui/2022/05/07/ui-architecture.html
[rustnl_kevin_boos_talk]: https://www.youtube.com/watch?v=521NfGf7AR0&t=2928s
[rustnl_michael_melchiore_talk]: https://www.youtube.com/watch?v=XLefuzE-ABU&t=3898s
[rustnl_bevy_engine]:https://bevyengine.org/

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

Also, subscribe to our socials if you want to receive fresh news!
- X/Twitter: [@rust_gamedev][@x_rust_gamedev]
- Mastodon: [@rust_gamedev][@mastodon_rust_gamedev]
- Reddit: [/r/rust_gamedev][/r/rust_gamedev]

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@x_rust_gamedev]: https://twitter.com/rust_gamedev
[@mastodon_rust_gamedev]: https://mastodon.gamedev.place/@rust_gamedev
