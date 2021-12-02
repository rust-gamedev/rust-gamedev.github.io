+++
title = "This Month in Rust GameDev #28 - November 2021"
transparent = true
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 28th issue of the Rust GameDev Workgroup's
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
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
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

## Game Updates

## Engine Updates

## Learning Material Updates

### [The Raytracer Challenge][raytracer-challenge-github]

![The Raytracer Challenge](the-raytracer-challenge.jpg)

[The Raytracer Challenge][raytracer-challenge-github] is a project with the goal
to write a raytracer from scratch in rust, while showing each step of the way
[as a weekly live coding session][raytracer-challenge-playlist]. Everything is
documented, starting with implementing [Vectors][raytracer-challenge-vector] and
[Matrices][raytracer-challenge-matrix] all the way to creating [Phong
Lighting][raytracer-challenge-phong].

November has been a busy month for the project with a lot visual changes in the
raytraced results:

- A [camera][raytracer-challenge-camera] was added to allow arbitrary views on
  the [World][raytracer-challenge-world].

- [Basic animation support][raytracer-challenge-animation] came along allowing
  the easy creation of video sequences.

- More realistic and life like scenes due to [Shadow
  Casting][raytracer-challenge-shadows].

- As a new basic body type [Planes][raytracer-challenge-planes] came to life.

[raytracer-challenge-github]: https://github.com/jakobwesthoff/the_ray_tracer_challenge_in_rust
[raytracer-challenge-playlist]: https://www.youtube.com/playlist?list=PLy68GuC77sUTyOUvDhVboQoOlHoa4XrSO
[raytracer-challenge-vector]: https://youtu.be/xGEDQXBMdV4
[raytracer-challenge-matrix]: https://youtu.be/RYALPW0pJr4
[raytracer-challenge-phong]: https://youtu.be/HSgS_NQob2I
[raytracer-challenge-camera]: https://youtu.be/izzp4xZfcHI
[raytracer-challenge-world]: https://youtu.be/1l54RUGigtk
[raytracer-challenge-animation]: https://youtu.be/3LinpB7ns60
[raytracer-challenge-shadows]: https://youtu.be/agqAUa1qgGo
[raytracer-challenge-planes]: https://youtu.be/4y1aRPiH9Ko

## Tooling Updates

## Library Updates

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

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
