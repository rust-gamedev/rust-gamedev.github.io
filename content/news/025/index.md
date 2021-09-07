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

## Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The eighth Rust Gamedev Meetup happened in August. You can watch the recording of
the meetup [here on Youtube][gamedev-meetup-video]. The meetups take place on
the second Saturday every month via the [Rust Gamedev Discord
server][rust-gamedev-discord], and are also [streamed on
Twitch][rust-gamedev-twitch]. If you would like to show off what you've been
working on at the next meetup on [September 11th][rust-meetup-sept-time], fill
out [this form][gamedev-meetup-form].

[gamedev-meetup-form]: https://forms.gle/BS1zCyZaiUFSUHxe6
[gamedev-meetup-video]: https://www.youtube.com/watch?v=g-QZAVipiuU
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedevmeetup
[rust-meetup-sept-time]: https://everytimezone.com/s/c603b7e6

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

### [vange-rs]

![Vange-rs on wgpu-0.10](vangers-wgpu0.10.png)
_vange-rs on wgpu-0.10_

Vange-rs is a rewrite of the iconic Vangers game from 1998 in Rust,
heavily utilizing GPU for rendering.

The rendering engine has seen a major upgrade. Essential shaders were
rewritten into [WGSL], which streamlined the shader pipelines and culled out
the dependency tree.
Code was ported on the latest [wgpu]-0.10 release and helped identify a few issues.
Most importantly, this change made the game able to finally be distributed,
and maybe even compiled for the Web in the future.
Read more on the [WGSL-related blog post].

In order to make advantage of the new superpowers,
the [Rusty Vangers] game (the new working title) was published on Itch.io.

[vange-rs]: https://github.com/kvark/vange-rs
[WGSL-related blog post]: https://vange.rs/2021/08/25/pure-rust.html
[Rusty Vangers]: https://kvark.itch.io/vangers

### [RecWars]

[![RecWars screenshot](rec-wars.png)](rec-wars-web)
_Click the image to play in your browser_

[RecWars] by @martin-t is a free and open source Rust clone of [RecWar],
a top down vehicle shooter.

The game is a work-in-progress, this month it gained splitscreen for 2 players
and an in-game console to change cvars - you can edit any
of the configuration variables that define its gameplay balance while playing.

RecWars uses the [macroquad] engine so it can be played on the desktop
as well as [in the browser](rec-wars-web).

[RecWars]: https://github.com/martin-t/rec-wars
[RecWar]: https://github.com/martin-t/rec-wars#the-original-game
[rec-wars-web]: https://martin-t.gitlab.io/gitlab-pages/rec-wars/macroquad.html
[macroquad]: https://github.com/not-fl3/macroquad

### [Vehicle Evolver Deluxe]

![Vehicle Evolver Deluxe in action, showing multiple vehicles attempting to
complete an obstacle course](vehicle_evolver_deluxe.gif)
_Vehicle Evolver Deluxe in action!_

[Vehicle Evolver Deluxe]
([GitHub](https://github.com/Bauxitedev/vehicle_evolver_deluxe),
[Twitter](https://twitter.com/bauxitedev/status/1423916614651678722)) by
[@bauxitedev] is a simulation that runs in your browser, using AI (to be
specific: [genetic algorithms](https://en.wikipedia.org/wiki/Genetic_algorithm))
to try to build better and better vehicles. The vehicles have to overcome an
obstacle course, starting with some slight hills, followed by steeper hills, and
finally some jumps. The vehicles are made out of panels and wheels, connected
together, similar to the game
[Besiege](https://store.steampowered.com/app/346010/Besiege/), except in 2D. It
was built using Rust and the Bevy game engine.

[Try the live web demo
here.](https://bauxitedev.github.io/vehicle_evolver_deluxe/index.html) (It needs
a relatively fast computer, on mobile browsers it'll run really slow.)

[There is also an in-depth explanation available on how it works internally, in
the form of an educational video.](https://www.youtube.com/watch?v=DlRNdCCSSyo)

_Discussions:
[/r/rust](http://redd.it/ozpa6q),
[Twitter](https://twitter.com/bauxitedev/status/1423916614651678722)_

[Vehicle Evolver Deluxe]:
https://bauxitedev.github.io/vehicle_evolver_deluxe/index.html
[@bauxitedev]:
https://twitter.com/bauxitedev

### Liminal Lab 000

[![Screenshot of Liminal Lab 000 showing a white-walled laboratory test chamber
with buttons on the floor, lights on the wall, and a dark cube levitating
overhead.](liminal_lab_000.png)][ll000-live]
_Click the image to play the game in your desktop browser!_

Liminal Lab 000 ([live version][ll000-live]) by [@pebaz] is a tiny,
minimalistic puzzle game with 1 puzzle designed around the concept of
[Liminal Spaces][liminality]. Liminal Spaces are usually abandoned,
transitional places where life once thrived. These spaces are somehow familiar
to the viewer but the viewer has never been there. The unsettling feeling of
being alone comes from the realization that the viewer does not belong in that
space but is merely passing through it.

Liminal Lab 000 was built using [Macroquad][macroquad], utilizes voxel
rendering with 8x8x8 chunks, and is hosted on Google Firebase Hosting.

_Discussions: [/r/rust_gamedev][liminal-reddit]_

[ll000-live]: https://pebazium.web.app/
[@pebaz]: https://github.com/Pebaz
[liminality]: https://aesthetics.fandom.com/wiki/Liminal_Space
[macroquad]: https://github.com/not-fl3/macroquad
[liminal-reddit]: https://www.reddit.com/r/rust_gamedev/comments/ouu7xk/liminal_lab_000_my_first_ever_3d_game/

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

### [rg3d]

![rg3d](rg3d_logo.png)

[rg3d] ([Discord][rg3d_discord], [Twitter][rg3d_twitter]) is a game engine that
aims to be easy to use and provide a large set of out-of-the-box features.

[![rg3d feature highlights](rg3d-feature-highlights.png)][rg3d_fh]
__Engine feature highlights__

Check out the video about the engine made by [@GameFromScratch][gfs_channel],
an article could be found [here][gfs_article].

[![rg3d feature highlights](rg3d-gfs.png)][rg3d_gfs]
__A video by [@GameFromScratch][gfs_channel]__

Some of the recent engine updates:

```markdown
- Physically-based rendering (PBR).
- Custom shaders and materials.
- High dynamic range rendering.
- Tone mapping.
- Color grading.
- Gamma correction.
- Manual + Auto exposure for camera.
- Emission maps.
- Deferred decals.
- Curve editor widget.
- Behavior trees.
- Custom curves supports.
- Ability to create sound engine without a sound device.
- Asset management improvements.
- Mask char for TextBox and FormattedText.
- Ability to change path of resources.
- Improvements for FileSelector widget.
- Various fixes for scene resolving stage.
- Provide a way to alter control flow of event loop in `Framework`.
- A way to create custom particle set in `ParticleSystem`.
- `#[visit(option)]` attribute for Visit proc macro.
- Ability to pause particle systems.
- UI performance improvements.
- Other various fixes and improvements.
```

[rg3d]: https://github.com/mrDIMAS/rg3d
[rg3d_discord]: https://discord.gg/xENF5Uh
[rg3d_twitter]: https://twitter.com/DmitryNStepanov
[rg3d_fh]: https://www.youtube.com/watch?v=N8kmZ9aBtZs
[rg3d_gfs]: https://www.youtube.com/watch?v=mzshg_0ZvLk
[gfs_channel]: https://www.youtube.com/channel/UCr-5TdGkKszdbboXXsFZJTQ
[gfs_article]: https://gamefromscratch.com/rg3d-open-source-rust-3d-game-engine/

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

### [wgpu]-0.10

![Rend3 on wgpu-0.10](./rend3-wgpu0.10.jpg)
_unannounced engine on wgpu-0.10_

The team has released wgpu-0.10 with a fully rewritten graphics abstraction
("wgpu-hal" instead of "gfx-hal"), as well as [naga] version 0.6.
Read more in [Release of a Pure-Rust v0.10 and a Call For Testing].

There were a few issues spotted, but overall it went smooth for such a big change.
User libraries were quick to update: [iced#1000], [kas#241], [pixels#187], and others.

On the shader side, in addition to improved validation, hundreds of fixes to the
produced outputs, the atomic operations are now supported when using [WGSL] sources.

The release comes at a cost of DX11 backend, which isn't there comparing to wgpu-0.9.
On the plus side, the new GL backend performs much better. It runs most of the examples,
and has been successfully tested on Raspberry Pi-3.
Still more work ahead to make it solid, and to support WebGL2 properly.

[wgpu]: https://github.com/gfx-rs/wgpu
[naga]: https://github.com/gfx-rs/naga
[Release of a Pure-Rust v0.10 and a Call For Testing]: https://gfx-rs.github.io/2021/08/18/release-0.10.html
[iced#1000]: https://github.com/hecrj/iced/pull/1000
[kas#241]: https://github.com/kas-gui/kas/pull/241
[pixels#187]: https://github.com/parasyte/pixels/pull/187
[WGSL]: https://gpuweb.github.io/gpuweb/wgsl/

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
