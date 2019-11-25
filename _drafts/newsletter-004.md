---
title: "This Month in Rust GameDev #4 - November 2019"
---

<!-- Check the post with markdownlint-->

Welcome to the fourth issue of the Rust GameDev Workgroup’s
monthly newsletter.

[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.

We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun

<!--
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

Discussion links are added only if they contain
some actual interesting discussions.

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Game Updates

### [Le Train Dispatcher][ltd] - Route trains in a simulated rail network

![Demo of Le Train Dispatcher](/assets/newsletter-004/ltd.gif)

Le Train Dispatcher allows you to route trains in a fully simulated rail network. Particular care has been taken on the realistic management of light signals (block systems, switches protection), train physics and curve tracing.

The game is programmed in Rust and the main crates used are : ggez, imgui and serde.

This first version is fully playable, but if you want to comment, bring your ideas or help the development of the game, in any way, do not hesitate to post a [message][ltd-post].

#### Unique characteristics

- Realistic light signals simulation
    - Huge engineering work has been done to have a realistic management of railway signaling. 
- No collision
    - Yes it's fun to watch  many trains running automatically without getting in. All your actions are checked : you cannot put the trains in danger.
- True physics
    - Each locomotive or wagon has its own weight, its driving or braking force, its coefficient of adhesion.
    - The curves are not simple circles, they are calculated with the same equations as those used in real road or rail networks.


#### Help needed!
Creating a game it is a team effort, I am looking for partners first of foremost. If you have one of the talents below, you are welcome.

- Graphic artist
- Level and game designer
- Sound engineer
- Web designer
- Musician

#### Links: [itch.io][ltd], [Patreon][ltd-patreon]

[ltd]: http://athorus.itch.io/ltd
[ltd-post]: https://itch.io/category/551012/new-topic
[ltd-patreon]: https://www.patreon.com/athorus

## Library & Tooling updates

### Other Library & Tooling News

<!-- See the comment in the `Other Game News` section. -->

## Popular Workgroup Issues in Github

<!-- Up to 10 links to interesting issues -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

------

That's all news for today, thanks for reading!

Want something mentioned in the next newsletter?
[Send us a pull request][pr].
Feel free to send PRs about your own projects!

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
