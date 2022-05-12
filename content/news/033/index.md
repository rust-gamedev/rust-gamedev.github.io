+++
title = "This Month in Rust GameDev #33 - April 2022"
transparent = true
date = 2022-05-01
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 33rd issue of the Rust GameDev Workgroup's
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

- [Rust GameDev Meetup](#rust-gamedev-meetup)
- [Game Updates](#game-updates)
- [Engine Updates](#engine-updates)
- [Learning Material Updates](#learning-material-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Popular Workgroup Issues in Github](#popular-workgroup-issues-in-github)
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

## Rust GameDev Meetup

![Gamedev meetup poster](gamedev-meetup.png)

The 15th Rust Gamedev Meetup took place in April. You can watch the
recording of the meetup [here on Youtube][gamedev-meetup-video]. The meetups
take place on the second Saturday every month via the [Rust Gamedev Discord
server][rust-gamedev-discord] and are also [streamed on
Twitch][rust-gamedev-twitch]. If you would like to show off what you've been
working on at the next meetup on [May 14th][rust-meetup-time], fill out
[this form][gamedev-meetup-form].

[gamedev-meetup-video]: https://youtu.be/okWFrfaaADs
[rust-gamedev-discord]: https://discord.gg/yNtPTb2
[rust-gamedev-twitch]: https://twitch.tv/rustgamedev
[rust-meetup-time]: https://everytimezone.com/s/1baaa280
[gamedev-meetup-form]: https://forms.gle/BS1zCyZaiUFSUHxe6

## Game Updates

### [Way of Rhea][wor]

![way of rhea capsule image](wor-capsule.jpg)

[Way of Rhea][wor] is a puzzle adventure with hard puzzles and forgiving
mechanics being produced by [@masonremaley][wor-mason-remaley] in a custom Rust
engine. It has a demo available [on Steam][wor].

Way of Rhea was recently [shown off at PAX East!][wor-pax] A
[minor patch][wor-update] has been released to the demo with post-PAX fixes:

- An issue that made the last puzzle in the third forest level difficult to
navigate with a controller was worked around
- Colliders in the Hermes puzzle were fixed (previously you cold land on top of
a gate if you held left while sliding)
- The attract mode that was used at PAX has been merged (not in demo)
- More jungle biome scenery has been placed (not in demo)
- A crash at startup on CPUs that don't support the `andn` instruction was fixed
(part of the BMI extension to x64)
- The game can now generate mini dumps on Windows and Linux in the event that it
crashes and if given consent, forward them to the developer for analysis

You can stay up to date with the latest Way of Rhea developments by
[following it on Steam][wor], signing up for [their mailing list][wor-newsletter],
or joining [their Discord][wor-discord].

[wor]: https://store.steampowered.com/app/1110620/Way_of_Rhea/?utm_campaign=tmirgd&utm_source=n33
[wor-pax]: https://twitter.com/AnthropicSt/status/1517129411790843905
[wor-update]: https://steamcommunity.com/games/1110620/announcements/detail/3175611379276019942?utm_campaign=tmirgd&utm_source=n32&utm_content=news
[wor-mason-remaley]: https://twitter.com/masonremaley
[wor-newsletter]: https://www.anthropicstudios.com/newsletter/signup
[wor-discord]: https://discord.gg/JGeVt5XwPP

### BITGUN

![BITGUN gameplay](bitgun-release-optimized.gif)
_BITGUN gameplay_

[BITGUN] ([Discord], [Twitter]) by [@darth] and [@shosanna]
is an action roguelite zombie shooter with difficult and
satisfying combat you can learn and master.
Guns break quickly and you lose all your gear when you die.

The game was just released on Steam!
It has been developed by a programming duo
called LogLog Games.
They have been working on it for the past year and it is
their biggest game so far (they also have 2 smaller games).
[BITGUN] is writen in Godot Engine but it is using
Rust language extensively (it has around 7500 lines of Rust
and 4200 lines of GDScript).

The main changes from the demo version of the game:

- New missions added with extra difficulty
- Improved AI which doesn't just chase the player but behaves unpredictably
- New zombie types - ranged zombie, big spider, zombie spawner
- Added comic-book style story
- Improved tutorial and new player experience
- Reworked inventory system with simplified armor

_Discussion: [/r/rust](https://www.reddit.com/r/rust/comments/uepde7/after_working_on_our_godot_rust_game_fulltime_for/)_

[BITGUN]: https://store.steampowered.com/app/1673940/BITGUN/
[Twitter]: https://twitter.com/LogLogGames
[Discord]: https://discord.com/invite/XrGZQkq
[@shosanna]: https://github.com/shosanna
[@darth]: https://github.com/darthdeus

### [Veloren][veloren]

![Riding at night](veloren.jpg)
_Out for a ride at night_

[Veloren][veloren] is an open world, open-source voxel RPG inspired by Dwarf
Fortress and Cube World.

For April Fool's day, Veloren made a post about a new direction; [Need for
Voxels: Veloren Cart][veloren-cart]. Enjoy the read! Veloren also participated
in Reddit's /r/place, and got a small place right below /r/rust. Several months
of project finances were processed, and [discussed in a blog
post][veloren-finances]. The [Veloren Reading Club saw its 8th
episode][veloren-reading-club-8], which was on the topic of graphics and
particles. A [second Veloren Code Review session][veloren-code-review-2] was
held, in which two developers went through a merge request that focused on
combat numbers.

Work was done to improve how loadouts work, specifically surrounding inheritance
from other configs. Tweaks were made to arthropods, which should make them more
fun to fight. Work is being done to prepare for the 0.13 release, with a custom
map being built, and a special treasure map being created for the launch party.
Player bank storages are being developed, which will allow players to store
excess items in towns.

April's full weekly devlogs: "This Week In Veloren...":
[#166][veloren-166],
[#167][veloren-167],
[#168][veloren-168],
[#169][veloren-169].

[veloren]: https://veloren.net

[veloren-cart]: https://veloren.net/veloren-direction/
[veloren-finances]: https://veloren.net/devblog-167#finances-by-angelonfira
[veloren-reading-club-8]: https://www.youtube.com/watch?v=ff9EXhCXmFY
[veloren-code-review-2]: https://www.youtube.com/watch?v=keI0VpjkgZg

[veloren-166]: https://veloren.net/devblog-166
[veloren-167]: https://veloren.net/devblog-167
[veloren-168]: https://veloren.net/devblog-168
[veloren-169]: https://veloren.net/devblog-169

### Oasis of Lost Hope

![Oasis of Lost Hope](oasis-of-lost-hope.jpg)

Oasis of Lost Hope is a game where fertile ground is steadily consumed by dark,
barren land called blight. Water helps defend an area from being consumed, but
reserves are finite. The player needs to collect ore to build more irrigation
towers and delay doom for a few more seconds. Yet one thing is certain: the
days of fertile land are counted.

The game is an entry for the Ludum Dare 50 Jam, the theme of which was "Delay
the Inevitable". It has been developed by setzer22 and Bromeon and
[open-sourced on GitHub][oasis-gh]. The game is built on top of godot-rust
alongside GDScript. The Rust language is not exactly known for fast
prototyping, but with a slightly less safety-conservative fork of godot-rust,
the game jam experience was surprisingly smooth. When modeling mechanics such
as the expanding blight or the water pipe network, Rust really showed its
strength as a strongly typed and fast language.

[oasis-gh]: https://github.com/Bromeon/LudumDare50

### [Extremely Extreme Sports][ees-itch]

![Extremely Extreme Sports](extremely-extreme-sports.gif)

[Extremely Extreme Sports][ees-itch] ([GitHub][ees-github],
[Discord][ees-discord]) is a multiplayer online downhill racing game [made for
Ludum Dare 50 game jam][ees-ldjam], scored top 3 in fun. Explode the mountain,
and race against the avalanche as well as your friends.

Features:

- Online multiplayer
- Character customization
- Emoting
- A little bit of gameplay

Developed by [@kuviman] using [custom engine][ees-geng]. A [postmortem blog
post][ees-postmortem] was written about the jam experience, and it includes
postjam updates.

_Discussions: [/r/rust_gamedev][ees-reddit]_

[ees-ldjam]: https://ldjam.com/events/ludum-dare/50/extremely-exteme-sports
[ees-itch]: https://kuviman.itch.io/extremely-extreme-sports
[ees-github]: https://github.com/kuviman/extremely-extreme-sports
[ees-geng]: https://github.com/kuviman/geng
[ees-postmortem]: https://kuviman.itch.io/extremely-extreme-sports/devlog/372532/extremely-extreme-sports-postmortem
[ees-reddit]: https://www.reddit.com/r/rust_gamedev/comments/u9zqrc/scored_top_3_in_fun_with_my_ludum_dare_game/
[ees-discord]: https://discord.gg/DZaEMPpANY
[@kuviman]: https://github.com/kuviman

## Engine Updates

### [Bevy v0.7][bevy-blog]

![bevy mushroom](bevy_mushroom.jpg)
_Creative Commons 'Stylized mushrooms' scene by QumoDone rendered in Bevy._

[Bevy][bevy] is a refreshingly simple data-driven game engine built in Rust. It is
[free and open source][bevy-git] forever!

Bevy 0.7 was a massive community effort. You can check out the
[full release blog post here][bevy-blog], but here are some highlights:

- [Skeletal animation and mesh skinning][bevy-animation]
- [GLTF animation importing][bevy-gltf]
- [Unlimited* point lights in a scene][bevy-unlimited]
- [Improved clustered forward rendering: dynamic/adaptive clustering and faster, more accurate cluster assignment][bevy-light-opt]
- [Compressed texture support (KTX2 / DDS / .basis): load more textures in a scene, faster][bevy-compressed]
- [Compute shader / pipeline specialization: Bevy's flexible shader system was ported to compute shaders, enabling hot-reloading, shader defs, and shader imports][bevy-compute]
- [Render to texture: cameras can now be configured to render to a texture instead of a window][bevy-render-texture]
- [Flexible mesh vertex layouts in shaders][bevy-vertex]
- [ECS improvements: Order systems using their names, Query::many_mut, use conflicting parameters in systems via ParamSets, WorldQuery derives][bevy-ecs]
- [Documentation improvements: better examples, more doc tests and more coverage][bevy-docs]
- [More audio control: pause, volume, speed, and looping][bevy-audio]
- [Power usage options to enable only updating Bevy Apps when input occurs][bevy-power]

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/u4e63h/bevy_07/),
[Hacker News](https://news.ycombinator.com/item?id=31043668),
[Twitter](https://twitter.com/cart_cart/status/1515031150313443332)_

[bevy]: https://bevyengine.org
[bevy-git]: https://github.com/bevyengine/bevy
[bevy-blog]: https://bevyengine.org/news/bevy-0-7
[bevy-animation]: https://bevyengine.org/news/bevy-0-7/#skeletal-animation
[bevy-gltf]: https://bevyengine.org/news/bevy-0-7/#gltf-animation-importing
[bevy-unlimited]: https://bevyengine.org/news/bevy-0-7/#unlimited-point-lights
[bevy-light-opt]: https://bevyengine.org/news/bevy-0-7/#light-clustering-features-and-optimizations
[bevy-compressed]: https://bevyengine.org/news/bevy-0-7/#compressed-gpu-textures
[bevy-compute]: https://bevyengine.org/news/bevy-0-7/#bevy-native-compute-shaders
[bevy-render-texture]: https://bevyengine.org/news/bevy-0-7/#render-to-texture
[bevy-vertex]: https://bevyengine.org/news/bevy-0-7/#flexible-mesh-vertex-layouts
[bevy-ecs]: https://bevyengine.org/news/bevy-0-7/#ergonomic-system-ordering
[bevy-docs]: https://bevyengine.org/news/bevy-0-7/#documentation-improvements
[bevy-audio]: https://bevyengine.org/news/bevy-0-7/#audio-control
[bevy-power]: https://bevyengine.org/news/bevy-0-7/#eventloop-power-saving-modes

### Dims

![dims foliage](dims.jpg)
_Foliage rendering in Dims_

Dims is an open world creation platform.

In their latest [dev log][dims-dev-log] they
demonstrate a new foliage rendering and spawning system, which automatically
spawns foliage and trees based on "habitat rules". This means a user
can simply "paint" a world and it will get populated with plants and rocks
automatically.

They are also planning to host a screenshot competition in the next few weeks
for anyone who would like to try out the platform and create their own
landscapes. Sign up for the newsletter on their website to get notified when
it starts!

_Discussions:
[Foliage rendering on reddit][dims-foliage],
[Erosion tool on reddit][dims-erosion-tool]_

[Website]: https://dims.co
[Twitter]: https://twitter.com/DimsWorlds
[Discord]: https://discord.gg/Z5CAVmNE57
[dims-dev-log]: https://www.youtube.com/watch?v=jgkhsY8aZO8
[dims-foliage]: https://www.reddit.com/r/rust_gamedev/comments/ujhr3c/the_start_of_a_tool_that_lets_you_tweak_how_and/
[dims-erosion-tool]: https://www.reddit.com/r/rust_gamedev/comments/tuj9dg/far_from_finished_but_heres_our_terrain_tool/

### [Eldiron]

![Eldiron Image](eldiron_screen.png)
_Behavior Nodes of Eldiron_

[Eldiron] ([GitHub](https://github.com/markusmoenig/Eldiron), [Discord](https://discord.gg/ZrNj6baSZU),
[Twitter](https://twitter.com/MarkusMoenig)) by [@markusmoenig](https://github.com/markusmoenig)
is a creator for classic role playing games (RPGs) written in Rust.

Eldiron v0.5 features inbuild tile maps, a node based behavior system
and region editors.

Development Updates in April:

- Support for 4 layers of tiles for game regions.
  This enables transparency and support for top-down and isometric views.
- Game regions can now contain named areas.
- Areas can contain behavior nodes to spawn monsters, lay traps or
  displace tiles (for example to open a door).
- New "Systems" module to create behavior for Combat and soon for Crafting,
  Magic and more. System behavior trees can be called from any character.

Eldiron v1 will be able to create any kind of RPG utilizing square tiles,
like the classical Ultima series.

[Eldiron]: https://www.eldiron.com

### [Hotham][hotham]

![Hotham Image](hotham.png)
_Screenshot from The Station, an upcoming space station simulaton game, built
with Hotham_

[Hotham][hotham] is a game engine for standalone VR devices, trying to make VR
development just a little bit less painful.

0.2 has been released with some _breathtaking_ maintenance and performance
improvements that make Hotham marginally easier to use. If you're interested in
Rust and VR and haven't checked out the project already, now is an excellent
time to do so.

A huge thank you to our sponsors and contributors (big hat-tip to @jmgao) and
the wonderful members of the [Hotham discord][hotham-discord].

[hotham]: https://github.com/leetvr/hotham
[hotham-discord]: https://discord.gg/SZEZUX6ZsQ

## Learning Material Updates

### [Game Development with Rust and WebAssembly][wasm-gamedev]

![Game Development with Rust and WebAssembly Book Cover](game-development-rust-webassembly.png)

[Game Development with Rust and WebAssembly][wasm-gamedev] by
Eric Smith (a.k.a [@paytonrules][wasm-gamedev-twitter])
was published in April. It takes a tutorial approach to leading the reader
through building an endless runner using Rust and WebAssembly. You can play
the completed game [here][wasm-gamedev-game].

From the summary: This book is an easy-to-follow reference to help you develop
your own games, teaching you all about game development and how to create an
endless runner from scratch. You'll begin by drawing simple graphics in the
browser window, and then learn how to move the main character across the screen.
You'll also create a game loop, a renderer, and more, all written entirely in
Rust. After getting simple shapes onto the screen, you'll scale the challenge by
adding sprites, sounds, and user input. As you advance, you'll discover how to
implement a procedurally generated world. Finally, you'll learn how to keep your
Rust code clean and organized so you can continue to implement new features and
deploy your app on the web.

_Discussions: [Twitter][wasm-gamedev-twitter], [Discord](https://discord.gg/EjAunSbpdV)_

[wasm-gamedev]: https://subscription.packtpub.com/product/game_development/9781801070973
[wasm-gamedev-twitter]: https://www.twitter.com/paytonrules
[wasm-gamedev-game]: https://rust-games-webassembly.netlify.app

### [Why I choose to build my game from scratch][why-article]

[@HeavyRain266] published an article, '[Why I choose to build my game from scratch][why-article]',
a short story about their implementation of the game 'Forbidden Valley'
from scratch in Rust. The author aims to show how much you can learn
from building your dream game without the help of any game engine.

_Discussions: [r/rust_gamedev][why-article]_

[@HeavyRain266]: https://github.com/HeavyRain266
[why-article]: https://www.reddit.com/r/rust_gamedev/comments/uewu9h/reasons_why_i_choose_to_build_my_game_from/

## Tooling Updates

### [Vismut 0.5][vismut-0.5]

![Logo](vismut.png)

[Vismut] ([GitLab][Vismut], [Zulip][vismut-zulip]) by [@lukors]
will be a procedural texturing tool.

[Version 0.5][vismut-0.5] contains a brand new backend to create a better base
for future improvements. A [blog post][vismut-blog] describes the differences
between the old and the new architecture.

[@lukors]: https://gitlab.com/lukors
[vismut-0.5]: https://gitlab.com/vismut-org/vismut/-/releases/v0.5.0
[Vismut]: https://gitlab.com/vismut-org/vismut
[vismut-zulip]: https://vismut.zulipchat.com
[vismut-blog]: https://orsvarn.com/vismut-architecture/

### [Graphite][graphite-website]

![Graphite](graphite.png)

Graphite ([website][graphite-website], [GitHub][graphite-repo],
[Discord][graphite-discord], [Twitter][graphite-twitter]) is a free
in-development raster and vector 2D graphics editor. It will be powered by a
node graph compositing engine that supercharges your layer stack, providing a
completely non-destructive editing experience.

The past month's Sprint 14 has focused on further editor features and UX
improvements:

- **It's your type:** The Text tool now provides over 1400 fonts with
bold/italic styles from the Google Fonts library.

- **Oh snap!:** A refactor and polish pass on the snapping system provides
better clarity and consistency. And shapes now have outlines on hover and
selection for easier targeting.

- **Have a dialog:** Supported by a refactor that moved dialog layouts into the
Rust backend, users can now create new documents of specified sizes and export
artwork as PNG/JPG with new File menu dialogs.

- **Pack it up:** The web component of the stack was finally upgraded to
Webpack 5 which cleans up a mess of outdated dependencies.

[Open the editor][graphite-live-demo] in your browser and give it a try.

[graphite-website]: https://graphite.rs
[graphite-repo]: https://github.com/GraphiteEditor/Graphite
[graphite-discord]: https://discord.graphite.rs
[graphite-twitter]: https://twitter.com/GraphiteEditor
[graphite-live-demo]: https://editor.graphite.rs

## Library Updates

### [Notan v0.3.0][Notan]

![notan](notan.jpeg)

[Notan] is a simple and portable layer designed to create your own multimedia
apps on top of it without worrying about platform-specific code.

The main goal is to provide a set of APIs and tools that can be used to create
your project in an ergonomic manner without enforcing any structure or pattern,
always trying to stay out of your way. The idea is that you can use it as a
foundation layer or backend for your next app, game engine, or game.

The latest version [v0.3.0] comes with audio support for all platforms
using as default backend [oddio] and [symphonia].

[Notan]: https://github.com/Nazariglez/notan
[v0.3.0]: https://github.com/Nazariglez/notan/releases/tag/v0.3.0
[oddio]: https://github.com/Ralith/oddio
[symphonia]: https://github.com/pdeljanov/Symphonia

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
