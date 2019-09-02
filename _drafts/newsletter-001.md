---
title: "This Month in Rust GameDev #1 - August 2019"
---

Welcome to the inaugural issue of the Rust Game Development Workgroup’s
monthly (hopefully!) newsletter.

[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.

We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun

## News and Blog Posts

<!--
8-12 important news with their own sections.

Ideal section structure is:
- image/GIF,
- a paragraph or two with a summary and useful links,
- and discussion links.

If needed, section can be split into subsections with "------" delimiter.
-->

### [Survey from the Rust GameDev Working Group][survey] 📋

Interested (maybe already invested?) in using Rust for game development?
Please set aside a brief moment to answer this short survey about
the current state of our GD ecosystem and what the GD working group
can do to nurture it. 🌱

While we'd greatly appreciate a modicum of identifying information
so we can easily connect with you for further discussions,
sharing that information is optional.
Only 3 questions in this survey are mandatory and we've saved
the most important one for last.

The survey is soft-closed now
as existing responses are being processed for publishing,
but we’re still accepting responses until the survey
has been publishes & subsequently closed for good.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/cp2ib7/survey_from_the_rust_game_development_working/),
[twitter](https://twitter.com/rust_gamedev/status/1160659441550864384)_

[survey]: https://users.rust-lang.org/t/survey-from-the-rust-game-development-working-group/31270

------

Also, check out our previous post
["Introducing the Rust Game Development Working Group"][introducing-wg]
if you haven't seen it yet
\[[/r/rust](https://reddit.com/r/rust/comments/cs44vx/introducing_the_rust_game_development_working),
[twitter](https://twitter.com/rust_gamedev/status/1163137574812209152)].

[introducing-wg]: https://rust-gamedev.github.io/2019/08/18/introducing-the-rust-game-development-working-group.html

### [This Month in Rustsim \#7 (June − July 2019)][rustsim_7]

![CCD sub-steps](/assets/newsletter-001/ccd_substeps.svg)

[nphysics] 0.12 release contains several long awaited features:

- The support for linear and non-linear _continuous-collision detection (CCD)_
  with colliders on rigid bodies and sensors.
  There's [a brand new page of the user guide][ccd guide] about it.
- Rigid body _velocity damping_: this allows to artificially
  slow down some bodies. This is essential for, e.g.,
  top-down 2D games where traditional coulomb friction cannot be used.
- Rigid body _maximum velocity_ limit: it is possible to force a rigid body
  to never get a velocity higher than a threshold.
- The possibility to use _custom containers_ for bodies,
  colliders, joints, and force generators.
  This helps overcoming some difficulties related to borrowing,
  and also help for the integration of nphysics with other solutions.
  The physics world structures will no longer own those containers.

With [ncollide] 0.20, it is now possible to compute the time of impact
between two shapes undergoing an arbitrary rigid motion.
This is known as non-linear time-of-impact computation.
This is used by the new CCD integration on nphysics 0.12.

Watch [a "CCD support on nphysics 0.12" video][ccd youtube]
or [play with the online demo yourself][nphysics examples]
(choose "CCD" in the "Select example" menu).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/cmxdyk/this_month_in_rustsim_7_june_july_2019_nphysics),
[twitter](https://twitter.com/rust_gamedev/status/1160659441550864384)_

[rustsim_7]: https://www.rustsim.org/blog/2019/08/01/this-month-in-rustsim
[nphysics]: https://nphysics.org
[ncollide]: https://ncollide.org
[ccd guide]: https://www.nphysics.org/continuous_collision_detection
[ccd youtube]: https://youtube.com/watch?v=EnjgJp9mKz0
[nphysics examples]: https://nphysics.org/demo_all_examples3

------

Also, check out ["About the future of nphysics: a pure rust 2D and 3D real-time physics engine"][future]
\[[/r/rust](https://reddit.com/r/rust/comments/cm2858/about_the_future_of_nphysics_a_pure_rust_2d_and)].

[future]: https://www.patreon.com/posts/about-future-of-28917514

### Way of Rhea [Trailer][rhea trailer] and [Steam Wishlist][rhea steam] Announced

[![Part of the trailer](/assets/newsletter-001/way-of-rhea.gif)][rhea trailer]

^ _click on the GIF to see [the full trailer][rhea trailer]_

[A new trailer][rhea trailer] and the [Steam wishlist][rhea steam]
were published for "Way of Rhea" by [Anthropic Studios].

Way of Rhea is an upcoming puzzle platformer that takes place in a world
where you can only interact with objects that match your current color.

Take a look at [this Reddit comment][rhea notes] with a quick summary
about implementation and tooling.

_Discussions:
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/co8kqd/way_of_rhea_trailer_steam_wishlist_announced),
[twitter](https://twitter.com/AnthropicSt/status/1159867047821611010)_

[Anthropic Studios]: https://anthropicstudios.com
[rhea steam]: https://store.steampowered.com/app/1110620/Way_of_Rhea
[rhea trailer]: https://youtube.com/watch?v=VIzqlI-gbAY
[rhea notes]: https://reddit.com/r/rust_gamedev/comments/co8kqd/way_of_rhea_trailer_steam_wishlist_announced/ewryjet

### [Veloren 0.3](https://veloren.net/devblog-27)

![Veloren screenshot](/assets/newsletter-001/veloren.png)

Veloren is an open-world, open-source multiplayer voxel RPG.
The game is in an early stage of development, but is playable.

The 0.3 version was a long time coming, and there has been a ton added to Veloren.
Here is a small list of the major changes in this version:

- XP and leveling
- Better combat, movement, and animations
- Enemies, bosses
- Better world generation, more biomes
- Build mode
- Caves, lanterns, lights, dungeons
- Character customization, multiple races
- Inventories (WIP)
- Day/night, better shaders, voxel shadows
- Many performance optimizations

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/clziyh/veloren_03_the_multiplayer_voxel_rpg_written_in)_

------

Also, if you want to see how the work on 0.4 is going,
check out other August's weekly devlog posts:
"This Week in Veloren..."
[#28](https://veloren.net/devblog-28),
[#29](https://veloren.net/devblog-29),
and [#30](https://veloren.net/devblog-30).

### [RUZZT]

![RUZZT screenshot](/assets/newsletter-001/ruzzt.png)

[@yokljo] published [RUZZT] - a [ZZT] game engine clone written in Rust.

> My wife and I wrote this as a fun exercise, and went a lot further with it
> than originally anticipated. We wanted to try to replicate the original
> game's behaviour by simply looking at it running in Dosbox and seeing
> if we could make RUZZT do the same thing.
> This means the code architecture is likely very different
> from the original game.
>
> Eventually we did get far enough that it seemed like a waste of time
> to try to guess how some specific things were implemented,
> so we used a disassembler to make sure various behaviours worked correctly.

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/cl9qhk/ruzzt_a_zzt_game_engine_clone_written_in_rust)_

[RUZZT]: https://github.com/yokljo/ruzzt
[ZZT]: https://en.wikipedia.org/wiki/ZZT
[@yokljo]: https://github.com/yokljo

### [oxygengine-navigation] - Navmesh Pathfinding System for ECS Games

![oxygengine-navigation interactive demo](/assets/newsletter-001/oxygengine-navigation-demo.gif)

[oxygengine-navigation] is a crate to perform pathfinding
on [navmeshes][navmesh wiki].
It's an ECS module (compatible with any SPECS engine)
and is a part of a bigger [Oxygen game engine][oxygengine].

Here's a [demo/example of the integration with Amethyst][oxygengine amethyst demo].

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/co62an/navmesh_based_navigation_system_for_ecs_games),
[twitter](https://twitter.com/PsichiX/status/1159895167392002048)_

[navmesh wiki]: https://en.wikipedia.org/wiki/Navigation_mesh
[oxygengine]: https://github.com/PsichiX/oxygengine
[oxygengine-navigation]: https://github.com/PsichiX/Oxygengine/tree/master/oxygengine-navigation
[oxygengine amethyst demo]: https://github.com/PsichiX/Oxygengine/tree/master/demos/amethyst-integration

### [Amethyst's Activity Report][amethyst news]

![amethyst logo](/assets/newsletter-001/amethyst-logo.png)

- [Amethyst v0.12 quietly released](https://github.com/amethyst/amethyst/releases/tag/v0.12.0)
  and now the project moves to two-week release cycle.
- 2D action platformer [Space Menace] by [@krankur] partnered with Amethyst
  to become an official showcase project
  ([announcement][space menace announcement]).

  ![Space Menace screenshot](/assets/newsletter-001/space-menace.png)
- [Evoli] released [v0.2](https://github.com/amethyst/evoli/releases/tag/v0.2.0)
  and [moved into 3D](https://community.amethyst.rs/t/evoli-v0-2-video-log-retrospective/1007).

  ![Evlovi screenshot](/assets/newsletter-001/evoli-shot.png)
- New tools for 2D game development:
  [the Sheep spritesheet packer and Amethyst 2D Starter](https://amethyst.rs/posts/tools-for-2d-games).
- Scripting support [edges closer](https://community.amethyst.rs/t/scripting-what-do-we-need-to-get-there/958).
- Learning from Legion: [an ECS design discussion](https://community.amethyst.rs/t/legion-ecs-discussion/965).
- [Arsenal](https://github.com/katharostech/arsenal) - a Blender game engine
  built on Amethyst and Rust ([announcement][arsenal announcement]).
- [amethyst-imgui](https://github.com/amethyst/amethyst-imgui) and
  [Laminar](https://github.com/amethyst/laminar)
  (a semi-reliable UDP-based protocol for multiplayer games) steadily mature.
- [Rendy](https://github.com/amethyst/rendy) (rendering engine) is well
  [on its way towards web and OpenGL support](https://twitter.com/AmethystEngine/status/1159765804205957120).
- Atelier Editor underwent some [visual planning](https://github.com/amethyst/atelier-editor/issues/21).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/coh2hy/amethyst_activity_report_july_2019),
[twitter](https://twitter.com/AmethystEngine/status/1160992752341016576)_

[@krankur]: https://github.com/krankur
[Space Menace]: https://github.com/amethyst/space-menace
[Evoli]: https://github.com/amethyst/evoli
[amethyst news]: https://amethyst.rs/posts/activity-report-july-2019
[space menace announcement]: https://amethyst.rs/posts/space-menace-showcase
[arsenal announcement]: https://community.amethyst.rs/t/arsenal-the-vision-for-a-full-amethyst-blender-integration/911

------

A few days ago a third showcase project
[was announced](https://amethyst.rs/posts/third-showcase-game-space-shooter):
["Space Shooter"](https://github.com/amethyst/space_shooter_rs)
by [Carlo Supina](https://twitter.com/carlosupina)
\[[/r/rust](https://www.reddit.com/r/rust/comments/cwy4qq/amethyst_showcase_space_shooter_shootem_up),
[twitter](https://twitter.com/carlosupina/status/1167094848907808768)].

!["Space Shooter" gameplay](/assets/newsletter-001/amethyst-space-shooter.gif)

### [Embark's Rust Open-Source Crates and Ecosystem Tracking](http://embark.rs)

![Embark logo](/assets/newsletter-001/embark-logo-bg.jpg)

A quote from the announcement:

> We've put together a tracking page for our Rust open source work,
> future ideas/plans, and issues that we've run into and want to improve on.
>
> [embark.rs](http://embark.rs)
>
> It is still pretty early, but hope it can be useful or of interest
> to see what we, a commercial games company,
> is planning and thinking about Rust.
>
> We are also open to collaborate with other companies or individuals,
> as well as sponsoring more open source work to improve and support the ecosystem.
> Feel free to reach out to us here or on
> [opensource@embark-studios.com](mailto:opensource@embark-studios.com)!

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/cr73zz/embarks_rust_open_source_crates_and_ecosystem),
[twitter](https://twitter.com/repi/status/1162361431355994112)_

[rust40]: https://www.youtube.com/watch?v=A3AdN7U24iU

------

Also, Embark has recently open-sourced [physx-rs] - [PhysX] bindings to Rust.

!["ball" example](/assets/newsletter-001/physx-example.png)

> Quite complex big C++ project to build & bind to ([@h3r2tic] did some magic).
> Eventually want full native Rust lib but PhysX is
> feature rich & performant today so nice to be able to use it!

_Discussions:
[/r/rust](https://old.reddit.com/r/rust/comments/cqbhif/embarkstudiosphysxrs_rust_binding_and_wrapper_for/),
[twitter](https://twitter.com/repi/status/1161645313532280835)_

[physx-rs]: https://github.com/EmbarkStudios/physx-rs
[PhysX]: https://github.com/NVIDIAGameWorks/PhysX
[@h3r2tic]: https://github.com/h3r2tic

### [6 Months of Game Development in Rust](https://iolivia.me/posts/6-months-of-rust-game-dev)

![screenshot from Olivia's game](/assets/newsletter-001/iolivia-screenshot.png)

[@oliviff] tells about theirs experience of developing a hobby game
"Tennis Academy" in Rust for six months.

Here's [a YouTube video](https://www.youtube.com/watch?v=96qPwvDEAuI)
with the current state of the game.

Features of the game:

- 💵money: every item costs money and the money is substracted
  when buying an item
- 👟tennis courts of all types: hard, clay, concrete and grass
- 🎁more object types: benches, balls, roof tiles
- ⏱️time: the game keeps track of how many days/months/years it's been
- 🌶️main menu
- 🏠build menu
- ⛹️player selection menu
- ↩️assignments: a player can be assigned to a court or a bench
- 🛣️basic pathfinding: a player can find its way to an assigned
  court or bench
- 📈skill levels: a player playing on a court will get increased
  tennis skill level
- 🛌needs: a player who plays too much will get tired and need rest

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/ctuocb/6_months_of_game_development_in_rust),
[twitter](https://twitter.com/oliviff/status/1164460622186274817)_

[@oliviff]: https://twitter.com/oliviff

### [luminance 0.31](https://phaazon.net/blog/luminance-0.31)

[luminance] is a type-safe, type-level and stateless Rust graphics framework.

luminance v0.31 was released by [@phaazon].
This version brings [LOTS of major changes and bugfixes][luminance changelog],
including two new crates:

- [luminance-derive](https://crates.io/crates/luminance-derive) -
  provides several procedural derive macros you can use to easily implement
  all required traits to work with luminance.
  Especially, some traits that are unsafe can be implemented
  in a safe way with that crate.
- [luminance-glutin](https://crates.io/crates/luminance-glutin) -
  the windowing crate support for [glutin].

Also, two ways to learn luminance were added:

> - The [examples][luminance examples]. They are like unit tests:
>   each introduces and focuses on a very specific aspect or feature.
>   You should read them if you are interested in given feature.
>   They’re not well suited to learn from scratch
>   and they are weaker than a structured tutorial but more concise.
>
> - The [wiki](https://github.com/phaazon/luminance-rs/wiki).
>   It contains various chapters, including tutorials and onboarding newcomers.
>   It will not provide you with the best description of a given feature
>   as it focuses more on the overall comprehension and explaining
>   than code directly.

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/cx0syl/announcement_luminance031_luminancederive_and),
[twitter](https://twitter.com/phaazon_/status/1167064285643771910)_

[@phaazon]: https://github.com/phaazon
[luminance]: https://github.com/phaazon/luminance-rs
[luminance changelog]: https://github.com/phaazon/luminance-rs/blob/master/luminance/CHANGELOG.md#031
[glutin]: https://github.com/rust-windowing/glutin
[luminance examples]: https://github.com/phaazon/luminance-rs/blob/master/luminance/examples/README.md

### Other News

<!--
Special section for other news (up to 15) in a one-liner format:
- Main link,
- short summary,
- optional discussion links (in square brackets),
- optional small image.
-->

- [Vlad Zhukov](https://twitter.com/VladZhukov0) shared
  [theirs first Youtube devlog](https://youtu.be/7NojrtICE1k)
  about the development of an asteroids-like game
  [with Voronoi diagrams for procedural destructions](https://twitter.com/VladZhukov0/status/1162462543530643457).

  ![Gameplay of Vlad's prototype](/assets/newsletter-001/vlad-asteroinds-gameplay.gif)
- [Azriel] published a devlog ["Charging Up"] - characters in [Will] can now charge up
  by holding the Attack button.

  ![charging sprites from Will](/assets/newsletter-001/will-charging.png)
- [droprate](https://crates.io/crates/droprate) - a crate for choosing
  outcomes based on a weighted probability map,
  aka more player-friendly random numbers
  \[[/r/rust](https://reddit.com/r/rust/comments/co3buo/ann_droprate_a_crate_for_randomly_choosing_things)].
- ["Compare Against Your Friends"] - after the [1.0 release][roboinstructus 1.0]
  of [Robo Instructus], [Alex Butler] released a few more versions
  that fix some bugs, improve performance, scoring and UI.

  ![RoboInstructus logo from Steam](/assets/newsletter-001/roboinstructus.jpg)
- [@Remco](https://twitter.com/wodannson) shared on Twitter
  [a video of hot reloading demonstration](https://twitter.com/wodannson/status/1157472538622078976)
  \[[/r/rust](https://reddit.com/r/rust/comments/cldaew/hot_reloading_of_function_bodies_in_rust),
  [/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/cldajt/hot_reloading_of_function_bodies_in_rust/)].
- [rx](https://cloudhead.io/rx) - a minimalist and extensible pixel editor in Rust
  \[[/r/rust](https://www.reddit.com/r/rust/comments/cv6o4q/announcing_rx_minimalist_and_extensible_pixel),
  [repo](https://github.com/cloudhead/rx)].
- [gfx-hal v0.3](https://github.com/gfx-rs/gfx/) -
  new version of a low-overhead Vulkan-like GPU API for Rust, features:
  Debug trait bound on everything, MSAA resolves, events API,
  inclusive swapchain ranges, no "winit" dependency by default,
  cleaner graphics states, more exposed limits
  \[[/r/rust](https://www.reddit.com/r/rust/comments/cnvfrm/gfxhal03_release_notes)].

[Azriel]: https://azriel.im/
["Charging Up"]: https://azriel.im/will/2019/08/16/charging-up
[Will]: https://azriel91.itch.io/will
[Robo Instructus]: https://store.steampowered.com/app/1032170/Robo_Instructus
["Compare Against Your Friends"]: https://blog.roboinstruct.us/2019/08/02/better-than-your-friends.html
[Alex Butler]: https://twitter.com/bigabgames
[roboinstructus 1.0]: https://reddit.com/r/rust/comments/cdw1ct/robo_instructus_is_out_now_programming_puzzle

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

- [\#23 "[Needed Crate] A pure rust SPIRV generator"](https://github.com/rust-gamedev/wg/issues/23)
- [\#25 "The state of math libraries"](https://github.com/rust-gamedev/wg/issues/25)
- [\#26 "[Tracker] Better windowing/graphics inter-operation"](https://github.com/rust-gamedev/wg/issues/26)
- [\#42 "[Discussion] A plan for crate stewardship"](https://github.com/rust-gamedev/wg/issues/42)
- [rust-gamedev.github.io](https://github.com/rust-gamedev/rust-gamedev.github.io):
  - [\#2 "Newsletter"](https://github.com/rust-gamedev/rust-gamedev.github.io/issues/2) (so meta!)
  - [\#4 "Create a rust-gamedev.github.io site"](https://github.com/rust-gamedev/rust-gamedev.github.io/issues/4)

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

<!--
- The workgroup recommends crates to have a minimum supported rust version policy
- winit/raw-window-handle
- Web presence (Newsletter, arewegameyet.com)
-->

[See all meeting issues](https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting)
including full text notes or [join the next meeting][join].

## Requests for Contribution

- [winit](https://github.com/rust-windowing/winit):
  - [Issues tagged as "Good first issue" and “help wanted”][winit help wanted];
  - [Issues tagged as "Blocking a release"][winit blocking];
- [gfx-rs's "contributor-friendly" issues](https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly);

[winit help wanted]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[winit blocking]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22Blocking+a+release%22

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

![A Snake's Tale's logo](/assets/newsletter-001/a-snakes-tale-logo.png)

On 2017.07.06 one of the first commercial Rust games ["A Snake's Tale"]
by [Michael Fairley] was released:
[Steam][snake steam] (Windows/Linux/macOS),
[itch.io](https://m12y.itch.io/a-snakes-tale),
[AppStore](https://itunes.apple.com/us/app/a-snakes-tale/id1211845149?mt=8&at=1001lnX5),
[Google Play](https://play.google.com/store/apps/details?id=com.m12y.asnakestale).

> A Snake's Tale is a puzzle game about snakes in cramped places.
> Clear a path to get to the hole, eat some eggs along the way,
> and make sure to press all the buttons.

[![Part of A snake's Tail's trailer](/assets/newsletter-001/a-snakes-tail.gif)][snake trailer]

^ _click on the GIF to see [the full release trailer][snake trailer]_

A few posts about the game and how it was developed:

- ["I Made a Game in Rust"](https://michaelfairley.com/blog/i-made-a-game-in-rust),
- ["A Snake's Tale Postmortem"](https://michaelfairley.com/blog/a-snakes-tale-postmortem).

["A Snake's Tale"]: https://m12y.com/a-snakes-tale
[Michael Fairley]: https://twitter.com/michaelfairley
[snake steam]: https://store.steampowered.com/app/654810/A_Snakes_Tale
[snake trailer]: https://www.youtube.com/watch?v=23pQmEuueNw

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].

Also, subscribe to [@rust_gamedev on Twitter][@rust_gamedev]
or [/r/rust_gamedev subreddit][/r/rust_gamedev] if you want to receive fresh news!

<!-- TODO: Add real links and un-comment once post is published -->
<!-- **Discussions of this post**: [/r/rust](), [twitter](). -->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@rust_gamedev]: https://twitter.com/rust_gamedev
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
