+++
title = "This Month in Rust GameDev #23 - June 2021"
date = 2021-07-01
transparent = true
draft = true
+++

<!-- Check the post with markdownlint-->

Welcome to the {TODO}th issue of the Rust GameDev Workgroup's
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
- [Library & Tooling Updates](#library-tooling-updates)
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

### [Egregoria]

![Egregoria in 3D](egregoria.jpg)

[Egregoria] ([GitHub][Egregoria], [Discord][egregoria-discord])
by [@Uriopass]
is a simulation oriented city builder that tries
to replicate modern society as well as possible.

It recently upgraded from a 2D top-down view to a
3D third-person camera as seen in the screenshot above.

Elevated roads and bridges are now possible, allowing to build
[complex highway interchanges][highway-screenshot].

Some technical details around the renderer with more screenshots,
along with an architectural overview of the project can be read in the
[9th devlog][egregoria-blog-post].

[Egregoria]: https://github.com/Uriopass/Egregoria
[@Uriopass]: https://github.com/Uriopass
[egregoria-blog-post]: https://douady.paris/blog/egregoria_9.html
[egregoria-discord]: https://discord.gg/CAaZhUJ
[highway-screenshot]: http://douady.paris/blog/img/blog_9/interchange.jpg

### [Open Combat][opencombat]

![Open Combat logo](open_combat.jpg)

[Open Combat][opencombat]
([/r/OpenCombatGame](https://reddit.com/r/OpenCombatGame),
[Discord](https://discord.gg/YD2V7XsBQZ),
[Forum](https://discourse.opencombat.bux.fr/))
is a real time tactical game directly inspired from
[Close Combat Series](https://en.wikipedia.org/wiki/Close_Combat_(series)).
The player takes control of soldier units and orders them to win the battles
from a top down 2D view.

The project recently started with Rust language after a Python language proof of
concept in 2017. More info is available at [opencombat.bux.fr][opencombat],
and you can find a
[presentation](https://youtube.com/watch?v=pxVgjBKXlIw) video and a game
making of [video](https://youtube.com/watch?v=3TOEZ7krhvI) on YouTube.

[opencombat]: https://opencombat.bux.fr

### [Blightmud][blightmud]

![Blightmud logo](blightmud.png)

[Blightmud][blightmud] ([Discord](https://discord.gg/qnxgUC5)) is a mud client
for the terminal inspired by [tintin++][tintin] and [tinyfugue][tinyfugue]
allowing users to connect and get immersed in the worlds offered by text based
online multi user dungeons known as muds.

The project was birthed in April of 2020 and has come a long way since.  It now
offers granular scripting access using [lua][lua], plugin handling, built in
text-to-speech (via [Speech dispatcher][speechd]), split view scrolling, modern
telnet protocols and TLS connections to name a few.

[blightmud]: https://github.com/Blightmud/Blightmud
[tintin]: https://tintin.mudhalla.net/
[tinyfugue]: http://tinyfugue.sourceforge.net/
[lua]: https://www.lua.org/
[speechd]: https://freebsoft.org/speechd

### [The Hat Chooses the Wizard][hatchooseswizard]

![Level 1-4 of the game "The Hat Chooses the Wizard" running on a Game Boy
Advance](hatchooseswizard.jpg)
_Runs on real hardware!_

The Hat Chooses the Wizard is a 2D platformer for the Game Boy Advance.

It was made for this year's Game Maker's Toolkit (GMTK) game jam with the theme
joined together and came in the top 25% of over 5800 entries. The game plays
over 12 levels with the core mechanic being to throw your hat and then
accelerate towards it. You can play it on a web based emulator embedded on the
[itch][hatchooseswizard] page.

The game is written in pure Rust and uses [agb][agblibrary] to
interface with the hardware. The library is designed to allow you to write games
without needing a detailed understanding of the hardware while still giving full
access to all of its capabilities. It is under active development with
plenty more features on the way.

You can find the source code for the game [here][hatchooseswizardsource] and all
feedback is welcome.

[hatchooseswizard]: https://lostimmortal.itch.io/the-hat-chooses-the-wizard
[hatchooseswizardsource]: https://github.com/corwinkuiper/joinedtogether
[agblibrary]: https://github.com/corwinkuiper/agb

### [Themengi]

![User highlighting objects in the game world and parsing the phrase
"dang puru rupuu kythengi" into the action "open", object "door", and mods
"red" and "left".](themengi.gif)
_Demonstration of natural language parser with temporary words and grammar._

[Themengi] ([Discord][themengi-discord], [Twitter][themengi-twitter])
is a puzzle adventure game where you learn an alien language,
with completely unknown words and grammar, to navigate the world
and find your way home.

This month the [first devlog][themengi-video] for
Themengi was published, discussing its natural language parser using
Head-Driven Phrase Structure Grammar, the choice to use Bevy, a texture
upscaling technique for faithful pixel art rendering, and implementing an
outline shader in the Bevy render pipeline.

[Themengi]: https://vgel.me/themengi
[themengi-discord]: https://discord.gg/GpparbnXPC
[themengi-twitter]: https://twitter.com/voooooogel
[themengi-video]: https://youtube.com/watch?v=gtIphiK7tMs

## Engine Updates

## Learning Material Updates

### [A Trig-less Line of Sight Algorithm for 2D Games][lineofsight]

![2D Sight Example](lineofsight.png)

[@basstabs] published a tutorial which explains how to write a
line of sight algorithm for 2D games in Rust without using trigonometry or
square roots. It includes vector diagrams and typeset math to explain the ideas
behind each stage of the algorithm, source code for each step, tests to verify
accuracy of the methods, and suggestions for further improvements.
Additionally, the
[repository](https://github.com/basstabs/2d-line-of-sight) contains benchmarks
and a sample application written in [ggez](https://crates.io/crates/ggez).

_Discussions: [/r/rust_gamedev](
https://www.reddit.com/r/rust\_gamedev/comments/nx79kq/)_

[lineofsight]: https://basstabs.github.io/2d-line-of-sight/
[@basstabs]: https://github.com/basstabs

## Library & Tooling Updates

### [erupt]

![erupt logo](erupt.svg)

[erupt] by [@Friz64] provides bindings to the Vulkan API.

Since being last mentioned in the newsletter shortly after its release, erupt
has undergone significant development. The generator, erupt's heart, has been
rewritten from scratch with the aim to improve maintainability. On top of that,
many bugs were fixed, the function loader was rewritten and usability was
improved while always keeping up to date with the latest Vulkan Headers as best
as possible.

The ecosystem has gained traction, with many people using the crate for their
projects. Pure Rust Vulkan allocators with support for erupt have been released.

[erupt]: https://gitlab.com/Friz64/erupt
[@Friz64]: https://blog.friz64.de/about

### [glutin] (and [winit])

![Animated image showing a window that is opened with a spinning cursor on top](winit-bug-1.gif)
_This cursor may be waiting [in vain], but your patience shall be rewarded._

[glutin] is a low-level library for OpenGL context creation, written in pure Rust.
[glutin] uses and re-exports [winit], which handles window creation and management,
as well as various input devices.

This month, glutin 0.27.0 was released, which makes glutin use the latest version
of winit (0.25.0), which was released around a month prior to glutin 0.27.0. Usually,
we try to keep glutin synced with winit, but we couldn't quite manage to do it this
time since the person who'd usually take responsibility for releasing a new version
of glutin was unavailable, and no-one had the role of "back-up releaser".
[@maroider] has offered to fill this role for now.

The upgrade to winit 0.25.0 brings with it a slew of bufixes, a couple of new
features, and a single breaking change to
[`WindowBuilderExtMacOS::with_activation_policy`], which has been replaced by
[`EventLoopExtMacOS::set_activation_policy`]. For a full list of changes, refer
to [winit's changelog].

The departure and disappearance of a couple of maintainers has left winit in need
of someone knowledgeable with X11 in order to review pull requests and address
various issues. Other backends also need some more love, but X11 is the most
pressing.

The project could also use more helping hands in general, in anything from
mapping out platform differences and triaging bugs to reviewing PRs
and tackling outstanding issues.
The current maintainers would also be happy to have you even if
all you do is answer platform-specific questions for them.
If you're interested, come say hi in their [matrix] channel or on
any of the [other services] bridged with matrix.

[in vain]: https://github.com/rust-windowing/winit/issues/1682
[glutin]: https://github.com/rust-windowing/glutin
[winit]: https://github.com/rust-windowing/winit
[@maroider]: https://github.com/maroider
[`WindowBuilderExtMacOS::with_activation_policy`]: https://docs.rs/winit/0.24.0/x86_64-apple-darwin/winit/platform/macos/trait.WindowBuilderExtMacOS.html#tymethod.with_activation_policy
[`EventLoopExtMacOS::set_activation_policy`]: https://docs.rs/winit/0.25.0/x86_64-apple-darwin/winit/platform/macos/trait.EventLoopExtMacOS.html#tymethod.set_activation_policy
[winit's changelog]: https://github.com/rust-windowing/winit/blob/master/CHANGELOG.md#0250-2021-05-15
[matrix]: https://matrix.to/#/#Glutin:matrix.org
[other services]: https://github.com/rust-windowing/winit#contact-us

### [wgpu] family re-union

![wgpu family reunion](wgpu-family-reunion.svg)

[wgpu] is a [WebGPU] implementation in Rust. It is safe, efficient,
and portable: it can target both native and the Web.

[Family reunion] is by far the biggest change in `wgpu` project since
the inception. First, the Rust API of [wgpu-rs] was moved to the main
[wgpu] repository. Second, the whole base was relicensed under MIT/Apache2.

[gfx-hal] - the Vulkan Portability-like graphics API abstraction -
was detached from the project. Instead `wgpu` got its own in-house unsafe
abstraction called "wgpu-hal" developed within the [wgpu] repository.

The team released [wgpu-0.9] right before this transition, to give the new
graphics infrastructure more time to take shape. At the time of writing,
supported backends on the new HAL include Vulkan, Metal, and OpenGL ES3.

Finally, the testing infrastructure received a major upgrade. It started
rendering the examples on the available adapters and compraring the results
with reference images.
This includes automatic testing using software adapters on CI.

[wgpu]: https://github.com/gfx-rs/wgpu
[wgpu-rs]: https://github.com/gfx-rs/wgpu-rs
[gfx-hal]: https://github.com/gfx-rs/gfx
[wgpu-0.9]: https://crates.io/crates/wgpu/0.9.0
[Family reunion]: https://github.com/gfx-rs/wgpu/milestone/9?closed=1

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
[/r/rust](TODO),
[twitter](TODO).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
