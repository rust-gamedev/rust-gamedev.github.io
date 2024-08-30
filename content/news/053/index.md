+++
title = "This Month in Rust GameDev #53 - July 2024"
transparent = true
date = 2024-08-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 53th issue of the Rust GameDev Workgroup's
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
- [Future news](#future-news)

<!--
Ideal section structure is:

```
### [Title]

{{ image_figure(
    alt="image/GIF description",
    src="image link",
    caption="image caption") }}

OR

{{ video_figure(
    type="video/mp4", 
    src="my-video.mp4", 
    caption="optional video caption") }}

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

### [Tilers (DOS game)][dos-tilers]

{{ image_figure(
    alt="Screenshot from Tilers",
    src="dos-tilers.jpg",
    caption="Shuffled tiles of a photograph in Tilers. One of the tiles is being moved horizontally.") }}

Tilers ([GitHub][dos-tilers-gh]) by [@E_net4]
is an open source tile permutation puzzle game,
based on the classic [15 puzzle][wiki15].
It was developed specifically for MS-DOS machines,
by combining a nightly Rust compiler with
the [DJGPP toolchain][djgpp] and the custom object converter [elf2djgpp].

A playable version on the browser (using an emulator)
is available on GitHub and [itch.io][dos-tilers].
The game was also submitted to the [DOS Games July 2024 Jam][dosjam].

[dos-tilers-gh]: https://github.com/Enet4/dos-tilers
[@E_net4]: https://hachyderm.io/@E_net4
[wiki15]: https://en.wikipedia.org/wiki/15_puzzle
[djgpp]: https://www.delorie.com/djgpp/
[dos-tilers]: https://e-net4.itch.io/dos-tilers
[elf2djgpp]: https://github.com/cknave/elf2djgpp
[dosjam]: https://itch.io/jam/dos-games-july-2024-jam

### [Untitled Pixel Wizards Game][pixel-wizards]

{{ video_figure(
    type="video/mp4",
    src="untitled-pixel-wizards-game.mp4",
    caption="Arcane Beam spell reflecting off Barrier Shields, triggering a chain reaction of explosions.") }}

[Untitled Pixel Wizards Game][pixel-wizards] is a local-multiplayer [Noita]-like platformer about
killing baddies using spells powered by pixel physics. July was focused on improving game feel:

- [Blooood][pixel-wizards-update-1]: characters bleed when hit.
- [Big Bada Boom][pixel-wizards-update-2]: explosions and screenshake get added.
- [Fixing Flow Killers][pixel-wizards-update-3]: less tech demo and more game loop.
- [Ladders and Shrooms][pixel-wizards-update-4]: ladders and jump pads appear.

And August saw some more explosives plus a new spell casting system:

- [Barrels of Boom][pixel-wizards-update-5]: explosive barrels and terrain-eating fireworks.
- [Flinging Powder Atoms][pixel-wizards-update-6]: reworking atom collision handling.
- [Gesticulating Wildly][pixel-wizards-update-7]: exploring a gesture system for spellcasting.
- [Elemental Spellcasting][pixel-wizards-update-8]: try Magicka-like spellcasting.
- [Rocking Shields][pixel-wizards-update-9]: add support for some more spells.

[pixel-wizards]: https://slowrush.dev
[Noita]: https://store.steampowered.com/app/881100/Noita/
[pixel-wizards-update-1]: https://www.slowrush.dev/news/blood/
[pixel-wizards-update-2]: https://www.slowrush.dev/news/explosions/
[pixel-wizards-update-3]: https://www.slowrush.dev/news/match-flow/
[pixel-wizards-update-4]: https://www.slowrush.dev/news/ladders/
[pixel-wizards-update-5]: https://www.slowrush.dev/news/barrels-of-boom/
[pixel-wizards-update-6]: https://www.slowrush.dev/news/powder-movement/
[pixel-wizards-update-7]: https://www.slowrush.dev/news/gestures/
[pixel-wizards-update-8]: https://www.slowrush.dev/news/elemental-spellcasting/
[pixel-wizards-update-9]: https://www.slowrush.dev/news/rocking-shields/

## Engine Updates

### [Chuột][chuot-website]

{{ image_figure(
    alt="Bunnymark example",
    src="chuot.png",
    caption="[Bunnymark example](https://tversteeg.nl/chuot/examples/bunnymark/)") }}

Chuột ([Website][chuot-website], [GitHub][chuot-github]) by [@tversteeg]
is an AGPL licensed game engine for 2D pixel-art games.

The main goal of the Chuột (Vietnamese for mouse) game engine is to make it easy to create and deploy small FOSS games.
The license has been chosen to foster an open community of game development.

The Chuột game engine is standing on the shoulders of giants of the Rust ecosystem,
such as [winit] for window handling and [wgpu] for drawing graphics.

Recently, [version 0.2][chuot-0.2] has been released, which includes a big rewrite
of the internal system and simplifying a lot of the API.
Many rough and inconsistent parts have been cleaned up and renamed,
resulting in quite a lot of breaking changes.
This mainly happened because the developer was still finding a proper direction for the engine.
Asset loading has been improved, especially asset hot-reloading,
which is now also enabled by defining an external asset source.

_Check out the [web examples][chuot-examples]!_

[chuot-website]: https://tversteeg.nl/chuot
[chuot-github]: https://github.com/tversteeg/chuot
[chuot-0.2]: https://github.com/tversteeg/chuot/releases/tag/chuot-v0.2.0
[chuot-examples]: https://tversteeg.nl/chuot/examples
[winit]: https://docs.rs/winit
[wgpu]: https://docs.rs/wgpu
[@tversteeg]: https://github.com/tversteeg

## Learning Material Updates

## Tooling Updates

## Library Updates

### Godot Rapier: Rewrite it in Rust

{{ video_figure(
    type="video/mp4",
    alt="Godot + Rapier logo make up the 'Godot Rapier' logo ; a few balls fall on it, showing off soft physics.",
    src="godot_rapier.mp4",
    caption="Godot Rapier showcase") }}

[Godot Rapier][godot_rapier_github] written by [@Ughuuu](https://github.com/Ughuuu)
is a physics plugin for [Godot][godot] that uses [Rapier][rapier], a popular
physics engine written in Rust.

Godot Rapier was originally written in C++, 
and is now in the final stage of being completely rewritten in Rust.

Its author wrote [an article on Reddit][godot_rapier_reddit] 
about their experience with the rewrite. 
Note that in the meantime the web exports have been fixed.

Godot Rapier's website was adopted as a Rapier subdomain at
[https://godot.rapier.rs/](https://godot.rapier.rs/).
There you can also find a [progress overview](https://godot.rapier.rs/docs/progress).

[rapier]: https://rapier.rs/
[godot_rapier_github]: https://github.com/appsinacup/godot-rapier-physics
[godot_rapier_reddit]: https://www.reddit.com/r/godot/comments/1dtoufn/rewriting_godots_physics_server_in_rust/
[godot]: https://godotengine.org/

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

## Future news

<!-- Section to get more people involved in writing news. -->

Editing this newsletter wouldn't be possible without [your contributions][news_current_prs]. 
Thanks to everyone who helped us this month!

If you want something mentioned in the next newsletter, [send us a pull request][pr].

You can also get an early look at pending issues for the [next newsletter][news_future_prs].

[news_current_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N53%27
[news_future_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N54%27

------

That's all news for today, thanks for reading!

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
