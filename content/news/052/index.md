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
  - [Untitled Pixel Wizards Game](#untitled-pixel-wizards-game)
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

### [Untitled Pixel Wizards Game][pixel-wizards]

{{ embed_video(type="video/mp4", src="untitled-pixel-wizards-game.mp4",
caption="Enemies now perceive, pursue and attack.. and occasionally get burned to death.") }}

[![A Hound chases a player, and its corpse ragdolls after it is burned to death by a fireball](untitled-pixel-wizards-game.gif)][pixel-wizards]  
_Enemies now perceive, pursue and attack.. and occasionally get burned to death._

[Untitled Pixel Wizards Game][pixel-wizards] is a local-multiplayer [Noita]-like platformer about
killing baddies using spells powered by pixel physics. This month was focused on juicing up said baddies:

- [Pew Pew Pew][pixel-wizards-update-1]: baddies learned to shoot at players.
- [Hot Pursuit][pixel-wizards-update-2]: baddies also learned to chase players! (They're real smart.)
- [Status Update][pixel-wizards-update-3]: physically-simulated pixels learn to burn & poison players & baddies.
- [Ragdolls][pixel-wizards-update-4]: corpses of dead baddies learn to tumble around all realistic-like.
- [Fiddling with Fire][pixel-wizards-update-5]: the fire mechanic figures out how to better burn baddies.

[pixel-wizards]: https://slowrush.dev
[Noita]: https://store.steampowered.com/app/881100/Noita/
[pixel-wizards-update-1]: https://www.slowrush.dev/news/pew-pew/
[pixel-wizards-update-2]: https://www.slowrush.dev/news/hot-pursuit/
[pixel-wizards-update-3]: https://www.slowrush.dev/news/status-update/
[pixel-wizards-update-4]: https://www.slowrush.dev/news/ragdolls/
[pixel-wizards-update-5]: https://www.slowrush.dev/news/fiddling-with-fire/

## Engine Updates

## Learning Material Updates

## Tooling Updates

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
