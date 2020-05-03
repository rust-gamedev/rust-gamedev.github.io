+++
title = "This Month in Rust GameDev #9 - April 2020"
date = 2020-05-04
transparent = true
draft = true
+++

<!-- markdownlint-disable no-trailing-punctuation -->
<!-- markdownlint-enable line-length -->

Welcome to the ninth issue of the Rust GameDev Workgroup’s
monthly newsletter.

[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.

We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

Want something mentioned in the next newsletter?
[Send us a pull request][pr].
Feel free to send PRs about your own projects!

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io

<!--
Ideal section structure is:

```
### [Title]

![image/GIF description](image link)

A paragraph or two with a summary and [useful links].

_Discussions:
[/r/rust](https://reddit.com/r/rust/todo),
[twitter](https://twitter.com/todo/status/123456)_

[Title]: https://first.link
[useful links]: https://other.link
```

Discussion links are added only if they contain
some actual interesting discussions.

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Game Updates

### [A/B Street][abstreet]

[A/B Street][abstreet] is a game by [dabreegster] exploring how small changes to
road space and traffic signals affect the movement of drivers, cyclists,
transit users, and pedestrians. The game models Seattle as accurately as
possible using [OpenStreetMap] and other public datasets, lets the player adjust
existing infrastructure, and then does a detailed comparison to see who the
changes help and hurt.

First of all, [a standalone 2D GUI crate][abstreet-gui-release] was published
extracted from A/BStreet's GUI code.
It features fully vectorized text using [lyon] and supports lots of
widgets such as "buttons (with keybindings), checkboxes, sliders, pop-up menus,
text entry, and some data viz things".
Thanks to its simplicity (everything is a colored polygon), this crate runs on
many different architectures and even on the web via [glow].

Here's an example of what it can do:

![abstreet gui](abstreetgui.png)

Dabreegster also uploaded a recorded version of their
[rust meetup talk][abstreet-meetup-talk] about the inner working of abstreet.

> In case anybody here is interested in more city simulation in Rust,
> the talk is about half project overview and half deep dive into code.

ABstreet had some great contributor work coming in, notably from omalaspinas who
implemented an optional SEIR pandemic model into the game.

And for anyone interested in more frequent updates, the
[abstreet subreddit][abstreet-subreddit] has had weekly update posts since
September 2019.

_Discussions:
[/r/rust][abstreet-gui-release]_

[dabreegster]: https://github.com/dabreegster/
[abstreet]: https://github.com/dabreegster/abstreet#ab-street
[abstreet-gui-release]: https://www.reddit.com/r/rust/comments/fejx5a/demo_of_a_new_gui_2d_drawing_crate/
[abstreet-meetup-talk]: https://www.reddit.com/r/Citybound/comments/g1k6du/rust_meetup_talk_on_ab_street/
[OpenStreetMap]: https://openstreetmap.org
[abstreet-subreddit]: https://www.reddit.com/r/abstreet
[glow]: https://github.com/grovesNL/glow
[lyon]: https://github.com/nical/lyon

### [Citybound]

![citybound web ui screenshot](citybound.png)

> Citybound is a city building game that uses microscopic models to vividly
> simulate the organism of a city arising from the interactions of millions
> of individuals.

It is developed by [aeplay][aeplay] and uses a homemade actor system for
everything called [kay], you can see its power on
[this impressive tech demo][kay-tech-demo].

In April, aeplay made two livestreams about conceptualizing pedestrians and
pandemic models using feedback from the chat.
You can watch the replay for the two livestreams on youtube: [here][cb-live-1]
and [here][cb-live-2].

[Citybound]: https://aeplay.org/citybound
[kay]: https://crates.io/crates/kay
[kay-tech-demo]: https://youtu.be/qr9GTTST_Dk
[aeplay]: https://github.com/aeplay
[cb-live-1]: https://youtu.be/fQMxVV57wzg
[cb-live-2]: https://youtu.be/8DevxAYw47A

### [Scale]

![Pedestrians](scale.png)

[Scale] is a granular society simulation by [Uriopass], with the objective
of having fully autonomous agents interacting with their world in real time.

A [devlog][scale-blog-post] was published, explaining how pedestrians were added
to the simulation, and that a new renderer based on [wgpu-rs][wgpu-rs] is in
development.
[A short video][scale-pedestrian-video] was also posted together with the post
for a more concise update.

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/g7s9bk/scale_devblog_3)_

[Uriopass]: http://douady.paris/aboutme.html
[Scale]: https://github.com/Uriopass/Scale
[scale-blog-post]: http://douady.paris/blog/scale_3.html
[scale-pedestrian-video]: https://youtu.be/QXF1-1BNddM
[wgpu-rs]: https://github.com/gfx-rs/wgpu-rs

### Ludum Dare 46 Games

[Ludum Dare 46](https://ldjam.com/) was this month!
The theme was "Keep it alive", and there was a bunch of cool games made in Rust!
Here's a roundup of some of them:

- ["The Hum"](https://ldjam.com/events/ludum-dare/46/the-hum)
  by [Hoichael](https://ldjam.com/users/hoichael),
  [williwiderstand](https://ldjam.com/users/williwiderstand),
  and [NoahRo](https://ldjam.com/users/noahro)
  ([source code](https://github.com/Noah2610/LD46-TheHum),
  [itch.io](https://noahro.itch.io/the-hum)):

  > Feed the bonfire. Keep it alive.

  ![the hum screenshot](the-hum.jpg)

- ["The Last Ship"](https://ldjam.com/events/ludum-dare/46/the-last-ship)
  by [FedorL](https://ldjam.com/users/fedorl)
  ([source code](https://github.com/not-fl3/ld46),
  [itch.io](https://fedorgames.itch.io/ld46),
  [Twitter thread](https://twitter.com/fedor_games/status/1251900504369778690)):

  > Carry humanity from dying planet into the bright future!

  ![the last ship screenshot](the-last-ship.jpg)

- ["Frog Rations"](https://ldjam.com/events/ludum-dare/46/frog-rations)
  by [healthire](https://ldjam.com/users/healthire)
  ([source code](https://github.com/Healthire/ld46),
  [Twitter thread](https://twitter.com/healthire_/status/1251412661016895488)):

  > Keep the frog alive by eating flies, but beware of the snake!

  ![frog rations screenshot](frog-rations.jpg)

- ["WOODS"](https://ldjam.com/events/ludum-dare/46/woods)
  by [Feilkin](https://ldjam.com/users/feilkin)
  ([source code](https://github.com/Feilkin/mela/tree/master/examples/ld46),
  [itch.io](https://feilkin.itch.io/woods)):

  > Keep the flame alive in the darkness!

  ![woods screenshot](woods.jpg)

- ["Wonder"](https://ldjam.com/events/ludum-dare/46/wonder)
  by [Ian Kettlewell](https://ldjam.com/users/ian-kettlewell)
  ([source code](https://github.com/kettle11/LD46),
  [itch.io](https://kettlecorn.itch.io/wonder)):

  > Keep alive a sense of wonder.

  ![wonder screenshot](wonder.jpg)

- ["Lighthouse Keeper"](https://ldjam.com/events/ludum-dare/46/lighthouse-keeper)
  by [dooskington](https://ldjam.com/users/dooskington)
  ([source code](https://github.com/Dooskington/ld46),
  [itch.io](https://dooskington.itch.io/ld46-lighthouse-keeper)):

  > Alone on a rock in the sea, your job is an important one. Keep the lighthouse
  > safe and operational, and don’t lose your mind. The goal is to survive for 30
  > days. Unfinished.

  ![lighthouse keeper screenshot](lighthouse-keeper.jpg)

- ["Fermi Paradox"](https://ldjam.com/events/ludum-dare/46/fermi-paradox)
  by [tversteeg](https://ldjam.com/users/tversteeg)
  ([source code](https://github.com/tversteeg/ld46)):

  > How come we don’t see any life from other planets? What does an intergalactic
  > society need to do to survive? Fermi Paradox is a combination of the arcade
  > games of yesteryear with some modern twists.

  ![fermi paradox screenshot](fermi-paradox.jpg)

## Library & Tooling Updates

### Rust Sokoban Tutorial

![sokoban level](sokoban_level.gif)

Rust Sokoban tutorial is an online book aimed at Rust gamedev beginners
which walks through making a simple Sokoban game using ECS, ggez and specs.
It tries to teach the basics of architecting in ECS and basic Rust concepts
through a hands-on approach.
[@oliviff] is currently looking for a few people
to beta test the tutorial before it goes live,
if you've got a spare couple of hours and you'd like to contribute,
send her a [DM][oliviff-dm].

[@oliviff]: https://twitter.com/oliviff
[oliviff-dm]: https://twitter.com/messages/compose?recipient_id=118804845

### `gfx-rs` and `wgpu` News

![hectic screenshot: graveyard and vampires](hectic.png)

^ _[hectic-rs] - Rust/wgpu/specs re-write of hectic by [@expenses]_

wgpu-0.5 release happened! See the [changelog][wgpu-0-5].
It's based on `gfx-hal-0.5` (which was covered in the [March newsletter][gfx-march]),
uses in-house gfx-extras crates adopted from Rendy,
has many fixes and improvements, and totally changes the way passes are recorded.

`wgpu` project got restructured by only leaving `wgpu-core` and `wgpu-types`
in the main ("core logic") repository.
`wgpu-native` is moved out into a [separate one][wgpu-native].
`wgpu-remote` got fully moved into mozilla-central as "gfx/wgpu_bindings"
(this is "gfx" in a general sense, not gfx-rs in particular).

The Web target  (aka "wasm32-unknown-unknown") is now officially supported
by `wgpu-rs`! 🎉
@grovesNL wrote the announcement to [gfx-rs blog][wgpu-wasm-blog].

At the same time, @kvark was implementing support for WebGPU in Firefox
(Nightly only) with help of `wgpu`.
They published results of this milestone on [Mozilla Hacks][wgpu-in-firefox].
The combined efforts allowed all the `wgpu-rs` examples to be run
in Firefox Nightly on all platforms
(yes, even on Android, terms and conditions apply...).

Given the wide spectrum of uses for `wgpu` ("core"), it became most important
to be able to debug and reproduce visual issues, be it either the user's fault,
or wgpu implementations'.
To aid these scenarios, a new [API tracing infrastructure][wgpu-pr-tracing]
was built into the core.
It's now possible to replay user's `wgpu` workloads in a separate player
on an entirely different platform.

In gfx-rs land, @mistodon created a nice [series of tutorials][gfx-hal-tutorials]
for the gfx-hal API.

[wgpu-0-5]: https://github.com/gfx-rs/wgpu/blob/master/CHANGELOG.md#v05-06-04-2020
[gfx-march]: https://rust-gamedev.github.io/posts/newsletter-008/#gfx-rs-and-wgpu-news
[wgpu-wasm-blog]: https://gfx-rs.github.io/2020/04/21/wgpu-web.html
[wgpu-in-firefox]: https://hacks.mozilla.org/2020/04/experimental-webgpu-in-firefox
[wgpu-native]: https://github.com/gfx-rs/wgpu-native
[wgpu-pr-tracing]: https://github.com/gfx-rs/wgpu/pull/619
[gfx-hal-tutorials]: https://www.falseidolfactory.com/projects/learning-gfx-hal
[hectic-rs]: https://github.com/expenses/hectic-rs
[@expenses]: https://github.com/expenses

### [erupt]

![erupt logo](erupt.png)

[erupt] provides bindings to the Vulkan API.

Features include:

- Full Vulkan API coverage
- First-class support for all extensions
- High quality auto-generated function wrappers
- A diverse `utils` module
- Complete auto-generation of everything except `utils`
- Function loading
- A high level `Builder` for every struct
- Type-safe pointer chain support

Just like ash, erupt focuses on exposing good bindings to the *raw* Vulkan API
instead of providing manually written wrappers around it like Vulkano. On top
of this it tries to improve on some features where ash lacks, e.g.
auto-generation, extensions, documentation and utils.

For more information visit [docs.rs][erupt-docs] and [GitLab][erupt-gitlab].

[erupt]: https://crates.io/crates/erupt
[erupt-docs]: https://docs.rs/erupt
[erupt-gitlab]: https://gitlab.com/Friz64/erupt

### [miniquad]

![miniquad logo](miniquad_logo.png)

^ _`miniquad` project got a logo_

[miniquad] is a safe and cross-platform rendering library
focused on portability and low-end platforms support.

This month `miniquad`-based games got a recommended way to make sounds:
[quad-snd].
Here's a [WASM demo][quad-snd-demo] ([source][quad-snd-demo-src]).

[good-web-game] now uses [quad-snd] and can run ggez's ["sounds"][ggez-sounds]
example: [WASM demo][gwg-sounds-demo].

[good-web-game]: https://github.com/not-fl3/good-web-game
[quad-snd]: https://github.com/not-fl3/quad-snd
[quad-snd-demo]: https://not-fl3.github.io/miniquad-samples/mixer.html
[quad-snd-demo-src]: https://github.com/not-fl3/quad-snd/blob/master/examples/mixer.rs
[miniquad]: https://github.com/not-fl3/miniquad
[ggez-sounds]: https://github.com/not-fl3/good-web-game/blob/audio/examples/sounds.rs
[gwg-sounds-demo]: https://not-fl3.github.io/miniquad-samples/sounds.html

### [macroquad]

`macroquad` is minimalistic game framework on top of miniquad,
strongly inspired by [raylib].

This month `macroquad`'s rendering system got 2D custom cameras support:
[example source][macroquad-example-camera].
Also, `macroquad`'s UI system now support TTF fonts:
[online demo][macroquad-example-ui], [source][macroquad-example-ui-src].

[macroquad]: https://github.com/not-fl3/macroquad
[macroquad-example-camera]: https://github.com/not-fl3/macroquad/blob/master/examples/camera.rs
[macroquad-example-ui]: https://not-fl3.github.io/miniquad-samples/ui.html
[macroquad-example-ui-src]: https://github.com/not-fl3/macroquad/blob/master/examples/ui.rs
[raylib]: https://www.raylib.com

### [Tetra][tetra]

[Tetra][tetra] is a simple 2D game framework, inspired by XNA and [Raylib][raylib].
After a quiet few months, versions [0.3.3][tetra-033], [0.3.4][tetra-034]
and [0.3.5][tetra-035] were all released over the course of April.

Highlights of this month's updates include:

- New integrations with the OS, such as file dropping and clipboard manipulation
- More utilities for working with mouse and keyboard input
- Enhancements to the animation API
- Various under-the-hood improvements and optimizations

[Tetra's website][tetra-website] has also had an overhaul,
and is [looking for contributions to the showcase section][tetra-showcase].
If you're working on a project with Tetra, submit an issue or a PR
to the [website repo][tetra-website-repo] to get it added!

[tetra]: https://github.com/17cupsofcoffee/tetra
[tetra-033]: https://twitter.com/17cupsofcoffee/status/1246407935980339200
[tetra-034]: https://twitter.com/17cupsofcoffee/status/1249410227935510536
[tetra-035]: https://twitter.com/17cupsofcoffee/status/1254076418365030400
[tetra-website]: https://tetra.seventeencups.net/
[tetra-showcase]: https://twitter.com/17cupsofcoffee/status/1255901557322928128
[tetra-website-repo]: https://github.com/17cupsofcoffee/tetra-www

### [Shipyard] v0.4

[Shipyard] is an ECS library built on top of sparse sets.

Main changes:

- Systems are now functions
- Workloads can return errors
- `Iterator` and `IntoIterator` are supported

[Shipyard]: https://crates.io/crates/shipyard

### This Month in Mun

[![Mun logo](mun-logo.png)][Mun]

[Mun] is a scripting language for gamedev focused on quick iteration times
that is written in Rust.

The Mun Team posted a [technical blog][mun-memory-mapping] about how they
implemented hot reloading of structs.

Their [April updates][mun-april] include:

- hot reloading of structs;
- 128-bit integer support;
- improved literal support;
- complete operator support for fundamental types;
- improved documentation;
- bugfixes and improved test coverage.

[Mun]: https://mun-lang.org
[mun-memory-mapping]: https://mun-lang.org/blog/2020/05/01/memory-mapping
[mun-april]: https://mun-lang.org/blog/2020/05/02/this-month-april

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- Beta-test the [Rust Sokoban Tutorial](#rust-sokoban-tutorial);
- [Embark's open issues][embark-open-issues] ([embark.rs]);
- [winit's "Good first issue" and “help wanted” issues][winit-issues];
- [gfx-rs's "contributor-friendly" issues][gfx-issues];
- [wgpu's "help wanted" issues][wgpu-help-wanted];
- [luminance's "low hanging fruit" issues][luminance-fruits];
- [ggez's "good first issue" issues][ggez-issues];
- [Veloren's "beginner" issues][veloren-beginner];
- [Amethyst's "good first issue" issues][amethyst-issues];
- [A/B Street's "good first issue" issues][abstreet-issues];
- [Mun's "good first issue" issues][mun-issues];

[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[winit-issues]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[gfx-issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[amethyst-issues]: https://github.com/amethyst/amethyst/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[abstreet-issues]: https://github.com/dabreegster/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

------

That's all news for today, thanks for reading!

Subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!--
TODO: Add real links and un-comment once this post is published
**Discussions of this post**:
[/r/rust](TODO),
[twitter](TODO).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
