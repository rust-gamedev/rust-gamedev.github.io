+++
title = "This Month in Rust GameDev #34 - May 2022"
transparent = true
date = 2022-06-02
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 34th issue of the Rust GameDev Workgroup's
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
- [Other News](#other-news)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
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

### 3D Ferris

![colorful render of a 3d model of Ferris with additional wireframe view](raymarch_ferris_3d.jpg)

[@RayMarch][raymarch-twitter] is
creating a game-ready 3D model of [Ferris the Rustacean][ferris]. These links
provide a more detailed look:

- [360 overview][raymarch-twitter-360]
- [Ferris dancing][raymarch-twitter-dance]

Once the model is finished, it will be published under a permissive license on
[Github][raymarch-github], so you can use it in your 3D game,
rendering demo, v-tuber avatar, you name it!

*Discussions:
[Twitter][raymarch-twitter-dance],
[Discord][raymarch-gamedev-discord]*

[ferris]: https://rustacean.net/
[raymarch-twitter]: https://twitter.com/Ray__March
[raymarch-twitter-dance]: https://twitter.com/Ray__March/status/1523717266730151936
[raymarch-twitter-360]: https://twitter.com/Ray__March/status/1512907700740444163
[raymarch-github]: https://github.com/RayMarch
[raymarch-gamedev-discord]: https://discord.com/channels/676678179678715904/974371568975216700

## Game Updates

### [Battleship]

![Gameplay demo](battleship.gif)

[Battleship] by [@orhun] is the [battleship game] implemented in Rust.

Features:

- Fully playable between 2 players on the terminal.
- No installation required.
- Works over TCP sockets.
- Very lightweight to host your own server (only has 1 dependency).

[Battleship]: https://github.com/orhun/battleship-rs
[battleship game]: https://en.wikipedia.org/wiki/Battleship_(game)
[@orhun]: https://github.com/orhun/

### [ROOM4DOOM][room4doom]

[![A screenshot of gameplay action in ROOM4DOOM.](room4doom.jpg)][room4doom]

[ROOM4DOOM][room4doom] is a rewrite of the classic Doom engine in Rust with some
modernisation.

[@flukejones][flukejones_twitter] has been very busy in the last 4 months completing
many parts of ROOM4DOOM; rendering, subsystems for menus, statusbar, intermissions,
and of course the actual gameplay - you can now complete Doom 1 in ROOM4DOOM.

A recent Twitter thread has been cleaned up and expanded in to a blog post providing
context to the project and a walk-through of the history.
You can view that [here][room4doom_blog].

[room4doom]: https://gitlab.com/flukejones/room4doom
[flukejones_twitter]: https://twitter.com/flukejones
[room4doom_blog]: https://ljones.dev/blog/room4doom-20220529/

### [limbo_pass]

![a ghost, stuck in limbo, on a mountain pass](limbo-pass.png)

[limbo_pass] by [@shnewto] is a little 3D walking sim in Bevy that uses
scenes, meshes, and materials exported directly from Blender.

Features include:

- Blender assets exported to glTF
- Collision detection with [bevy_rapier3d]
- Looping audio with [bevy_kira_audio]

For more info, see the [announcement post][limbo_pass_announce] and the
[gameplay video][limbo_pass_gameplay].

[limbo_pass_announce]: https://twitter.com/shnewto/status/1520897809968340992
[limbo_pass_gameplay]: https://youtu.be/gxUesnuTBBI
[limbo_pass]: https://github.com/shnewto/limbo_pass
[@shnewto]: https://github.com/shnewto/
[bevy_rapier3d]: https://github.com/dimforge/bevy_rapier
[bevy_kira_audio]: https://github.com/NiklasEi/bevy_kira_audio

### [Hydrofoil Generation]

![hgs_screen](hgs34.jpg)

[Hydrofoil Generation]
([Steam][hgs_steam], [Facebook][hgs_facebook], [Discord][hgs_discord])
is a realistic sailing/foiling inshore simulator in development for PC/Steam
that will put you in the driving seat of modern competitive sailing.
Hydrofoil Generation is based on a custom made DirectX 11 based engine.

A new [trailer][hgs_trailer] just landed showcasing new animations, the new
Hong Kong location and camera modes.

Meanwhile, private beta-testing is well underway with good feedback regarding
boat controls and physics, netcode and software stability, Rust for sure
delivered on all the promises here.

The first set of Sailing rules has also been implemented and part of the
current beta testing process with more rules to be added in the next months.

Sadly the target Q2 2022 Early Access release on Steam couldn't be hit and
now the team is aiming at a Q4 2022 release.

[Hydrofoil Generation]: https://hydrofoil-generation.com/
[hgs_facebook]: https://www.facebook.com/HydrofoilGenerationSailing/
[hgs_discord]: https://discord.gg/DtKgt2duAy/
[hgs_steam]: https://store.steampowered.com/app/1448820/Hydrofoil_Generation/
[hgs_trailer]: https://youtu.be/oFtFdmnkkSI

### Country Slice

![Country_slice_gif](country_slice.gif)

Country Slice (WIP name) is a relaxing building game being made by [@anastasiaopara].

This month, she added an animated undo system. You can find more details in this
[twitter thread][country-slice-twitter], and follow the [newsletter][country-slice-newsletter]
for more updates.

[country-slice-newsletter]: https://dashboard.mailerlite.com/forms/10395/51067704544593017/share
[country-slice-twitter]: https://twitter.com/anastasiaopara/status/1530473522224582656
[@anastasiaopara]: https://twitter.com/anastasiaopara

### [Way of Rhea][wor]

[![way of rhea capsule image](wor-capsule.jpg)][wor]

[Way of Rhea][wor] is a puzzle adventure with hard puzzles and forgiving
mechanics being produced by [@masonremaley][wor-mason-remaley] in a custom Rust
engine. You can support development by [wishlisting the game on Steam][wor], and
[giving feedback][wor-forum] on the Steam demo.

Way of Rhea was selected to be part of the Cerebral Puzzle Showcase! The event
is over, you can still find the
[list of games and some of the demos here][wor-cps]. Recent updates:

- More work was done on the [Jungle Biome visuals][wor-jungle]
- Dynamic gradient overlays were added to the engine to give a sense of depth
- Fixed bug where Nvidia drivers would incorrectly trigger the crash dump writer
- Fixed a long running draw call sorting problem that could lead to popping
- Fixed an audio failure when unplugging the active speaker

[wor]: https://store.steampowered.com/app/1110620/Way_of_Rhea/?utm_campaign=tmirgd&utm_source=n34
[wor-mason-remaley]: https://twitter.com/masonremaley
[wor-forum]: https://steamcommunity.com/app/1110620/discussions/0/3275817732933009791/
[wor-cps]: https://store.steampowered.com/sale/CerebralPuzzleShowcase
[wor-jungle]: https://store.steampowered.com/news/app/1110620?emclan=103582791465120432&emgid=3180116240852440293

## Engine Updates

## Learning Material Updates

### [Intro to Material/Shaders in Bevy][bevy-materials-playlist]

![Bevy Materials video series thumbnail](bevy-material-series.png)

[Matthew Bryant][matthew-bryant-youtube] has created
[a series about Bevy's Material abstraction][bevy-materials-playlist],
showing how to use custom WGSL shaders in Bevy.

The series walks through the documention to understand why steps are done in
order to build a clear theoretical understanding of Bevy's high level abstractions.

- The first of the three videos covers the bare minimum needed
  to render a material;
- the second introduces bind groups to use textures and generic data in
  the shader;
- and the final video ties into Bevy's ECS to copy game data onto the
  graphics card every frame.

He will be releasing videos about UI in Bevy and Rapier physics next month.

[bevy-materials-playlist]: https://youtube.com/playlist?list=PLT_D88-MTFOMNRPAC-62Hz096aIjT4Noy
[matthew-bryant-youtube]: https://youtube.com/channel/UC7v3YEDa603x_84PgCPytzA

### [Kubecon 2022, Lightning Talk: Wasmcloud + Bevy ECS][Lightning-Talk-schedule]

![A picture of speakers](./lightingtalk.jpeg)

[QQparty][alanpoon-qqparty] is a serverless multiplayer game built with Bevy ECS
and [Wasmcloud][wasmcloud_website].

This month, [@rustropy_gaming][alanpoon_twitter] joined Cosmonic to give
a series of Wasmcloud talks in Kubecon 2022 VLC. They demonstrated
how Bevy can be added into Wasmcloud's actors as a serverless
game server.

You can check out a recording of the talk on [YouTube][Lightning-Talk-youtube],
as well as viewing the [slides][Lightning-Talk-pdf]. For updates on QQparty,
follow [@rustropy_gaming][alanpoon_twitter] on Twitter!

[Lightning-Talk-schedule]: https://cloudnativewasmdayeu22.sched.com/event/zgbG/lightning-talk-wasmcloud-bevy-ecs-solution-to-woe-of-indie-game-developers-alan-poon-yong-quan-shopee?iframe=no&w=100%&sidebar=yes&bg=no
[Lightning-Talk-pdf]: https://static.sched.com/hosted_files/cloudnativewasmdayeu22/3c/lightingtalk-alan_pdf.pdf
[Lightning-Talk-youtube]: https://youtube.com/watch?v=8q2sPPX5aXY&list=PLj6h78yzYM2Ni0u-ONljTkv4uOutyjwq9&index=3
[alanpoon-qqparty]: https://github.com/alanpoon/qq_party
[alanpoon_twitter]: https://twitter.com/rustropy_gaming
[wasmcloud_website]: https://wasmcloud.dev/

### [Rusteroids][rusteroids-youtube-playlist]

![A screenshot of the latest Rusteroids tutorial](./rusteroids-screenshot.png)

[Rusteroids][rusteroids-github] is a tutorial recreating a clone of Asteroids
in Rust, using SDL2 and the [Specs][rust-specs-crate] library.

New episodes are released weekly and added to the playlist. Most recently,
collision detection was added to reset the game state when the asteroid
and player collide. The latest episode is [here][rusteroids-latest].

You can subscribe to the [YouTube Channel][electrocat-youtube],
to never miss an episode, or follow [@ecatstudios][ecatstudios-twitter] on
Twitter!

[rusteroids-youtube-playlist]: https://youtube.com/playlist?list=PLFOS-Gn3aXROnSfl26esPExssd-rQw6jD
[rusteroids-github]: https://github.com/filtoid/rusteroids
[rust-specs-crate]: https://docs.rs/specs/latest/specs/
[rusteroids-latest]: https://youtube.com/watch?v=KTDdlWErmYU&list=PLFOS-Gn3aXROnSfl26esPExssd-rQw6jD&index=9
[electrocat-youtube]: https://youtube.com/channel/UC1m6P72nySpB3lKWDYGVipw
[ecatstudios-twitter]: https://twitter.com/ecatstudios

### [Starting a new 2d platformer with Bevy ECS][video-platformer-bevy-ecs]

[![Thumbnail: Hollow Knight screenshot with added Ferrises and Bevy logo](starting-a-new-2d-platformer-with-bevy-ecs.jpg)][video-platformer-bevy-ecs]

[@chrisbiscardi] published a [video][video-platformer-bevy-ecs]
on setting up a new 2D platformer project using Bevy. The video covers
intergrating with LDTK, Rapier, and becy_ecs_tilemap to get a working
character controller with collisions in a sandbox. It also touches on
staple crates such as bevy_asset_loader and iyes_loopless.

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/v0keg2/starting_a_new_2d_platformer_with_bevy_ecs),
[Twitter](https://twitter.com/chrisbiscardi/status/1524008901028421632)_

[@chrisbiscardi]: https://twitter.com/chrisbiscardi
[video-platformer-bevy-ecs]: https://youtube.com/watch?v=gjeEYntkvoY

## Tooling Updates

### [Bloom3D][bloom3d]

[![A screenshot of Bloom3D's interface. A geometric tree is next to a building.](bloom.jpg)][bloom3d]

[Bloom3D](bloom3d) is a minimalist web app for 3D modeling that's built in Rust.

This month [@kettlecorn][kettlecorn_twitter] released a new version of
[Bloom3D][bloom3d] that adds a variety of new features including a
rectangle tool, move tool, and OBJ export.

Check out the [Twitter announcement thread][bloom_update_twitter] for an overview
and videos of all the new features.

Bloom is powered by a custom game engine called [`koi`](koi) that is open-sourced
on GitHub.

[bloom3d]: https://bloom3d.com
[koi]: https://github.com/kettle11/koi
[kettlecorn_twitter]: https://twitter.com/kettlecorn
[bloom_update_twitter]: https://twitter.com/kettlecorn/status/1529193509462360065

## Library Updates

### [bevy_mod_scripting]

![bevy_mod_scripting logo](logo_bevy_scripting.svg)

[bevy_mod_scripting] by @makspll is a brand new Bevy plugin
enabling multi-language scripting (currently in Lua and Rhai).

The plugin is in early stages but as of now supports:

- Handling events at multiple points of your stage pipeleine.
- Sending events to specific, or all scripts.
- Setting event priority to order your callbacks.
- Defining custom state and API's at initialization.
- Sending run-time error events (to for example show them in an in-game console).
- One-shot scripts.

General Bevy API support is under-way so stay tuned!

[bevy_mod_scripting]: https://github.com/makspll/bevy_mod_scripting

### [bevy_silk]

![bevy_silk logo](bevy_silk.png)

[bevy_silk] by @[ManevilleF] is a cloth physics plugin for Bevy.

Apply cloth physics to any mesh, by adding a single component to your entity!

Features:

- Collision support using [bevy_rapier](https://github.com/dimforge/bevy_rapier)
- Global and per-entity physics customization
- Dynamic smooth and flat normals
- Wind forces
- Custom cloth anchors

The library is fully documented and the repository provides various usage examples.

_Discussions: [Twitter](https://twitter.com/ManevilleF/status/1527313861199527937)_

[bevy_silk]: https://github.com/ManevilleF/bevy_silk
[ManevilleF]: https://twitter.com/ManevilleF

### [bevy_asset_loader]

[bevy_asset_loader] by [@nikl_me] is a Bevy plugin that helps with asset
loading and asset organisation. It greatly reduces boilerplate code for
loading states and can resolve asset configuration at run time.

This month, version `0.11.0` was released. It supports loading lists of files
as `Vec<HandleUntyped>` or `Vec<Handle<T>>`. This is an alternative to loading
folders, which is not supported on the web. You can now track the loading
progress of your assets with [iyes_progress] and build loading bars.
Integrating with [iyes_loopless] gives you some benefits of stageless
scheduling in current Bevy. Additionally, the loading of assets fields
without attributes was improved. It now uses the `FromWorld` trait
instead of `Default`.

More improvements will likely follow for the dynamic asset story. One goal
is to allow loading any custom values as dynamic assets.

[bevy_asset_loader]: https://github.com/NiklasEi/bevy_asset_loader
[@nikl_me]: https://twitter.com/nikl_me
[iyes_loopless]: https://github.com/IyesGames/iyes_loopless
[iyes_progress]: https://github.com/IyesGames/iyes_progress

### [bevy_kira_audio]

[bevy_kira_audio] by [@nikl_me] is an alternative audio
plugin for Bevy. It uses [Kira] to play and control
game audio.

This month saw the release of version `0.10.0`. The plugin
now uses the latest Kira release, which was a major rewrite.
The audio channel API is improved by making all channels
resources in Bevy's ECS and sounds can be directly loaded
from asset files with settings like their volume, playback
rate, or panning. Additionally, the audio backend can now
be configured before creation through a settings resource.

[bevy_kira_audio]: https://github.com/NiklasEi/bevy_kira_audio
[@nikl_me]: https://twitter.com/nikl_me
[Kira]: https://github.com/tesselode/kira

## Popular Workgroup Issues in Github

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
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
