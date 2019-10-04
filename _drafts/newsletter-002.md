---
title: "This Month in Rust GameDev #2 - September 2019"
---

<!-- TODO: Check the post with markdownlint-->

<!-- TODO: remove/wrap all raw links -->
<!-- TODO: hard wrap long lines -->

<!-- TODO: remove all discussion links that don't have much content -->

Welcome to the second issue of the Rust GameDev Workgroup’s
monthly newsletter.

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

If needed, a section can be split into subsections with a "------" delimiter.
-->

### [Roguelike Toolkit](TODO) 3.1 & [Rust Roguelike Tutorial](https://bfnightly.bracketproductions.com/rustbook)

![TODO: local, description](https://raw.githubusercontent.com/thebracket/rltk_rs/master/screenshots/RLTK_RS_EXAMPLE06.gif)

Chapter 11 (save/load) and Chapter 12 (delving deeper) of my
Rust Roguelike tutorial are now live.
Now with the correct hashtags, sorry about that.

<https://bfnightly.bracketproductions.com/rustbook/chapter_12.html>

My Rust Roguelike tutorial has grown to 20 chapters!
From "hello rust" and "what is an ECS?" to adding monsters, equipment,
multiple levels, bloodstains, particle effects and magic mapping scrolls.

[twitter](https://twitter.com/herberticus/status/1172202143253708800)

Chapter 21 of the Rust Roguelike Tutorial uses it to make
the main menu less boring!

<http://bfnightly.bracketproductions.com/rustbook/chapter_21.html>

------

<https://github.com/thebracket/rltk_rs>

(See example GIFs in the readme)

TODO: works with WASM

RLTK_RS, my Roguelike Toolkit Library for Rust hit version 0.3.0.
An embedded resource system, and adds Web Assembly (WASM32) support.
Examples are linked to browser WASM to try (Macs may be a problem)

<https://old.reddit.com/r/roguelikedev/comments/d737v2/sharing_saturday_277/f0xdcj5/>

------

The Rust Roguelike Tutorial has been updated to the latest RLTK version,
and now has **Web Assembly links to all examples** so you can run them
in your browser (except on Apple, for now).

**TODO**:

- <https://reddit.com/user/thebracket/comments>
- <https://reddit.com/r/rust/comments/d1lkvf/whats_everyone_working_on_this_week_372019/ezqomkx>
- <https://reddit.com/r/roguelikedev/comments/d737v2/sharing_saturday_277/f0xdcj5>

<!-- **TODO**: _find and add a Reddit link_ -->
<!-- **TODO**: _choose on of the Twitter links_ -->

### Veloren

TODO: img

- <http://veloren.net/devblog-31>
  [[twitter](https://twitter.com/velorenproject/status/1168671036356923392)];
- <http://veloren.net/devblog-32>
  [[/r/rust](https://reddit.com/r/rust/comments/d2dopw/this_week_in_veloren_32),
  [twitter](https://twitter.com/velorenproject/status/1171512718244773888)];
- <http://veloren.net/devblog-33>
  [[twitter](https://twitter.com/velorenproject/status/1173985255163879425)];
- <http://veloren.net/devblog-34>
  [[/r/rust](https://www.reddit.com/r/rust_gamedev/comments/d8xtgp/this_week_in_veloren_34),
  [twitter](https://twitter.com/velorenproject/status/1176701752109936640)];

> Massive progress on water and water physics!

**TODO**: twitter, reddit

### Godot (TODO: better title)

#### [Gorgeous Godot games in Rust](https://medium.com/@recallsingularity/gorgeous-godot-games-in-rust-1867c56045e6)

![TODO: local img](https://miro.medium.com/max/1419/1*UfC2M4NG1W_5huoDRUe5kA.png)

<https://reddit.com/r/rust_gamedev/comments/d75qfz/gorgeous_godot_games_in_rust/>

TODO: twitter, reddit

------

[@zThulj](https://twitter.com/zThulj): [It's WORKING ! 😎 Successfully deployed a Godot engine app scripted in rustlang to my android smartphone.](https://twitter.com/zThulj/status/1177361607325880332)

------

"A Basic Godot-Rust Structure": <https://medium.com/@recallsingularity/a-basic-godot-rust-structure-eb855ba07223>

A Basic (Space-ick?) Project structure for your Godot / Rust Space Simulator ( I bet you have better ideas, right? right? )

<https://twitter.com/RecallSingular1/status/1175331481142513664>

#### How I use Rust and Godot to Explore Space

TODO: img

TODO: merge with the previous one into one "Godot" section?

<https://blog.usejournal.com/how-i-use-rust-and-godot-to-explore-space-806bb810e950>
<https://twitter.com/RecallSingular1/status/1174125323195056128>

### Zemeroth v0.6

![TODO: local img, desc](https://ozkriff.games/2019-09-21--devlog-zemeroth-v0-6/title-screenshot.png)

<!-- **TODO**: img, description, links -->

Zemeroth v0.6 is released!

- Text devlog: <http://ozkriff.games/2019-09-21--devlog-zemeroth-v0-6>
- YouTube: <http://youtu.be/6tZByt4LBlU>

Main features of this release are:

- renown and fighter upgrades,
- possessions,
- sprite frames and flips,
- status effect icons.

<!-- Main features of this release are: renown and fighter upgrades, possessions, sprite frames and flips, and status effect icons. -->

**TODO**: "About Devlog Videos"

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/d7avev/zemeroth_v06_renown_upgrades_sprite_frames)_

### [Use prebuilt rooms with Rust macros for more interesting procedural dungeons][proc_rooms]

![TODO](https://www.jamesbaum.co.uk/static/652c57e0976fb7a5ac82766467ce2d64/b9e4f/briangrumble2room.png)

**TODO**: summary

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/d85i8x/make_more_interesting_procedural_dungeons_using)_

[proc_rooms]: https://jamesbaum.co.uk/blether/procedural-generation-prebuilt-rooms-rust-macros

### Embark

(**TODO**: change to a more detailed title only about the library?)

![TODO: local, desc](https://i.redd.it/ncbcptsd0sk31.jpg)

<!-- **TODO**: images! gifs! -->

<https://reddit.com/r/rust/comments/d00jof/announcing_texture_synthesis_crate_from_embark>

We have opensourced our texture synthesis!
Its an example-based non-parametric image generation
by @h3r2tic and myself written in @rustlang 🦀! Huge thanks to @Ca1ne
for making awesome API around it!❤️Can't wait to see all the crazy use cases :D

> We at Embark have opensourced our texture synthesis crate!
> Its an example-based non-parametric image generation algorithm
> written in Rust 🦀
>
> You can find it on [our github](https://github.com/EmbarkStudios/texture-synthesis).
> The repo also includes multiple code examples to get you started (along with test images),
> and you can find a compiled binary with a command line interface under the release tab.
>
> Also see our talk [More Like This, Please! Texture Synthesis and Remixing from a Single Example](https://youtu.be/fMbK7PYQux4) which explains this technique and the background more in-depth.

<https://github.com/EmbarkStudios/texture-synthesis>
<https://twitter.com/anastasiaopara/status/1169594058530066432>

Open sourcing more of our R&D work and Rust 🦀 components! this one has a great long recorded talk about how the technique works also that Anastasia did. Full list of stuff we've released so far: <http://embark.rs>
<https://twitter.com/repi/status/1169596160488759296>

------

Really excited that @EmbarkStudios will be sponsoring @RustFest in Barcelona this year!

If you're interested in #rustlang and #gamedev, make sure to come chat with us!

<https://barcelona.rustfest.eu>
<https://twitter.com/AriVanider/status/1171359194336903169>

------

Hey new grads! Like games? Want to make cool stuff in Rust? Let's chat:

<https://embark.games/position/software-engineer-new-grad>

<https://twitter.com/AriVanider/status/1173903615498567680>

### [Iced - A renderer-agnostic GUI library][Iced]

![Tour example](/assets/newsletter-002/iced.gif)

> [Iced] was originally born as an attempt at bringing the simplicity of Elm and The Elm Architecture into Coffee 2D game engine

The following features are available in the crate:

- Simple, easy-to-use, renderer-agnostic API
- Responsive, flexbox-based layouting
- Type-safe, reactive programming model
- Built-in widgets
- Custom widget support

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/czzjnv/iced_a_rendereragnostic_gui_library_focused_on)_

<!-- <https://github.com/hecrj/iced>
<https://reddit.com/r/rust_gamedev/comments/czzjtb/iced_a_rendereragnostic_gui_library_focused_on/>
<https://reddit.com/r/rust/comments/czzjnv/iced_a_rendereragnostic_gui_library_focused_on/> -->

[Iced]: https://github.com/hecrj/iced

### [gfx-rs: Project Update](https://gfx-rs.github.io/2019/10/01/update.html)

![TODO: local, description](https://raw.githubusercontent.com/gfx-rs/gfx/master/info/logo.png)

- Slimmed down gfx-rs.
- Feature-less wgpu-rs.
- New swapchain model.

### Twenty Asteroids

[@VladZhukov0]

Bullet reflections ability feels pretty fun (and imbalanced)

[twitter](https://twitter.com/VladZhukov0/status/1169702934218760192)
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/d1b51s/rust_game_devlog_2_is_here)

------

Devlog #2

YouTube: <https://youtu.be/gYevCyU5gxU>
Text: <https://pum-purum-pum-pum.itch.io/asteroids-like-game/devlog/98842/my-asteroids-like-game-devlog-002>
<https://twitter.com/VladZhukov0/status/1170694557295681543>

------

<https://twitter.com/VladZhukov0/status/1176473644194775040>

devlog #3

Video: <https://youtu.be/YSYRKzogbKg>
Text: <https://www.patreon.com/posts/30202961>
[/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/d8mhxz/new_menu_performance_and_abilities_rustlang_game)

[@VladZhukov0]: https://twitter.com/VladZhukov0

### Amethyst

![amethyst logo](/assets/newsletter-001/amethyst-logo.png)

Tooling:

- Amethyst Engine v0.13 was released.
  A new `amethyst_tiles` crate was added
  and the Pong tutorial is now complete with the addition of an audio section.
  <https://github.com/amethyst/amethyst/releases/tag/v0.13.0>
  <https://book.amethyst.rs/stable/pong-tutorial/pong-tutorial-06.html>

- Laminar v0.3.1
  <https://github.com/amethyst/laminar/releases/tag/0.3.1>

- [@_AndreaCatania](https://twitter.com/_AndreaCatania) Initialize physics world - Amethyst physics tutorial #1
  <https://youtube.com/watch?v=XzSKuY9nv7A>

- [amethyst-imgui v0.5 is out](https://twitter.com/AmethystEngine/status/1177720011013709824), supporting a beta-version of the new imgui docking feature.

- [How to do a turn-based game with the ECS pattern](https://community.amethyst.rs/t/classic-turn-based-workflow-how-to/1082/20), by [@webshinra](https://twitter.com/webshinra)

- [@valkum](https://github.com/valkum) is implementing area lights using linearly transformed cosines.
  <https://www.youtube.com/watch?v=KVpLPInWRWg>

Games:

- Space Shooter v0.1.2 by [@carlosupina](https://twitter.com/carlosupina) introduced a currency system, shop system and sound effects.

  <https://github.com/amethyst/space_shooter_rs/releases/tag/v0.1.3>
  <https://youtube.com/watch?v=MmdUrZzuGfw>

  ![TODO: local, desc](https://i.redd.it/qdjp3fznaoo31.gif)

- Stabman, by Noah2610

  <https://github.com/Noah2610/LD44>

  ![TODO: desc, local](https://raw.githubusercontent.com/Noah2610/LD44/master/screenshots/overworld.png)

- [@mvlabat](https://twitter.com/mvlabat) is working on interpolation in his multiplayer prototype.

  <https://youtu.be/xJm6cI_XmT4>

- [@a5huynh](https://github.com/a5huynh) got 3D pathing working

  <https://youtu.be/STWQRTxnhRo>

- Azriel Hoh released a major new devblog update titled "Focus!"

  <https://azriel.im/will/2019/09/27/focus>

  <https://youtube.com/watch?v=JOZ9RiCFzdA>

- @webshinra made progress with raycasted FOV

  ![TODO: local, desc](https://cdn.discordapp.com/attachments/481072222392418314/628558650339754004/Screenshot_20191001_130327.png)

- [@Webshinra shared a small update about their hexagonal game](https://twitter.com/Webshinra/status/1172514770513215488). (TODO: move into Amethyst section)

  ![A few mechs of a hexagonal field](/assets/newsletter-002/hex-cross-streams.jpg)

<!--TODO: merge this with Erland's updated version above

- Amethyst Engine v0.13:

  Amethyst is a game engine and tool-set for ambitious game developers. It enables game developers to make complex games without getting into too much trouble, by means of a data-driven design and the ECS architecture.

  This release, on top of the changes below, adds the amethyst_tiles crate, which provides utilities that makes handling and drawing stuff in tiles a lot easier! 🎉

  <https://reddit.com/r/rust_gamedev/comments/d9h1ws/amethyst_engine_v013>
  <https://www.reddit.com/r/rust/comments/d9gvai/amethyst_engine_v013>

  <https://twitter.com/AmethystEngine/status/1177147037038632960>

- [@_AndreaCatania](https://twitter.com/_AndreaCatania) Initialize physics world - Amethyst physics tutorial #1

  <https://youtube.com/watch?v=XzSKuY9nv7A>
  <https://twitter.com/_AndreaCatania/status/1177945483299495936>

- [amethyst-imgui v0.5 is out, supporting a beta-version of the new docking feature.](https://twitter.com/AmethystEngine/status/1177720011013709824) (TODO: gif?)

- [@carlosupina](https://twitter.com/carlosupina)

  - New update for the Space Shooter game made with @AmethystEngine. Currency system, sound effects, 0.1.2 release notes and more discussed.

  <https://twitter.com/carlosupina/status/1168273072123785216>
  <https://youtube.com/watch?v=MmdUrZzuGfw>

  - New shop system added to space_shooter_rs! Items are now bought through the shop rather than being randomly spawned.

    ![TODO: local, desc](https://i.redd.it/qdjp3fznaoo31.gif)

    <https://github.com/amethyst/space_shooter_rs/pull/13>

    <https://gfycat.com/skinnywillingafricanparadiseflycatcher>

    (Turn on sound to hear the new sound effects!)

  - v0.1.3 release for space_shooter_rs! Let me know if you have any advice or feedback.
    <https://github.com/amethyst/space_shooter_rs/releases/tag/v0.1.3>

    - item shop
    - more items
    - sounds effects
    - 3D background

    <https://twitter.com/carlosupina/status/1176722051249451009>

- Fun font rendering experiment using distance fields and shaders to morph one letter into the next one, also varying the font, programmed with @nannoucc @rustlang... I wanted to play with fonts for sooo long

  TODO: gif

  <https://twitter.com/matthieu_caro/status/1176633574151340033>

- Ever wondered how to do a turn-based game in the ECS paradigm? Here’s how @Webshinra does it. (There’s also an awesome explainer for @ozkriff’s Zemeroth in that same topic)

  <https://community.amethyst.rs/t/classic-turn-based-workflow-how-to/1082/20>
  <https://twitter.com/AmethystEngine/status/1171804917041913856>
  TODO: img?

- Check out #ld44 submission “Stabman” (**TODO**: img)

  ... now finally released a finished post-jam game!

  <https://www.reddit.com/r/rust_gamedev/comments/d4dyrh/we_released_our_ludumdare_44_postjam_version_game>
  <https://github.com/Noah2610/LD44>
  <https://noahro.itch.io/stabman>

  <https://twitter.com/AmethystEngine/status/1173121021999796227>

- Laminar v0.3.1 <https://github.com/amethyst/laminar/releases/tag/0.3.1>

  - Docs improvements
  - Allow a Socket to be in blocking mode
  - Heartbeat functionality
  - Series of patches and bug-fixes for ordering, sequencing.
  - Disconnect after sending N un-acked packets
  - Dependency maintenance
  - A lot of new unit tests

  <https://twitter.com/AmethystEngine/status/1173853882805575690>

- From the [Rendy](TODO) workbench: Currently implementing area lights using linearly transformed cosines. Got disks and rectangles working. Need to test spheres and implement tubes. Using imgui for debug interface.

  <https://youtube.com/watch?v=KVpLPInWRWg>

- @mvlabat:

  Developing a multiplayer prototype for my new #rustlang pet project.

  Currently using Amethyst 0.12. Looking forward for the new version of amethyst_net library to be released!

  <https://youtu.be/xJm6cI_XmT4>

  Interpolation is difficult... :)

  <https://twitter.com/mvlabat/status/1175781583707615238>

- Focus

  ^^^ (**TODO**: _find a better title or move to one-liners_)

  ![TODO: local, description](https://azriel.im/will/media/2019-09-27_focus/rox_clone_attack.png)

  [@Azriel](TODO).

  <https://azriel.im/will/2019/09/27/focus>

  Rudimentary camera player tracking

  Video demo: <https://youtube.com/watch?v=JOZ9RiCFzdA>

  <https://twitter.com/im_azriel/status/1169416420796465153>

  **TODO**: twitter, reddit?
-->

### Hot Reloading (TODO)

I just posted a progress update of hot reloading in #rustlang  that @AbbeyGamesNL's Bas and I are working on. Go check it out!

<https://twitter.com/wodannson/status/1168671379392258049>
<https://reddit.com/r/rust/comments/cywwtv/progress_on_hot_reloading_experimentation_in_rust>

@Wodann:
Progress of my experimentation with hot reloading in Rust. The video shows:

- Catching and logging of errors (e.g. type mismatch)
- Hot reloading of a shared library's symbols (used for reflection)
- Hot reloading of method logic
- Runtime type / method reflection
- Runtime invokable methods

The error message still reads "Found: ?", but obviously this will change to "Found: f32" in the future.

------

I just open sourced our #rustlang hot reloading experimentation. It's a first step towards a scripting language focused on quick iteration times for #gamedev. Feel free to study and use the code under the MIT or Apache licenses. <https://github.com/mun-lang/runtime> @rust_gamedev @rustlang

<https://twitter.com/wodannson/status/1173482204565057536>
<https://reddit.com/r/rust/comments/d4wngp/released_source_of_hot_reloading_experimentation>

------

Remco: After showing off #hotreloading in #rustlang over the past months, we just launched a website with more information at <http://mun-lang.org> . #munlang is a programming language empowering creation through iteration - written in Rust. Go check it out! #gamedev @rust_gamedev

<https://twitter.com/wodannson/status/1178408744239161345>

### Other News

<!--
Special section for other news (up to 15) in a one-liner format:
- Main link,
- short summary,
- optional discussion links (in square brackets),
- optional small image.
-->

(**TODO**: **compress into real one-liners!**)

- [**uset**](https://crates.io/crates/uset) - an implementation of sets and maps
  designed for small and medium number of stored elements
  which change quickly - i.e. in a dynamically evolving scene in a video game.

- [@dooskington] published their 5th devlog: ["Stats And Skills"](https://dooskington.com/dev-log/5);

  ![Stats and skill demo](/assets/newsletter-002/dooskington-devlog-5-screenshot.jpeg)

- **[cubism-rs]** (Rust bindings for [Live2D Cubism]) got renderer support for [Piston2D].

  ![Live2D Piston demo](/assets/newsletter-002/live2d-cubism.png)

- [Alex Butler] continues to polish their "[Robo Instructus]" game;
  [1.8, 1.9, 1.10 and 1.11 versions were released][robo-news]:
  official macOS support, bugfixes and better translations.

  ![Robo Instructus gameplay screenshot with full UI](/assets/newsletter-002/robo.jpg)

- ["Github Actions CI with Rust and SDL2"] -
  [Alexandru Ene] wrote a post about CI with [github actions]
  for [their hobby game project][after-hours] that uses Rust and SDL2.

  ![Github Actions with SDL2 screencast demo](/assets/newsletter-002/github_actions_ci.gif)

- [@Wraithan got tower placement working](https://twitter.com/Wraithan/status/1172982932341805056)
  in their "WraithDefense" tower defence game;
  the development process [is streamed on Twitch](https://twitch.tv/wraithan).

  ![Towers on the map](/assets/newsletter-002/wraith-def.jpeg)

- [@oliviff] released [v0.0.1][tennis-1] and [v0.0.2][tennis-2] updates for [Tennis Academy][tennis]: simplified gameplay flow, areas, cash flow, animations, players' state visual cues and more.

  ![Tennis Academy v0.0.2 Demo](/assets/newsletter-002/tennis-academy.gif)

- The [Garden] game is
  [under active development again](https://twitter.com/logicsoup/status/1174259591250661379).
  Devlogs [are coming soon!](https://twitter.com/logicsoup/status/1166469607412158464)

  ![a screenshot from Garden showing a build and some trees](/assets/newsletter-002/garden.jpeg)

- [@seratonik shared a GIF with omni-directional shadows][shadows-tweet]:

  [![shadows demo](/assets/newsletter-002/shadows.gif)][shadows-tweet]

- [@magistratic] gave a talk on the Doom's [BSP] rendering engine using their Rust implementation as a demonstration at RevolverConf:
  recording (in Norwegian) and a WASM demo available
  [here](https://magnushoff.com/blog/doom-revolverconf)
  ([source code](https://github.com/maghoff/wad-render/tree/revolverconf-2019.2)).

  ![WASM demo](/assets/newsletter-002/doom-bsp-wasm.png)

<!--
- @slybash: love this pattern: make a turn based game, but it's actually just realtime & pauses when the player's flagged to take their turn. Not only does it simplify deving, but you can get some real cool effects like this one. 100 dummy AI's with random speeds moving south-east
  \[[twitter](https://twitter.com/slybash/status/1170242812752748544)]
-->

- [**rx**][rx] by [@cloudhead] is a modern pixel editor and animator;
  this month, v0.2.0 was released, with new brush modes -
  pixel perfect drawing, symmetry and multi-frame drawing -
  a new GLFW backend and `.gif` output.
  \[[/r/rust](https://reddit.com/r/rust/comments/dauizc/rx_v020_released_a_modern_pixel_editor),
  [github](https://github.com/cloudhead/rx)].

  [![rx demo](/assets/newsletter-002/rx.gif)][rx]

- Pixel art editor **[Xprite]** is now [open source under GNU GPL][xprite-repo]
  \[[/r/rust](https://reddit.com/r/rust/comments/d4r0o3/pixel_art_editor_xprite_is_now_open_source),
  [/r/rust_gamedev](https://reddit.com/r/rust_gamedev/comments/d3vl65/xprite_is_now_open_source)].

  ![XPrite drawing demo](/assets/newsletter-002/xprite-demo.gif)

- ["Live"][live] by [@pincfloit] - a small command line interface survival game
  \[[twitter](https://twitter.com/pincfloit/status/1173965160089837568),
  [github](https://github.com/codegram/live-rust)].

  [![Live demo](/assets/newsletter-002/live-cli.png)][live]

- [@phaazon] released [luminance] 0.33 that
  [brings geometry instancing support](https://reddit.com/r/rust/comments/d0us73/announcement_luminance033);
  also, the third wiki chapter ["Wavefront .obj loader"][luminance-chapter]
  was released.

  ![loaded and lighted Suzanne model](/assets/newsletter-002/suzanne_lit.png)

- [phaazon/spline-editor] - a simple spline editor
  for the [splines crate][splines] written using [luminance].

  ![complex spline in the editor](/assets/newsletter-002/splines.png)

- [@MrVallentin] tweeted a bunch of updates about their voxel engine:
  [falling cubes](https://twitter.com/MrVallentin/status/1170164060542918656),
  [text rendering](https://twitter.com/MrVallentin/status/1170515003113451520),
  [60M cubes generated in the blink of an eye](https://twitter.com/MrVallentin/status/1171773622039515136),
  [remeshing](https://twitter.com/MrVallentin/status/1171774889335951361),
  [retrospective video](https://twitter.com/MrVallentin/status/1174493952894033920),
  [saving and loading](https://twitter.com/MrVallentin/status/1176996637681623042),
  and some more.

  ![screenshot of the WIP terrain generation](/assets/newsletter-002/vallentin-voxel-terrain.jpeg)

- [@Mistodon] got their entire game ["Disconnect"] to [render in the terminal][disconnect-video];

  [![Disconnect in the terminal](/assets/newsletter-002/disconnect-console.png)][disconnect-video]

- ([@aclysma]): More progress on the editor prototype (emphasis on prototype! 😀), added rotation/scaling.

  <https://youtube.com/watch?v=BON_RvVFiWY>
  <https://twitter.com/aclysma/status/1175530142426263552>
  <https://github.com/aclysma/minimum>

- ([@aclysma]): New crate: imgui-inspect for drawing structs via imgui

  I needed a property editor for a game framework I've been working on. The approach I took seemed like it might be useful to others so I broke it out into its own crate.

  <https://www.youtube.com/watch?v=lCB2XpXdlFw>
  <https://github.com/aclysma/imgui-inspect>
  <https://reddit.com/r/rust_gamedev/comments/cyxky6/new_crate_imguiinspect_for_drawing_structs_via>

  (**TODO**: merge with the minimum news)

  ![TODO: local, desc](https://i.redd.it/1f6qvcp8y9k31.png)

- [Project Deios][deios] decided to implement their core in Rust
  and has been looking for a Rust graphics programmer:
  [/r/rust announcement][deios-reddit].

  ![Deios logo ant promo pic](/assets/newsletter-002/deios.jpg)

- **[blend]** - a parser and runtime for [Blender][blender]'s .blend files
  that can be used to read (almost) everything inside the file:
  from mesh data, materials, cameras and animations to user preferences,
  window locations and render settings
  \[[/r/rust](https://reddit.com/r/rust/comments/d70lu6/blend_a_parser_and_runtime_for_blenders_blend)].

[Alexandru Ene]: https://twitter.com/_AlexEne_
["Github Actions CI with Rust and SDL2"]: https://alexene.dev/2019/09/04/Github-actions-CI-rust-SDL2.html
[github actions]: https://github.com/features/actions
[after-hours]: https://alexene.dev/2019/01/15/After-hours-game-development.html
[Xprite]: https://pickitup247.com/xprite.html
[xprite-repo]: https://github.com/rickyhan/xprite-editor
[cubism-rs]: https://github.com/Veykril/cubism-rs
[Live2D Cubism]: https://www.live2d.com/en/download/cubism-sdk
[Piston2D]: https://www.piston.rs
[@dooskington]: https://twitter.com/dooskington
[@magistratic]: https://twitter.com/magistratic
[BSP]: https://en.wikipedia.org/wiki/Binary_space_partitioning
[@Mistodon]: https://twitter.com/Mistodon
["Disconnect"]: https://mistodon.itch.io/disconnect
[disconnect-video]: https://twitter.com/Mistodon/status/1175361784246603776
[@pincfloit]: https://twitter.com/pincfloit
[luminance]: https://crates.io/crates/luminance
[luminance-chapter]: https://github.com/phaazon/luminance-rs/wiki/Wavefront-.obj-loader
[splines]: https://crates.io/crates/splines
[phaazon/spline-editor]: https://github.com/phaazon/spline-editor
[@aclysma]: https://twitter.com/aclysma
[@phaazon]: https://github.com/phaazon
[blend]: https://github.com/lukebitts/blend
[blender]: https://blender.org
[Garden]: https://epcc.itch.io/garden
[shadows-tweet]: https://twitter.com/seratonik/status/1169106102710988801
[live]: https://nuria.itch.io/live-rust
[@oliviff]: https://twitter.com/oliviff
[tennis]: https://iolivia.me/posts/6-months-of-rust-game-dev
[tennis-1]: https://twitter.com/oliviff/status/1168556346431692800
[tennis-2]: https://twitter.com/oliviff/status/1172912164488843265
[Alex Butler]: https://twitter.com/bigabgames
[Robo Instructus]: https://steamcommunity.com/games/1032170/announcements/detail/1604892840079306082
[robo-news]: https://steamcommunity.com/app/1032170/allnews
[@MrVallentin]: https://twitter.com/MrVallentin
[rx]: https://cloudhead.io/rx
[@cloudhead]: https://cloudhead.io
[deios]: https://kickstarter.com/projects/dungeonfog/project-deios-dungeonfog-mapmaker-suite-for-worldbuilders
[deios-reddit]: https://reddit.com/r/rust/comments/d487dr/were_looking_for_a_rust_graphics_programmer

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

- [#36 "Adoption of Rust over time in existing game codebases"](https://github.com/rust-gamedev/wg/issues/36)
- [#48 "Placement New"](https://github.com/rust-gamedev/wg/issues/48)
- [#49 "Branch prediction hints (i.e. Likely/Unlikely)"](https://github.com/rust-gamedev/wg/issues/49)
- [#51 "Using wasm-bindgen for games"](https://github.com/rust-gamedev/wg/issues/51)

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

- [winit](https://github.com/rust-windowing/winit):
  - [Issues tagged as "Good first issue" and “help wanted”][winit help wanted];
  - [Issues tagged as "Blocking a release"][winit blocking];
- [gfx-rs's "contributor-friendly" issues][gfx issues];
- [wgpu's "help wanted" issues][wgpu-help-wanted];
- [luminance's "low hanging fruit" issues][luminance-fruits];
- Request from Amethyst:
  ["The renderer-agnostic GUI library “Iced” by @hecrj looks *so* good. If someone wants to make this work with Amethyst please get in touch with us! (or just do it...)"][amethyst-iced-help].

[winit help wanted]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22status%3A+help+wanted%22+label%3A%22Good+first+issue%22
[winit blocking]: https://github.com/rust-windowing/winit/issues?utf8=✓&q=is%3Aissue+is%3Aopen+label%3A%22Blocking+a+release%22
[gfx issues]: https://github.com/gfx-rs/gfx/issues?q=is%3Aissue+is%3Aopen+label%3Acontributor-friendly
[wgpu-help-wanted]: https://github.com/gfx-rs/wgpu-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22
[luminance-fruits]: https://github.com/phaazon/luminance-rs/issues?q=is%3Aissue+is%3Aopen+label%3A%22low+hanging+fruit%22
[amethyst-iced-help]: https://twitter.com/AmethystEngine/status/1169922826033336320
[@hecrj]: https://twitter.com/hecrj

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

Just an interesting Rust gamedev link from the past. :)

[![a scene with sand, water, a tree, flowers, and fire](/assets/newsletter-002/sandspiel.png)][Sandspiel]

**[Sandspiel]** is a falling sand game by [@MaxBittker]
built in late 2018 using Rust (via WASM), WebGL,
and some JS glueing things together.

> Sandspiel is a pixel physics simulation sandbox where
> you can paint with elements, conduct experiments and build your own world!
>
> Elements include Ice, Water, Sand, Lava, Fire, Oil, Plant, Fungus,
> and many more!
>
> The goal was to produce an cellular automata environment that's
> interesting to play with and supports the sharing and forking
> of fun creations with other players.
> Ultimately, I want the platform to support editing and uploading
> of your own elements via a programmable cellular automata API.

The history of the game and the development process are documented in a great
**["Making Sandspiel"](https://maxbittker.com/making-sandspiel)** blog post.

[The source code is aviable on GitHub](https://github.com/MaxBittker/sandspiel).

The game's community is still active: check
[@sandspiel_feed feed of uploads](https://twitter.com/sandspiel_feed).

_Discussions:
[/r/rust](https://reddit.com/r/rust/comments/a6v0p1/sandspiel_a_falling_sand_game_built_in_rustwebgl),
[/r/programming](https://reddit.com/r/programming/comments/a6zxou/sandspiel_a_falling_sand_game_built_in_rust),
[hacker news](https://news.ycombinator.com/item?id=18696291)_

[Sandspiel]: https://sandspiel.club
[@MaxBittker]: https://maxbittker.com

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
