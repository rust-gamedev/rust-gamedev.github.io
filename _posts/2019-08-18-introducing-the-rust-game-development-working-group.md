---
title: Introducing the Rust Game Development Working Group
---

Rust's combination of low-level control, excellent performance and modern build tools makes it an exciting choice for game developers. The idea of a working group to support this burgeoning community has been proposed [many](https://internals.rust-lang.org/t/a-working-group-for-rust-game-development/8240/4) [times](https://alexene.dev/2018/11/15/Rust-and-game-development.html) over the years, and we're excited to announce that a group has finally been formed!

[Our charter](https://github.com/rust-gamedev/wg/blob/master/charter.md) sets out two primary goals:

* To improve the experience of people using Rust for game development. We want game developers to have a representation in the Rust project. We are a bridge between them and the Rust dev team.
* To share knowledge and make game engine development more accessible for people that are not engine developers. We know it can be a large and intimidating field when you're just starting out.

## What have we been up to?

While the working group is still in its infancy, we've already got several projects underway:

* The biggest success so far has been the creation of [`raw-window-handle`](https://github.com/rust-windowing/raw-window-handle), a library that provides a common interface that windowing libraries (such as `winit`) can use to talk to graphics libraries (such as `gfx-hal`). [Work is currently ongoing](https://github.com/rust-gamedev/wg/issues/26) to integrate this into various libraries, and once this is complete, it should be a big step towards making the ecosystem more decoupled.
* [Discussions on how a pure Rust SPIR-V generator could be implemented](https://github.com/rust-gamedev/wg/issues/23) are currently ongoing, with the aim of reducing our reliance on `shaderc`.
* We're running a [survey](https://users.rust-lang.org/t/survey-from-the-rust-game-development-working-group/31270), to help us understand the ecosystem better and to figure out how we can best serve its needs. If you're currently using Rust for game development, or even if you just have an interest in the idea of it, please give us your thoughts!

## How can I get involved?

Our main hub for co-ordination is our [Github repository](https://github.com/rust-gamedev/wg), where you can (and should!) raise issues calling out your ideas, proposals or problems with the Rust gamedev ecosystem. We also have a `#wg-gamedev` channel on the [official Rust Discord server](https://discord.gg/j6QJsMd), and get together for [meetings on Google Hangouts every other Wednesday](https://github.com/rust-gamedev/wg#join-the-fun). Come and join us!

## What's next?

We're currently [putting together](https://github.com/rust-gamedev/rust-gamedev.github.io/issues/2) the first installment of a Rust game development newsletter - if you'd like to be notified when this goes live, please subscribe to our [RSS feed](https://rust-gamedev.github.io/feed.xml), or join us on [Discord](https://discord.gg/j6QJsMd)!
