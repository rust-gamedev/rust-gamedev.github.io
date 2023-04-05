+++
title = "This Month in Rust GameDev #44 - March 2023"
transparent = true
date = 2023-04-05
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 44th issue of the Rust GameDev Workgroup's
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

## Engine Updates

## Learning Material Updates

### [Writing NES assembly programs in a Rust DSL][writing-nes-programs-in-rust-video]

[![Title slide from presentation about writing NES assembly programs in Rust](nes-programming-in-rust-cover.png)
_Video: Talk about writing NES assembly programs in Rust_][writing-nes-programs-in-rust-video]

This is a talk about writing a program for the Nintendo Entertainment System
that exposes all of its audio processor registers through an interface that lets
the user flip bits using the controller and hear the result in real time. The
program is written in Rust using an Embedded Domain-Specific Language. The talk
demonstrates the features of the language and how they can be used to help
express NES assembly programs in Rust.

Some features of the EDSL:

- defining and calling assembly functions by string labels
- using Rust as a powerful macro language (e.g. generate code inside a for-loop)
- using Rust's type system to catch invalid combinations of instruction and
  addressing mode

The source code for the NES program described in the talk is
[here][nes-audio-playground-github] and there is a [demo of the tool on
youtube][nes-audio-tool-demo-video]. The PDF of the slides from the talk are
[here][writing-nes-programs-in-rust-pdf].

[writing-nes-programs-in-rust-video]: https://www.youtube.com/watch?v=hs-MrEoOX5Y
[nes-audio-playground-github]: https://github.com/gridbugs/nes-audio-playground
[writing-nes-programs-in-rust-pdf]: https://raw.githubusercontent.com/gridbugs/nes-programming-in-rust-sydney-rust-meetup-2023-03-01/main/slides.pdf
[nes-audio-tool-demo-video]: https://www.youtube.com/watch?v=QHoISiWdPXo

## Tooling Updates

## Library Updates

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

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
