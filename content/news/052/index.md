+++
title = "This Month in Rust GameDev #52 - June 2024"
transparent = true
date = 2024-07-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 52th issue of the Rust GameDev Workgroup's
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
- [Popular Workgroup Issues in GitHub](#popular-workgroup-issues-in-github)
- [Other News](#other-news)
- [Meeting Minutes](#meeting-minutes)
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)
- [Bonus](#bonus)
- [Future news](#future-news)

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

## Tooling Updates

### [Rusty Playdate]

[Rusty Playdate] ([GitHub][Rusty Playdate], [Mastodon][Rusty Playdate Masto]) by [@boozook](https://github.com/boozook)
is the large set of crates with bindings, toolset for the full cycle of creating games for the [Playdate handheld console][playdate].

Big part of the Rusty Playdate project is the `cargo-playdate` tool ([Crates.io][cargo-playdate crates-io], [GitHub][cargo-playdate gh])
that helps to build game for [Playdate] hardware or simulator. It works as cargo-plugin as well as standalone.
The tool not only manages the compilation of your program, but also builds assets for the crate and __its dependencies__, generates a manifest,
and assembles it all into a bundle that runs on the device or simulator.
In this month cargo-playdate v0.5 has been [released][Rusty Playdate Release] and received massive refactoring, bugfixes and new features:
- support of [cargo's auto-targets][cargo-target-auto-discovery] _(targets such as `bin` or `example` that isn't declared in the Cargo.toml)_
- [target-specific package-info][pdb-pdxinfo-override] inheritance by main package-info
- `package.metadata.playdate.options` inheritance by `workspace.metadata`
- incremental builds now works as should - fixed an old problem where the tool corrupts cargo's cache, so triggering full rebuild

<!-- Note, "target" above means cargo-target (lib, bin, example, etc..), not a rustc/llvm-target/compile-kind/target-triple -->

Also updated register decoder in the [`pd-symbolize-crashlog`][playdate-symbolize-v0.2.0],
now it properly decodes all available registers such as
<abbr title="Program Status Register, combines APSR, IPSR and EPSR">PSR</abbr>,
<abbr title="Configurable Fault Status Register, combines UFSR, BFSR and MMFSR">CFSR</abbr>,
<abbr title="HardFault Status Register">HSFR</abbr>.

_Discussions: [GitHub][Rusty Playdate Gh-discuss], [Matrix][Rusty Playdate Matrix]._

[playdate-symbolize-v0.2.0]: https://crates.io/crates/playdate-symbolize/0.2.0
[cargo-target-auto-discovery]: https://doc.rust-lang.org/cargo/reference/cargo-targets.html#target-auto-discovery
[cargo-playdate crates-io]: https://crates.io/crates/cargo-playdate
[pdb-pdxinfo-override]: https://github.com/boozook/playdate/blob/main/support/build/README.md#target-specific-package-info "More about target-specific package-info"
[cargo-playdate gh]: https://github.com/boozook/playdate/tree/main/cargo "cargo-playdate tool is a part of 'Rusty Playdate' project"
[Rusty Playdate Release]: https://github.com/boozook/playdate/releases/tag/2024.06.18 "Release from June 18, 2024"
[Rusty Playdate]: https://github.com/boozook/playdate
[Rusty Playdate Gh-discuss]: https://github.com/boozook/playdate/discussions
[Rusty Playdate Masto]: https://gamedev.social/@playdaters
[Rusty Playdate Matrix]: https://matrix.to/#/#playdate.rs:matrix.org
[playdate]: https://play.date/ "Playdate is a fairly new console reminiscent of a GameBoy with a crank handle geared towards indie games."


## Library Updates

## Popular Workgroup Issues in GitHub

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

## Future news

<!-- Section to get more people involved in writing news. -->

Editing this newsletter wouldn't be possible without [your contributions][news_current_prs]. 
Thanks to everyone who helped us this month!

If you want something mentioned in the next newsletter, [send us a pull request][pr].

You can also get an early look at pending issues for the [next newsletter][news_future_prs].

[news_current_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N52%27
[news_future_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N53%27

------

That's all news for today, thanks for reading!

Also, subscribe to our socials if you want to receive fresh news!
- X/Twitter: [@rust_gamedev][@x_rust_gamedev]
- Mastodon: [@rust_gamedev][@mastodon_rust_gamedev]
- Reddit: [/r/rust_gamedev][/r/rust_gamedev]

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@x_rust_gamedev]: https://twitter.com/rust_gamedev
[@mastodon_rust_gamedev]: https://mastodon.gamedev.place/@rust_gamedev
