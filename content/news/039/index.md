+++
title = "This Month in Rust GameDev #39 - October 2022"
transparent = true
date = 2022-11-01
draft = true
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

## Learning Material Updates

## Tooling Updates

## Library Updates

### MarpII

MarpII ([GitLab](https://gitlab.com/tendsinmende/marpii), [Twitter](https://twitter.com/siebencorgie), [Mastodon](https://mastodon.social/@siebencorgie)) by [Siebencorgie](https://github.com/siebencorgie)
is a *highlevel-ish* helper for Vulkan using [Ash](https://crates.io/crates/ash).

MarpII is the successor to [Marp](https://gitlab.com/tendsinmende/marp). It does not focus on wrapping Vulkan into one safe wrapper, but instead provides multiple levels of helpers that should make using it easier. This includes handling resource lifetimes and providing simplifications for common operations.

The main crate provides utilities for robust Vulkan context (instances, devices, etc.) and resource (images, buffers, descriptors etc.) creation. Lately higher level helpers like a [resource managing frame graph](https://siebencorgie.rs/posts/marpii-rmg/) and helpers for descriptor creation and command buffer recording joint the project. 


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
