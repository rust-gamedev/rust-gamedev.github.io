---
title: "This Month in Rust GameDev #3 - October 2019"
---

<!-- Check the post with markdownlint-->

Welcome to the third issue of the Rust GameDev Workgroup’s
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

### [Sulis][sulis] - a Turn-Based RPG

![chest and inventory with items](/assets/newsletter-003/sulis-inventory.png)

[Sulis][sulis] is a Role Playing Game (RPG) with turn based, tactical combat,
deep character customization and an engaging storyline.
The game has been built from the ground up with modding
and custom content in mind.
Currently supported on Windows and Linux platforms.

The game is currently fully playable
and includes the first act of The Twin Expanse,
an old school RPG campaign in the vein of classic games
such as _Baldur's Gate_,
but mixing in modern elements from titles like
_Divinity: Original Sin_ and _Pillars of Eternity_.

The core game engine as well as the campaign
are still under heavy development.
Users are encouraged to [file issues with bugs][sulis-issues],
feature requests, or any other feedback.

![flaming fingers spell demonstration](/assets/newsletter-003/sulis-battle.png)

Features:

- Cross platform native binaries, currently [built for Windows and Linux][sulis-releases]
- Multiple campaigns with over 8 hours of playtime,
  featuring both handcrafted and procedural content.
- We are designing a detailed and fully realized world and story - check out
  the [Lore page][sulis-lore].
- Designed with modding in mind - although more work still needs
  to be done in this area.
- A powerful 2D graphics engine with zoom, scalable UI, HiDPI support,
  and a swappable graphics backend.
- Runs on very modest hardware - even software renderers
  (although at a reduced frame rate).

![ability tree gui](/assets/newsletter-003/sulis-abilities-tree.png)

The GPLv3-licensed [source code is hosted on GitHub][sulis-src].
Sulis is written in Rust, with scripting in Lua and most data files in the YAML format.

_Discussions:
[/r/rust_gamedev](https://www.reddit.com/r/rust_gamedev/comments/din01e/sulis_a_turnbased_rpg_written_in_rust_by_ugrokmoo)_

[sulis]: https://sulisgame.com
[sulis-issues]: https://github.com/Grokmoo/sulis/issues
[sulis-releases]: https://github.com/Grokmoo/sulis/releases
[sulis-lore]: https://sulisgame.com/lore
[sulis-src]: https://github.com/Grokmoo/sulis

### Other Game News

<!--
Special section for other news (up to 15) in a one-liner format:
- Main link,
- short summary,
- optional discussion links (in square brackets),
- optional small image.
-->

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
