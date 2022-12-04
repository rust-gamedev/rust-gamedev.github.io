+++
title = "This Month in Rust GameDev #40 - November 2022"
transparent = true
date = 2022-12-01
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 40th issue of the Rust GameDev Workgroup's
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

### Rusty Vangers

![Vange-rs rendered with a voxel tree](vangers-3rd-person.jpg)

[Rusty Vangers] ([GitHub][vangers-src], [Itch-io][vangers-itch]) is an
experimental re-implementation of the [Vangers] game,
using GPUs and multi-threading in Rust.

The project has started with a strong focus on rendering,
since efficient GPU implementation of a Voxel world as large as
2048x16384x256 (that's about 8 giga-voxels!) turned into a tough challenge,
even though the original game from 1998 easily does it on CPU.

Finally, after years of experiments, a method has been implemented
that is fast and universal when it comes to viewing angles. It's based
on an acceleration structure in the form of a voxel octree.
This work has landed at the start of November, and now it's possible
to [ride through][vangers-video] the strange worlds
while looking from behind the car, or even from inside it.

This method runs on all APIs (including OpenGL!), thanks to wgpu/naga
portability. It's suitably fast, regardless of perspective, even on
an old macBook with an integrated GPU. It concludes the rendering story
of the project, and the devs can shift focus on other areas.

_Discussions: [Reddit](https://www.reddit.com/r/rust_gamedev/comments/ypf38k/description_of_the_voxel_tracing_in_rusty_vangers/)_

[Rusty Vangers]: https://vange.rs/
[vangers-src]: https://www.github.com/yopox/LD51
[vangers-itch]: https://kvark.itch.io/vangers
[Vangers]: https://store.steampowered.com/app/264080/Vangers/
[vangers-video]: https://vimeo.com/manage/videos/765602608

### Digital Extinction

![laser trail in Digital Extinction](digital-extinction.jpeg)
_Laser trail in Digital Extinction_

[Digital Extinction] ([GitHub][de-github], [Discord][de-discord],
[Reddit][de-reddit]) by [@Indy2222] is a 3D real-time strategy game made with
[Bevy].

Here is the summary of the changes since the last update. It consists of commit
range ffd5987..494096b (2022-11-03–2022-11-27). There were 75 non-merge commits
in total.

The most notable updates are:

- trails after laser fires are briefly visible,
- flying drones no longer slide on terrain but fly in height,
- simple main menu and map selection were added,
- a game design document was kicked off,
- both Rust API, and other technical documentation are automatically published
  at [docs.de-game.org][de-docs],
- many community-related improvements have been made,
- the game was migrated to the new Bevy v0.9,
- there were some code quality and performance improvements,
- de_tools crate was fixed.

A more detailed update summary is available [here][de-update-02].

[Digital Extinction]: https://de-game.org
[de-github]: https://github.com/DigitalExtinction/Game
[de-discord]: https://discord.gg/vHMFuCWGSX
[de-reddit]: https://www.reddit.com/r/DigitalExtinction
[@Indy2222]: https://github.com/Indy2222
[Bevy]: https://bevyengine.org
[de-docs]: https://docs.de-game.org
[de-update-02]: https://mgn.cz/blog/de02

### [Space Frontiers]

![In-game screenshot of a player pointing a laser gun.](space_frontiers_ingame_screenshot.png)

[Space Frontiers] ([GitHub], [Discord], [Twitter], [Reddit], [Steam Group])
by [Star Wolves] is an online sci-fi action community RPG game simulating
space (and spaceships) in 3D.

The game has been in-development for over two years.
The server and client were successfully prototyped with Godot several
years ago. After that, the server, with all its features, was
successfully ported to [Bevy]. The client is now getting the same
porting treatment!

The project is commercial, [open-source] and has a proprietary license.
There is a milestone for a license change to free open-source.

Space Frontiers seeks to deliver customized community gameplay experiences.
Read more about plugins and content customization in the [development journal].

The official StarWolves.io forum and discussion board were launched a week ago.
The first 50 registrants will receive a permanent unique forum group/title.

_Discussions: [StarWolves.io Bulletin Board]_

[StarWolves.io Bulletin Board]: https://starwolves.io
[Star Wolves]: https://starwolves.io
[development journal]: https://starwolves.io/showthread.php?tid=1
[Bevy]: https://bevyengine.org/
[Space Frontiers]: https://github.com/starwolves/space
[GitHub]: https://github.com/starwolves/space
[open-source]: https://github.com/starwolves/space
[Steam Group]: https://steamcommunity.com/groups/starwolvescommunity
[Discord]: https://discord.gg/yYpMun9CTT
[Twitter]: https://twitter.com/starwolvesstar
[Reddit]: https://reddit.com/u/StarwolvesStar

### [Timely Defuse]

![Screenshot of Timely Defuse, featuring a chubby hero disarming a bomb.
Dynamites are scattered about.
"WAVE 5" and a score of 199 appear at the top.](timely-defuse.png)

[Timely Defuse] ([GitHub][timely-defuse-github]) by [@E_net4]
is a mobile Web game using Bevy, submitted to GitHub Game Off 2022.
In this game, explosives are coming out of nowhere
and it's the hero's job to stop as many of them from exploding as possible.

Some remarks about the experience of creating Timely Defuse
were shared on [Dev.to][timely-defuse-dev].

[Timely Defuse]: https://e-net4.itch.io/timely-defuse
[timely-defuse-github]: https://github.com/Enet4/timely-defuse
[@E_net4]: https://hachyderm.io/@E_net4
[timely-defuse-dev]: https://dev.to/e_net4/timely-wrap-up-quick-notes-on-timely-defuse-441o

## Engine Updates

### [Pixel Engine][pixel_engine]

[pixel_engine] by [@Maix0] is a 2D game engine that started as a Rust-version
of olcPixelGameEngine (written in C++). It was used as a learning project
for Maix0, where he worked on it for over 3 years.

This engine has a very straightforward API and is mostly CPU based
(the exception is Decals which are GPU-sprites) but it can achieve some things.
Use it as a way to learn new algorithms or to make a simple game.

It uses [wgpu] underneath so there is support for all desktop targets and WASM
(even though there is a bug in the WASM builds
where the keyboard layout is only QWERTY).

The most recent addition is the [SpriteRef], a way to create a view
inside a sprite where it is possible to draw in it.
You can have multiple non-overlapping views at the same time.

[pixel_engine]: https://github.com/Maix0/pixel_engine
[@Maix0]: https://github.com/Maix0
[SpriteRef]: https://docs.rs/pixel_engine/0.6.0/pixel_engine/graphics/struct.SpriteMutRef.html
[wgpu]: https://wgpu.rs/

## Learning Material Updates

## Tooling Updates

### [Boytacean][boytacean]

Boytacean ([Github][boytacean], [Working Emulator][boytacean-web])
by [@joamag] is a Game Boy emulator written in Rust
with both Native (using SDL) and Web (using WebAssembly) frontends that has been
created as a learning experiment to better understand both Rust capabilities and
Game Boy hardware.
The Web frontend is especially interesting making use of Web standards like
[Gamepad API][gamepad-api] to provide a rich and joyful experience for both
desktop and mobile devices.
Performance wise the web version runs smoothly with little to no significant
hardware requirements.

Even though Boytacean supports most Game Boy games and passes most well known
test ROMs there are still some features lacking like support for Game Boy Color
and APU (sound) support.

You can check this [Reddit post][boytacean-red-ann] for more information.

[boytacean]: https://github.com/joamag/boytacean
[boytacean-web]: https://boytacean.joao.me
[@joamag]: https://github.com/joamag
[gamepad-api]: https://developer.mozilla.org/docs/Web/API/Gamepad_API/Using_the_Gamepad_API
[boytacean-red-ann]: https://reddit.com/r/rust/comments/ywxugc/game_boy_emulator_using_rust

## Library Updates

### [bevy_atmosphere] v0.5

![bevy_atmosphere collage: colored skies](bevy_atmosphere.png)

bevy_atmosphere ([crates.io](https://crates.io/crates/bevy_atmosphere),
[docs.rs](https://docs.rs/bevy_atmosphere/latest/bevy_atmosphere/),
[GitHub](https://github.com/JonahPlusPlus/bevy_atmosphere))
is now compatible with Bevy 0.9.

The focus of this update was decoupling the atmospheric model from the
compute pipeline. What this means is that users can choose a different model
or create their own using the `Atmospheric` trait. This sets the groundwork for
having a variety of models to choose from, each for a different type of game.

With the removal of the `Atmosphere` resource, comes the addition of the
`AtmosphereModel` resource and the `Nishita` and `Gradient` models. `Nishita`
is the same model that was used in previous version of bevy_atmosphere.
`Gradient` is a new model that provides a simple gradient of three colors,
making it ideal for stylized games.

There is also the `Atmosphere<T>` and `AtmosphereMut<T>` system params,
which can be used to work with a particular model
without having to cast it from `AtmosphereModel`.

If you want to read more about the technical changes, check out the developer's
[blog post](https://jonahplusplus.dev/2022/12/01/bevy_atmosphere_0.5.html)!

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/za948o/bevy_atmosphere_05_is_now_released),
[/r/bevy](https://reddit.com/r/bevy/comments/za93oo/bevy_atmosphere_05_is_now_released),
[/r/rust](https://reddit.com/r/rust/comments/za93zb/bevy_atmosphere_05_is_now_released)_

### [Bevy Sequential Actions]

![Bevy sequential actions simple demo](sequential_actions.gif)
_An entity with a queue of repeating actions._

`bevy-sequential-actions` ([GitHub][seq-actions-gh], [docs.rs][seq-actions-docs])
is a simple helper library for the [Bevy][bevy] game engine.
It aims to execute a queue of various actions in a sequential manner.

An action is anything that implements the `Action` trait,
and can be added to any `Entity` that contains the `ActionsBundle`.
In the image above, the following actions have been added:

```rust
commands
    .actions(entity)
    .config(AddConfig {
        order: AddOrder::Back,
        start: true,
        repeat: Repeat::Forever,
    })
    .add(WaitAction::new(1.0))
    .add(MoveAction::new(Vec3::X * 2.0))
    .add(WaitAction::new(1.0))
    .add(MoveAction::new(Vec3::X * -2.0));
```

With version `0.6` comes the ability to
add a collection of actions that run in parallel.
This means that all actions will start and stop at the same time,
as the whole collection is treated as "one action".
In other words, the action queue will only advance
when all actions in the collection are finished.

```rust
commands
    .actions(agent)
    .add_many(
        ExecutionMode::Parallel,
        actions![
            action_a,
            action_b,
            action_c,
        ]
    );
```

[Bevy Sequential Actions]: https://crates.io/crates/bevy-sequential-actions
[seq-actions-gh]: https://github.com/hikikones/bevy-sequential-actions
[seq-actions-docs]: https://docs.rs/bevy-sequential-actions
[bevy]: https://bevyengine.org

### [Sparsey] v0.10

[Sparsey] by [@LechintanTudor] is an Entity Component System focused on
flexibility, conciseness and providing features exclusive to its sparse
set-based implementation.

The latest release takes advantage of the newly added Generic Associated Types
to provide a uniform interface for running systems, functions and closures that
borrow data from World and Resources, via the "run", "run_locally" and
"run_exclusive" functions.

Example:

```rust
let heaviest = sparsey::run(&world, &resources, |weights: Comp<Weight>| {
    (&weights)
        .iter()
        .with_entity()
        .max_by_key(|(_entity, &weight)| weight)
        .map(|(entity, _weight)| entity)
});
```

[Sparsey]: https://github.com/LechintanTudor/sparsey
[@LechintanTudor]: https://github.com/LechintanTudor

### [Notan v0.8][Notan]

![notan examples](notan.gif)

[Notan] is a simple abstraction layer that provides cross-platform windowing, 
input, audio, graphics and other features, in an ergonomic manner without 
enforcing any structure or pattern and treating WebAssembly as a first-class citizen.

The version [v0.8] is one of the biggest releases, adding several improvements 
in the drawing APIs and fixes and improvements in some other features like the 
clipboard support.

You can check the [demos] online and read more about the changes on the [changelog].  

[Notan]: https://github.com/Nazariglez/notan
[v0.8]: https://github.com/Nazariglez/notan/releases/tag/v0.8.0
[changelog]: https://github.com/Nazariglez/notan/blob/main/CHANGELOG.md
[demos]: https://nazariglez.github.io/notan-web


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
