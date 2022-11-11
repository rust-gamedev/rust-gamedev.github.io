+++
title = "This Month in Rust GameDev #39 - October 2022"
transparent = true
date = 2022-11-11
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 39th issue of the Rust GameDev Workgroup's
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
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)

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

### [Game Development in Rust Discord][gamedev-discord]

![Discord projects forum](projects.png)

The ['Game Development in Rust' Discord server][gamedev-discord] now has a
\#projects forum, where you can share updates on what you've been
working on.

[gamedev-discord]: https://discord.gg/yNtPTb2

## Game Updates

### miam

![A screenshot of miam, the player is reproducing a burger order
while the chef is changing the menu](miam.png)

[miam] ([GitHub][miam-src]) by [yopox], [on100balec], and [hadri]
is a cooking game made for the Ludum Dare 51.
"miam" is the French interjection for "yum".

The theme of the game jam was "Every 10 seconds".
Here instead of having 10 seconds to make a burger,
the chef is really indecisive and comes to change
the menu every 10 seconds.

The game was built using Bevy 0.8 with [bevy_game_template]
to save precious time when starting the game jam.
[bevy_tweening] was also really useful to polish the game.

The game was ranked 120th overall and 94th for audio out of 1240 jam entries.

_Discussions: [Submission page](https://ldjam.com/events/ludum-dare/51/miam)_

[miam]: https://yopox.itch.io/miam
[miam-src]: https://www.github.com/yopox/LD51
[yopox]: https://mstdn.social/@yopox
[on100balec]: https://soundcloud.com/jmen_balec
[hadri]: https://github.com/HadrienRenaud
[bevy_game_template]: https://github.com/NiklasEi/bevy_game_template
[bevy_tweening]: https://github.com/djeedai/bevy_tweening

### [Jumpy]

![Online Game Fish Selection Screen](jumpy.png)
_Online Game Fish Selection Screen_

[Jumpy] ([GitHub][Jumpy], [Discord][jumpy_discord], [Twitter][jumpy_twitter]) by
[Spicy Lobster][spicy_lobster] is a pixel-style, tactical 2D shooter with a fishy
theme.

In the last month,
the devs started [rewriting][jumpy_rewrite] Jumpy to use the [Bevy] game engine.
Massive progress has been made,
establishing foundational features such as input mapping, UI, and localization,
along with the addition of a few major features:

- Network play, complete with a matchmaking server for joining public games online.
- A scripting engine using TypeScript/JavaScript powered by [`bevy_mod_js_scripting`].
- A revamped map editor that renders the actual game in the viewport.
  This lets you switch back and forth between editing and playing,
  and has the potential for multiplayer map editing in the future.

The physics have been ported from the old version of the game
with the basic gameplay and the sword item nearly finished.
The next tasks include porting some of the old items to the new scripting system
and finishing off the map editor's editing functionality.

_Discussions: [GitHub][jumpy_discussions], [Twitter][jumpy_twitter]_

[Jumpy]: https://github.com/fishfolks/jumpy
[jumpy_rewrite]: https://github.com/fishfolks/jumpy/pull/466
[Bevy]: https://bevyengine.org
[jumpy_discussions]: https://github.com/fishfolks/jumpy/discussions
[jumpy_twitter]: https://twitter.com/spicylobsterfam
[jumpy_discord]: https://discord.gg/4smxjcheE5
[spicy_lobster]:  https://spicylobster.itch.io/
[`bevy_mod_js_scripting`]: https://github.com/jakobhellermann/bevy_mod_js_scripting

### [CyberGate][cybergate-yt]

![State Syncronization](cybergate.gif)
_The health bar that is closer updates more frequently_

CyberGate ([YouTube][cybergate-yt], [Discord][cybergate-dis]) by CyberSoul
is an attempt to use artificial intelligence to build diverse universe experiences
with strange creatures and procedural gameplay styles.

Recent updates:

- Constructed powerful and extremely fast synchronization for states:
  - Able to Extract and Merge partial changes of components and global states.
  - Restrict visibility, if the state is conditionally decided to be private.
  - Limit the frequency of these state updates based on object priority.
- Big improvement of the organization of the networking systems
- Improved timers in 70 places, resulting in higher performance and flexibility
- Better health bars
- Several minor game content fixes

[Join the Discord server][cybergate-dis] to participate in upcoming Phase 6.0!

[cybergate-yt]: https://youtube.com/channel/UClrsOso3Xk2vBWqcsHC3Z4Q
[cybergate-dis]: https://discord.gg/R7DkHqw7zJ

### Digital Extinction

![selection circles & health bars in Digital
Extinction](digital-extinction.jpeg) _selection circles & health bars in Digital
Extinction_

[Digital Extinction] ([GitHub][de-github], [Discord][de-discord],
[Reddit][de-reddit]) by [@Indy2222] is a 3D real-time strategy game made with
[Bevy].

The game repository was opened a month ago under the GPLv3 license. Here is the
summary of the changes since the opening of the repository. It consists of
commit range `f23d51e..ffd5987` (2022-10-09–2022-11-03). There were 50
non-merge commits in total, with the most notable improvements below:

- Object & map bounds repulsion was added.
- Terrain got a texture.
- Select all (CTRL+A) and select all visible (CTRL+Shift+A) functionality was
  introduced.
- Circle markers below selected objects are now displayed.
- Drag selection was implemented.
- Simple health bars were introduced.

A more detailed update summary is available [here][de-newsletter].

[Digital Extinction]: https://de-game.org
[de-github]: https://github.com/DigitalExtinction/Game
[de-discord]: https://discord.gg/vHMFuCWGSX
[de-reddit]: https://www.reddit.com/r/DigitalExtinction/
[@Indy2222]: https://github.com/Indy2222/
[de-newsletter]: https://mgn.cz/blog/de01/

### [Turn-based strategy game (ThousandthStar's devlog)]

![Skeleton](skeleton.png)

[ThousandthStar] ([Github](https://github.com/ThousandthStar/multiplayer_game))
is creating a simple turn-based strategy game using the Bevy game engine. It's a
small side project he's been building in his spare time.

The game aims to be a cross between Chess and the game [Clash Mini](https://clash.com).
Players move their troops around the board and try to get them to their opponent's
side. The game is far from playable, but here is some of the progress that has
been done:

- Server and client troop information exchange through packets.
- Threads to allow for multiple games to run at the same time.
- Tile selection appears when troops are clicked.

More features are currently under development:

- Troop movement.
- Troop attacks.

The game uses an extremely simple 8x pixel art style. The palette is
[Paper Pixels](https://lospec.com/palette-list/paper-pixels) with some extra colors.

_Discussions: [/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/ylksma/discussion_thread_for_thousandthstars_multiplayer)_

[ThousandthStar]: https://github.com/ThousandthStar
[Turn-based strategy game (ThousandthStar's devlog)]: https://dev.to/thousandthstar-start-of-the-game-development-blog-series-p42

### vetovoima

![vetovoima](vetovoima.png)

[vetovoima][vetovoima_itch] by [@MatiasKlemola][vetovoima_twitter] is an arcade game
where you control gravity.

This month, the origin story of vetovoima was released
[on the Valuemotive blog][vetovoima_blog]. In the story, an abstract idea
turns into an arcade game, which eventually makes it to RustConf 2022!

[vetovoima_itch]: https://yourmagicisworking.itch.io/vetovoima
[vetovoima_twitter]: https://twitter.com/MatiasKlemola
[vetovoima_blog]: https://www.valuemotive.com/post/hobby-project-spotlight-vetovoima

## Engine Updates

### [Fyrox]

![Fyroxed](fyroxed.gif)

[Fyrox] ([Discord][fyrox_discord], [Twitter][fyrox_twitter]) is a game engine that
aims to be easy to use and provide a large set of out-of-the-box features. In October
it hit version 0.28 which added new functionality and improved existing:

- Asset preview during instantiation (see the gif above).
- Improved and deterministic script processing.
- Scripts are now compatible with saved games.
- Major text box widget improvements.
- Prefab property inheritance via reflection.
- Automatic node handle mapping via reflection.
- Sprite sheet animation support.
- Multi-borrow context to solve borrowing issues.
- Editor now stores list of recently used files, scene settings, and more.
- World Viewer now allows you to change a node type.
- Major [book] improvements.
- See the full list of changes in the [blog post][0.28].

[Fyrox]: https://github.com/FyroxEngine/Fyrox
[0.28]: https://fyrox.rs/blog/post/feature-highlights-0-28/
[fyrox_discord]: https://discord.com/invite/xENF5Uh
[fyrox_twitter]: https://twitter.com/DmitryNStepanov
[book]: https://fyrox-book.github.io/

### [miniquad]

![ios-miniquad](ios_zemeroth.png)
_[zemeroth](github.com/ozkriff/zemeroth/) on the iOS simulator_

[miniquad] is a pure Rust, cross-platform graphics library.

This month was about improving miniquad on mobile experience.

On iOS, miniquad got [an article](https://macroquad.rs/articles/ios/)
on setting up the developer environment, getting provisioning files,
etc.

TL;DR: even on old Macs/Xcode, mini/macroquad-based games can
be built with  

```rust
cargo build --target aarch64-apple-ios && ios_deploy
```

No iOS-specific code required and no need to deal with Xcode projects.

For Android, miniquad got
[a writeup](https://www.patreon.com/posts/73600033)
on Java interop, AAB bundles and other Android specific internals.

[miniquad]: https://github.com/not-fl3/miniquad/

## Learning Material Updates

### WGPU Wiki

[@wumpf](https://twitter.com/wumpf/) updated the
[wgpu wiki](https://github.com/gfx-rs/wgpu/wiki/Learning-wgpu)
to include an explanation of some of the fundamental
wgpu/WebGPU concepts.

It includes info diagrams on how `RenderPipeline` connects
to other resources as well as an overview on the data structures
involved in rendering a frame.

### [Learn Wgpu] Updated

The Learn Wgpu tutorial has been updated to 0.14!

The API changes from 0.13 are pretty simple - check them out
[here](https://sotrh.github.io/learn-wgpu/news/0.14/)

[Learn Wgpu]: https://sotrh.github.io/learn-wgpu

### [wgpu-openxr-example][wgpu-openxr-example]

![A screenshot of the desktop mode of the example](wgpu-openxr-example.png)

[`wgpu-openxr-example`][wgpu-openxr-example] is an example of how to wire up
wgpu (Vulkan-only) to OpenXR by [@philpax](https://github.com/philpax)
([Dims][dims]). It displays a triangle in the centre and a triangle per hand,
and renders to both a window and your XR headset with both head and headset tracking.

It has multiple modes of operation, including disabling XR integration
entirely at compile-time with a Cargo feature, to make it easy to understand
each step in the process of integrating OpenXR.

[wgpu-openxr-example]: https://github.com/philpax/wgpu-openxr-example
[dims]: https://www.dims.co/

## Tooling Updates

### [Blackjack]

![Blackjack: A height field terrain built from a noise function being edited in
real time](blackjack.gif)

[Blackjack] by @setzer22 is a procedural modeling application made in Rust,
using rend3, wgpu, and egui. It follows the steps of applications like Houdini,
or Blender's geometry nodes project and provides a node-based environment to
compose procedural recipes to create 3d models.

The past couple months have been busy for Blackjack, the work continues with a
focus of filling in all the missing bits to enable usage in more indie gamedev
workflows.

Some of the changes include:

- New nodes for geometry editing, like: _Resample curve_, _Point cloud_,
  _Polygon_, _Line from points_ or _Edit geometry_.
- A new type of mesh, the height map with its set of nodes.
- A way to import OBJ meshes into procedural graphs.
- Bug fixes in extrude and bevel nodes, making them more robust and handle more
  kinds of meshes.
- A new DragValue widget offering more precise control when tweaking parameters.
- Smoother camera controls and various editor UX improvements.

Blackjack has no release notes yet, but make sure to check out the recently
merged PRs ([1][blackjack-pr-1], [2][blackjack-pr-2], [3][blackjack-pr-3]) for a
more in-depth summary of the changes and lots of animated gifs.

On the social side, a first [blog post][blackjack-blog-post] in a series was
published on Ko-fi showing a real gamedev use case using Blackjack and the Godot
engine together to implement a racing game. Additionally, Blackjack now has a
[Twitter account][blackjack-twitter]. Consider following both for more frequent
updates!

Currently, development is focused on implementing the next major feature:
Gizmos. There are [some initial results][blackjack-gizmos], and the full PR for
it is expected to land sometime during November.

[Blackjack]: https://github.com/setzer22/blackjack
[blackjack-pr-1]: https://github.com/setzer22/blackjack/pull/45
[blackjack-pr-2]: https://github.com/setzer22/blackjack/pull/46
[blackjack-pr-3]: https://github.com/setzer22/blackjack/pull/52
[blackjack-gizmos]: https://twitter.com/Blackjack3dRust/status/1587900630718615552
[blackjack-blog-post]: https://ko-fi.com/post/New-nodes-Improved-Lua-bindings-and-lots-of-QoL-i-S6S6FK40S
[blackjack-twitter]: https://twitter.com/Blackjack3dRust

### [Graphite][graphite-website]

![Graphite logo](graphite.png)

Graphite ([website][graphite-website], [GitHub][graphite-repo],
[Discord][graphite-discord], [Twitter][graphite-twitter]) is a free,
in-development raster and vector 2D graphics editor that will be based around a
Rust-powered node graph compositing engine.

September and October's [sprint 19][graphite-sprint-19] focused on major new
features and improvements to make Graphite more useful and usable.

- Like magic: [Stable Diffusion][graphite-stable-diffusion], the open source AI
  image generator, is integrated into Graphite as the Imaginate tool. It
  provides an innovative non-destructive workflow to interactively co-create
  art with a skilled AI.
- Right on the nodes: Graphite's node graph engine is finally up and running,
  now integrated with a node-powered tool that desaturates the underlying
  artwork. A graph panel will be ready shortly. Just in time for
  [Nodevember][graphite-nodevember]!
- With flying colors: The color picker menu gains hex/RGB/HSV controls.
  Gradients get unlimited color transitions. The Eyedropper tool is rewritten
  to sample pixels from the viewport. The editor UI gets a color scheme design
  refresh for improved clarity, plus helpful new input widgets.

Open the [Graphite editor][graphite-live-demo] in your browser to give it a try
and share your creations with #MadeWithGraphite on Twitter.

[graphite-website]: https://graphite.rs
[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://discord.graphite.rs
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-sprint-19]: https://github.com/GraphiteEditor/Graphite/milestone/19
[graphite-stable-diffusion]: https://en.wikipedia.org/wiki/Stable_Diffusion
[graphite-nodevember]: https://nodevember.io/
[graphite-live-demo]: https://editor.graphite.rs

## Library Updates

### [glutin]

[glutin] ([GitHub][glutin-github], [docs.rs][glutin-docs])
by [@kchibisov] ([rust-windowing]) is a crate that is well known for
being an OpenGL platform initialization on top of winit.

With glutin `0.30`, this is no longer the case. The crate was
rewritten from scratch and redesigned around [raw-window-handle], so
you don't need [winit] anymore in this equation and it could be used with
whatever windowing library you prefer, like [smithay-client-toolkit] for
pure Wayland clients.

Given everything is based on raw-window-handle the crate is more low-level
now and also exposes the underlying platform API like `EGL`, `GLX`, and `WGL`
directly. There's already an interest of using glutin to handle `EGL` in
projects like [Smithay].

Previously with glutin `0.29` everything was based around the single
[`WindowedContext`] - while this was convinient for some users and worked on
desktop platforms, that fact was a major pain on Android where the window
gets destroyed over time, but its context could be kept around, or when you
fail to query configuration with supplied parameters leading to chain creating
`WindowedContext` and causing delays on startup. For example, you can create all
the objects and then fail on setting vsync, forcing you to start over.

None of that is an issue with glutin `0.30.0`. The API is now structured around
`Display`, `Context`, `Surface`, and `Config`, where every object is built from
the `Display` and has its own role which is close to what you usually can find
in OpenGL native rendering platforms specifications, like `EGL`.

Unfortunatelly, the new API isn't as easy to bootstrap as it was with old
glutin, especially when you want to use platforms like `WGL` and `GLX`.
However, if you're using winit there will be (or is already) a special crate
[glutin-winit] to handle platform-specific `Display` creation for you.

To see the new API in action, look at the [glutin examples]. They
should work on desktop platforms and Android (you may even notice that there's
no special code for Android at all!).

One note to add, is that iOS is **no longer** supported, but only due to
lack of maintainers for it. If you rely on iOS support in glutin, the devs
encourage you to help contributing to it upstream, or you'd stuck with glutin
`0.29` which won't receive any updates anymore.

For further info, check out the [winit matrix room](https://matrix.to/#/#winit:matrix.org)
or [#winit](https://web.libera.chat/#winit) at libera.chat.

[glutin]: https://crates.io/crates/glutin
[glutin examples]: https://github.com/rust-windowing/glutin/tree/master/glutin_examples
[glutin-winit]: https://github.com/rust-windowing/glutin/pull/1517
[winit]: https://crates.io/crates/winit
[Smithay]: https://github.com/smithay/smithay
[`WindowedContext`]: https://docs.rs/glutin/0.29.1/glutin/type.WindowedContext.html
[smithay-client-toolkit]: https://crates.io/crates/smithay-client-toolkit
[glutin-github]:  https://github.com/rust-windowing/glutin
[raw-window-handle]: https://crates.io/crates/raw-window-handle
[glutin-docs]: https://docs.rs/glutin
[@kchibisov]: https://github.com/kchibisov
[rust-windowing]: https://github.com/rust-windowing

### [presser]

[presser] ([GitHub][presser-github], [docs.rs][presser-docs])
by [@fu5ha] ([Embark Studios][embark])
is a crate to help you copy things into raw buffers without
invoking spooky action at a distance (undefined behavior).

Ever done something like this?

```rust
#[derive(Clone, Copy)]
#[repr(C)]
struct MyDataStruct {
    a: u8,
    b: u32,
}

let my_data = MyDataStruct { a: 0, b: 42 };

// 🚨 MyDataStruct contains 3 padding bytes after `a`, which are
// uninit, therefore getting a slice that includes them is UB!
let my_data_bytes: &[u8] = transmute(&my_data);

// allocate an uninit buffer of some size
let my_buffer: MyBufferType = some_api.alloc_buffer_size(2048);

// 🚨 this is UB for the same reason, these bytes are uninit!*
let buffer_as_bytes: &mut [u8] =
    slice::from_raw_parts(my_buffer.ptr(), my_buffer.size());

// 🚨 this is UB because not only are both slices invalid,
// this is not ensuring proper alignment!
buffer_as_bytes.copy_from_slice(my_data_bytes);
```

[presser] can help.

```rust
// borrow our raw allocation as a presser::Slab, asserting we have
// unique access to it. see the docs for more.
let slab = unsafe { raw_allocation.borrow_as_slab(); }

// now we may safely copy `my_data` into `my_buffer`,
// starting at a minimum offset of 0 into the buffer
let copy_record = presser::copy_to_offset(&my_data, &mut slab, 0)?;
```

If you're not convinced this is actually an issue, read more in the
[crate readme][presser-readme]. If you're intrigued and want to know more,
see the [docs][presser-docs].

_Discussions: [/r/rust](https://reddit.com/r/rust/comments/y5mq3w/presser),
[Twitter](https://twitter.com/fu5ha/status/1581705656218062848)_

[presser]: https://crates.io/crates/presser
[presser-github]: https://github.com/embarkstudios/presser
[presser-docs]: https://docs.rs/presser
[@fu5ha]: https://github.com/fu5ha
[embark]: https://github.com/embarkstudios
[presser-readme]: https://crates.io/crates/presser

### [Hanabi]

The [Hanabi] library ([GitHub][hanabi-github], [docs.rs][hanabi-docs]) is a
modern VFX library for the [Bevy Game Engine][bevy]. It focuses on scale to produce
stunning visual effects (VFX) in real time, offloading most of the work to
the GPU (compute shaders), with minimal CPU intervention. The design is inspired
by modern particle systems found in other industry-leading game engines.

This month, [Hanabi] v0.4.0 was released, adding a 3D cone emitter and some
more testing, followed by v0.4.1 providing several bug fixes and support for custom
MSAA settings. Both versions target the latest Bevy 0.8 release.

The internal architecture was also updated to decouple particle spawning and update,
allowing to update over [6 millions particles][hanabi-6m] in real time with close
to zero CPU usage. This new architecture will be available in the upcoming v0.5.0
release as part of the upgrade to the imminent Bevy 0.9 release.

[Hanabi]: https://crates.io/crates/bevy_hanabi
[hanabi-github]: https://github.com/djeedai/bevy_hanabi
[hanabi-docs]: https://github.com/djeedai/bevy_hanabi
[hanabi-6m]: https://twitter.com/djeedai/status/1586812459737923586

### [`seldom_state`]

`seldom_state` by [Seldom] ([Github][seldom-github]) is a component-based
state machine plugin for Bevy. It's useful for AI, player state, animation,
and other entities that occupy varying states.

In October, `seldom_state` recieved its 0.2 and 0.2.1 updates. 0.2 gave `Done`
and `DoneTrigger` success and failure variants, and changed states to be
bundles instead of components. 0.2.1 added `insert_on_enter`
and `remove_on_exit` methods to the state machine, which let you automatically
add and remove bundles upon state change.

_Discussions:
[0.2](https://twitter.com/Seldom_SE/status/1581696118064177152),
[0.2.1](https://twitter.com/Seldom_SE/status/1586647959201906688)_

[`seldom_state`]: https://github.com/Seldom-SE/seldom_state
[Seldom]: https://twitter.com/Seldom_SE
[seldom-github]: https://github.com/Seldom-SE

### MarpII

MarpII ([GitLab](https://gitlab.com/tendsinmende/marpii),
[Twitter](https://twitter.com/siebencorgie),
[Mastodon](https://mastodon.social/@siebencorgie)) by
[Siebencorgie](https://github.com/siebencorgie)
is a highlevel-ish helper for Vulkan using
[Ash](https://crates.io/crates/ash).

MarpII is the successor to [Marp](https://gitlab.com/tendsinmende/marp), which
was a Rust-y abstraction layer over low-level Vulkan bindings.

The new crate does not focus on wrapping Vulkan into one safe wrapper, but
instead provides multiple levels of helpers that should make using it easier.
This includes handling resource lifetimes and providing simplifications for
common operations.

The main crate provides utilities for robust Vulkan context (instances, devices,
etc.) and resource (images, buffers, descriptors etc.) creation. Lately,
higher level helpers like a
[resource managing frame graph](https://siebencorgie.rs/posts/marpii-rmg/) and
helpers for descriptor creation and command buffer recording joined the project.

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

- Other game updates:
  - [Yomi Hustle](https://twitter.com/ivy_sly_/status/1589988615123193856) is an
    online turn-based TAS fighter, which is going into open beta on November 10th.
  - [TheGrimsey](https://thegrimsey.net/2022/10/13/Bevy.html) is writing a devlog
   of their experiences with Bevy.
  - [Tiny Building Game](https://twitter.com/h3r2tic/status/1578125088280530946)
    introduced a shader refactoring dev tool.
  - [Embark](https://medium.com/embarkstudios/embarks-creative-playground-call-for-early-players-2e1d56d21ede)
    is looking for early players for their creative platform.
  - [R:Vust](https://sethmaddev.itch.io/rvust) is a side-scrolling SHMUP.
  - [Tomb Explorer](https://www.youtube.com/watch?v=z8DCqoxHtDs) has a new
  devlog video.
  - [Tantan](https://www.youtube.com/watch?v=2-pXntcUWfM) is working on a voxel game.
  - [Punchy](https://github.com/fishfolk/punchy/releases/tag/v0.1.0)
    released the first MVP of their scripting engine.
  - [Bungo Drifter](https://mungbungo.itch.io/bungo-drifter) is an infinite
    voxel city generator.
  - [Vange-rs](https://www.reddit.com/r/rust_gamedev/comments/yicr23/driving_through_the_voxel_grid_in_vangers/)
    added a new style of rendering.
  - [RainyCloud](https://store.steampowered.com/app/1343230/RainyCloud/) is an
    experimental game where you control a cloud.
  - [Life Code](https://www.youtube.com/watch?v=S2jxKva4n1U) released another
    devlog for their ecosystem sim.
- Other engine updates:
  - [GGEZ](https://www.reddit.com/r/rust_gamedev/comments/xvm9eb/ggez_080rc1)
    published a new release candidate for v0.8.
  - [Pyxel](https://twitter.com/kitao/status/1578669120416993280) has a new
    tutorial of how to use their web version.
- Other learning material updates:
  - [Rustacean Station](https://rustacean-station.org/episode/forest-anderson/)
  interviewed Forest Anderson about Veloren, a multiplayer voxel RPG.
  - [Rukai](https://www.youtube.com/watch?v=g4Xqf2MFXpk) gave a talk about how
    they built a frame data website in Rust.
  - [LittleB0xes](http://www.littleboxesgames.fr/posts/psycho-pong-part-one/)
    started a tutorial series for Macroquad.
  - [Dan Olson from Treyarch](https://www.youtube.com/watch?v=GtRo-eF8-TE) gave
    a talk on using Rust for game tooling.
  - [Larry Du](https://dublog.net/blog/rust-2/) made a web game using Bevy.
  - [Ryosuke](https://dev.to/whoisryosuke/primitive-geometry-in-wgpu-and-rust-1da1)
    wrote about rendering primitive geometry with WGPU.
  - [PhaestusFox](https://www.youtube.com/playlist?list=PL6uRoaCCw7GN_lJxpKS3j-KXuThRiSXc6)
    has posted more episodes of their 'Bevy Basics' tutorial series.
- Other tooling updates:
  - [Modmapper](https://www.hallada.net/2022/10/05/modmapper-putting-every-skyrim-mod-on-a-map-with-rust.html)
    is an interactive map of every Skyrim mod on Nexus Mods.
  - [LelsersLasers](https://lelserslasers.itch.io/3d-cellular-automata-wgpu-rust)
    is building 3D cellular automata with WGPU.
  - [Vismut](https://orsvarn.com/vismut-0-6/) released version 0.6 of their
    procedural texturing tool.
- Other library updates:
  - [psx-sdk-rs](https://github.com/ayrtonm/psx-sdk-rs) is a basic Rust SDK for
    the PlayStation 1.
  - [WGPU 0.14](https://github.com/gfx-rs/wgpu/releases/tag/v0.14.0) was released.
  - [gba](https://github.com/rust-console/gba/blob/main/CHANGELOG.md) is a crate
    for Game Boy Advance development.
  - [quinn](https://github.com/quinn-rs/quinn/releases/tag/0.9.0) released
    version 0.9 of their pure-Rust QUIC implementation.
  - [iyes_loopless 0.8](https://twitter.com/IyesGames/status/1585975134170468352)
    provides usability improvements for Bevy game loops.
  - [leafwing_abilities](https://twitter.com/AliceICecile/status/1582169655460114433)
    is a library for managing game character abilities.
  - [dualquat](https://github.com/knickish/dualquat) is a library for use in
    dual quaternion-based physics simulations.
  - [seed_creator](https://www.reddit.com/r/rust_gamedev/comments/yaw82r/random_seed_creation_showcase_for_wasm4_fantasy)
    creates random seeds for the WASM4 fantasy console.
  - [bevy-hikari](https://github.com/cryscan/bevy-hikari) implements global
    illumination for Bevy.
  - [bevy_ecs_tilemap](https://github.com/StarArawn/bevy_ecs_tilemap/releases/tag/v0.8.0)
    added many new features.
  - [bevy_mod_mesh_tools](https://github.com/DGriffin91/bevy_mod_mesh_tools)
    provides helper code for working with meshes.

## Discussions

<!-- Links to handpicked reddit/twitter/urlo/etc threads that provide
useful information -->

- /r/rust_gamedev:
  - [SDL2 vs Winit/Pixels/CPAL/etc. Is going "native" really worth it?](https://www.reddit.com/r/rust_gamedev/comments/xyjdy5/sdl2_vs_winitpixelscpaletc_is_going_native_really/)
  - [What's the best 2D engine like pygame, but for Rust?](https://www.reddit.com/r/rust_gamedev/comments/y72as6/whats_the_best_2d_engine_like_pygame_but_for_rust)
  - [Best way to draw massive amount of individual pixels every frame](https://www.reddit.com/r/rust_gamedev/comments/xz642j/falling_sand_simulation_best_way_to_draw_pixels)

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- ['Are We Game Yet?' wants to know about projects/games/resources that
  aren't listed yet][awgy].
- [Graphite is looking for contributors][graphite-contribute] to help build the
  new node graph and 2D rendering systems.
- [winit's "difficulty: easy" issues][winit-issues].
- [Backroll-rs, a new networking library][backroll-rs].
- [Embark's open issues][embark-open-issues] ([embark.rs]).
- [wgpu's "help wanted" issues][wgpu-issues].
- [luminance's "low hanging fruit" issues][luminance-fruits].
- [ggez's "good first issue" issues][ggez-issues].
- [Veloren's "beginner" issues][veloren-beginner].
- [A/B Street's "good first issue" issues][abstreet-issues].
- [Mun's "good first issue" issues][mun-issues].
- [SIMple Mechanic's good first issues][simm-issues].
- [Bevy's "good first issue" issues][bevy-issues].

[awgy]: https://github.com/rust-gamedev/arewegameyet#contribute
[graphite-contribute]: https://graphite.rs/contribute
[winit-issues]: https://github.com/rust-windowing/winit/issues?q=is%3Aopen+is%3Aissue+label%3A%22difficulty%3A+easy%22
[backroll-rs]: https://github.com/HouraiTeahouse/backroll-rs/issues
[embark.rs]: https://embark.rs
[embark-open-issues]: https://github.com/search?q=user:EmbarkStudios+state:open
[wgpu-issues]: https://github.com/gfx-rs/wgpu/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[ggez-issues]: https://github.com/ggez/ggez/labels/%2AGOOD%20FIRST%20ISSUE%2A
[veloren-beginner]: https://gitlab.com/veloren/veloren/issues?label_name=beginner
[abstreet-issues]: https://github.com/a-b-street/abstreet/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22
[mun-issues]: https://github.com/mun-lang/mun/labels/good%20first%20issue
[simm-issues]: https://github.com/mkhan45/SIMple-Mechanics/labels/good%20first%20issue
[bevy-issues]: https://github.com/bevyengine/bevy/labels/E-Good-First-Issue

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

**Discuss this post on**:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/yslo3f/this_month_in_rust_gamedev_39_october_2022/),
[Twitter](https://twitter.com/rust_gamedev/status/1591162878190649345),
[Discord](https://discord.gg/yNtPTb2).

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
