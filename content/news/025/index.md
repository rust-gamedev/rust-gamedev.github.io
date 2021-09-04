+++
title = "This Month in Rust GameDev #25 - August 2021"
date = 2021-09-01
transparent = true
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 25th issue of the Rust GameDev Workgroup's
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
- [Learning Material Updates](#learning-material-updates)
- [Engine Updates](#engine-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
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

### [Pixie Wrangler]

[![Screenshot of Pixie Wrangler showing pixies traveling along paths drawn
by the player.](pixie_wrangler.png)][pw-itch]
_Click the image to play the game in your desktop browser!_

Pixie Wrangler ([itch.io][pw-itch], [GitHub][pw-github]) by [@rparrett]
is a puzzle game reminiscent of old school printed circuit board design
software.

Help the Pixies get from their outputs to their inputs while doing battle
with the intentionally less-than-ergonomic circuit design software. Pixie
Wrangler is currently a prototype, but includes 9 complete levels.

Pixie Wrangler was built with [Bevy 0.5] with support from these other great
projects: [bevy_webgl2], [bevy_prototype_lyon], [bevy_asset_ron],
[bevy_easings].

[Pixie Wrangler]: https://euclidean-whale.itch.io/pixie-wrangler
[pw-itch]: https://euclidean-whale.itch.io/pixie-wrangler
[pw-github]: https://github.com/rparrett/pixie_wrangler
[Bevy 0.5]: https://bevyengine.org/
[bevy_webgl2]: https://github.com/mrk-its/bevy_webgl2
[bevy_prototype_lyon]: https://github.com/Nilirad/bevy_prototype_lyon
[bevy_asset_ron]: https://github.com/inodentry/bevy_asset_ron
[bevy_easings]: https://github.com/mockersf/bevy_extra/tree/master/bevy_easings
[@rparrett]: https://github.com/rparrett

### [Not Snake][not-snake]

![Level example from Not Snake](notsnake.png)

Not Snake ([GitHub][notsnakegit], [Itch][not-snake]) by [Michael Ramirez]
is a 3D snake game where you don't play as the snake.

Not Snake was developed using the [Bevy game engine][bevy-notsnake]. It was
completed and [released for free][not-snake] in August and can be played on
Windows, Linux, MacOS and in browser (Chrome recommended) although there are
fewer audio/performance issues running the executables versus the browser
version.

There have been several large changes since the last update in June including
adding new levels, new music and adding a narrator who does an OK job of keeping
score.

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/p8fdfn),
[/r/indiegames](https://www.reddit.com/p9cx15)_

[not-snake]: https://ramirezmike2.itch.io/not-snake
[Michael Ramirez]: https://github.com/ramirezmike
[bevy-notsnake]: https://bevyengine.org
[notsnakegit]: https://github.com/ramirezmike/not_snake_game

### [A Day at the Movies][dayatmovies]

![Screenshot of "A Day at the Movies"](adayatthemovies.png)
_The kids getting ready to sneak into a movie_

"A Day at the Movies" ([GitHub][dayatmoviesgit], [Itch][dayatmovies]) by
[Michael Ramirez] is a short game about stealth, movies and friendship.

"A Day at the Movies" was made using the [Bevy game engine][bevy-movieday] in 7
days as part of the Rusty Jam. Despite the placeholder art and lack of audio, it
can be played from start-to-finish and is literally guaranteed to bring a smile
to all who play it. Just make sure to follow the instructions on how to get into
the "Ferris the Crab" movie room.

It's playable in browser on [itch][dayatmovies] and the code can be viewed on
[GitHub][dayatmoviesgit].

[dayatmovies]: https://ramirezmike2.itch.io/a-day-at-the-movies
[dayatmoviesgit]: https://github.com/ramirezmike/rust_gamejam_0821
[bevy-movieday]: https://bevyengine.org

## Engine Updates

## Learning Material Updates

## Tooling Updates

## Library Updates

### [GGRS]

![GGRS](./ggrs_logo.png)

[GGRS] by [@g_schup] is a reimagination of the [GGPO] P2P rollback network SDK
written in 100% safe Rust.

Since the last update, GGRS has released version 0.4.4 and received
performance updates and fixes, such as a
[sparse saving feature](https://gschup.github.io/ggrs/blog/sparse-saving/).
The authors also proudly present [bevy_GGRS]!

bevy_GGRS is a plugin to integrate GGRS easily into the popular game engine
[bevy]. It features autmatic saving and loading of components and resources
defined by the user through bevy's reflection tools.
The plugin is currently in development and uses features that have not
been released in bevy 0.5. With bevy 0.6 on the horizon, bevy_GGRS is
planning to publish to [crates.io](https://crates.io), as well.

If you are interested in developing with GGRS, check the following resources:

- [quick start guide](https://gschup.github.io/ggrs/docs/getting-started/quick-start/)
- [GGRS examples](https://github.com/gschup/ggrs/tree/main/examples)
- [bevy_GGRS examples](https://github.com/gschup/bevy_ggrs/tree/main/examples)

[GGRS]: https://github.com/gschup/ggrs
[bevy_ggrs]: https://github.com/gschup/bevy_ggrs
[bevy]: https://bevyengine.org/
[GGPO]: https://www.ggpo.net/
[@g_schup]: https://twitter.com/g_schup

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
[/r/rust_gamedev](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
