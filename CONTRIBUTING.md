# Contributing Guide

## Workflow Overview

- In the last week of the month, a [coordination issue][coordination]
  with an initial outline of this month's news is created by a coordinator.

  News are mostly collected from [/r/rust_gamedev], [@rust_gamedev] on Twitter,
  and the "\#showcase-only" [Rust GameDev channel on Discord][gd-discord].
  Feel free to suggest sections if something cool isn't listed.

- During the following few days, contributors take "🆓 **free**" sections
  and submit corresponding PRs.

  Leave a comment like "Taking {section\_name\_1} and {section\_name\_2}"
  in the coordination issue to claim free sections you are interested in.
  Claimed sections are marked as "🚧 WIP by @nickname" in the plan.
  This is done to avoid work duplication.

  You aren't required to be a project's author to write about it.

  Some free sections have a nickname with a question mark in brackets
  (like "🆓 **free** (@nickname?)") -
  it's just an invitation to write the corresponding section if you want,
  but anyone is free to take it.

- Submitted PRs are reviewed, tweaked if needed, and merged.

  Feel free to help with reviews.

- After all the contributors' PRs are processed, coordinators
  take and write all sections that no one has submitted.

- In the first week of the next month, the final draft is reviewed and merged.

- A small PR that adds links to discussions
  (see the comment at the bottom of the draft) is made.

- A draft of the next newsletter is added to the repo.

## PRs

- The current draft is `/posts/newsletter-{N}/index.md`,
  where `{N}` is this issue's number.

- Place the sections accordingly to how they're ordered
  in the coordination issue.

- PRs are sent against the `source` branch.

- Mention the coordination issue in the PR's description to link it all together.

- Don't send PRs from your main branch, create a unique branch
  (named like `n14_zemeroth`, `n12_veloren`, etc) for each PR.
  This allows sending multiple simultaneous PRs
  and simplifies the creation of the next PRs.

- Make sure that the "Allow edits from maintainers" box is checked
  ([avoid using org accounts][gh-org] if possible)
  \- it makes updating/tweaking the PR easier for the coordinators.

- Don't bother resolving merge conflicts in your PR
  as they will likely to re-appear after yet another PR is merged.
  It easier for a coordinator to update the PR right before merging it.

- Don't worry about cleaning up the PR's commit history
  \- we're squashing the PR into one commit before the merge anyway.

[coordination]: https://github.com/rust-gamedev/rust-gamedev.github.io/issues?q=label%3Acoordination
[@rust_gamedev]: https://twitter.com/rust_gamedev
[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[gd-discord]: https://discord.gg/yNtPTb2
[gh-org]: https://github.com/isaacs/github/issues/1681

## Style

Please, try to maintain a consistent style with the rest of the newsletter.

- In general, the sections are expected to have this structure:

  ```markdown
  ### [Project]

  ![alt image description](image.jpeg)
  _image caption_

  [Project] by [@Author] is an awesome Rust project.

  A paragraph or two with a summary and [useful links][other-link].

  _Discussions:
  [/r/rust](https://reddit.com/r/rust/123456),
  [twitter](https://twitter.com/todo/status/123456)_

  [Project]: https://first.link
  [@Author]: https://author.link
  [other-link]: https://other.link
  ```

  It was decided to use an image + short TLDR-overview section scheme
  because people, in general, don't follow the links in digests.
  This way readers should get a general idea of what's going on
  just by scrolling through the issue.

  But please don't make the sections too long/detailed,
  otherwise, the newsletter as a whole will become too bloated.
  It's not a strict limit, but please try to keep the sections under 200 words.

- Games are quite visual-oriented media
  so the default section structure includes one image before the text.
  One image is preferred, two images are usually the max.

  Keep the file size in mind: GIFs should be <2MB in size
  ([ezgif.com] is a nice online tool for quick editing/optimization),
  static images should be optimized too
  (prefer jpeg to png for complex screenshots, etc).

  All images should have a short but meaningful and descriptive alt text
  (more info about alt text [here](https://moz.com/learn/seo/alt-text)
  and [here](https://webaim.org/techniques/alttext/)).

  Image files should be placed in the same folder as the post
  and be named using "\-" to split the words, not "\_".

- Markdown doesn't natively support videos,
  so the usual workaround is to include a clickable screenshot of the video:
  [example 1](https://rust-gamedev.github.io/posts/newsletter-012/#ochre-4k-intro),
  [example 2](https://rust-gamedev.github.io/posts/newsletter-012/#rust-n-games-talk).

- Contributions should be written clearly and simply so that
  they are accessible to readers for whom English is not their first language.

- Keep in mind that more than half of readers consume the newsletter
  using mobile devices.
  So try to avoid things that don't work well with small screens:
  nested lists, long titles, images with important small details,
  code blocks with long lines, etc.

- Don't use fourth-level headers.
  Divide a section into subsections using a `------` line if needed.

- Avoid using bold, italic, etc rich formatting if possible.

- Write from a third-person perspective even if you're writing
  about your project's updates.

- Use singular "they" if you're not sure what the person's pronouns are.

- If the project was already featured in the newsletter,
  use a one-sentence description at the beginning of the section
  as a reminder for readers
  and describe only the updates next.

- It's ok to add a donation/sponsorship link,
  but avoid making it a central point of your section.

- Discussion links should be added at the end of the (sub)section only if
  they already contain some actual interesting discussions.

[ezgif.com]: https://ezgif.com

## Formatting

As with the style, keeping the MD formatting consistent over the newsletter
is important too.
So, please, try to follow the formatting guidelines
but don't worry too much about them:
they are easier to fix for coordinators than issues with the content itself.

- Some of the basic formatting rules are enforced on CI using [markdownlint].

  If you're working on your PR locally, consider installing
  one of the markdownlint extensions for your editor
  ([vscode][vscode-lint], [sublime][sublime-lint], [vim][vim-lint]),
  otherwise please check the results of the CI run.

- Insert line breaks ([softbreak]) at 80 chars.

- Use [reference-style links][md-reflinks] and group them into blocks
  at the end of the (sub)sections.

  URLs in these references block can break the 80 chars rule:

  ```markdown
  [Rapier][rapier], a new pure-rust physics engine,
  released an [official Bevy plugin][bevy-rapier].

  [rapier]: https://rapier.rs
  [bevy-rapier]: https://www.dimforge.com/blog/2020/08/25/announcing-the-rapier-physics-engine/#reaching-out-to-other-communities-bevy-and-javascript
  ```

- Use only dashes (`-`) for list items, `**` for bold, and `_` for italic.

- Don't use double linebreaks and trailing whitespaces.

- Only use inline code formatting ("\`mycrate\`") for crate names
  if this helps to avoid confusion.

- Don't use GitHub shortcodes (like `:tada:`) - they won't be rendered
  by normal MD renderers. Use plain Unicode emojis instead.

- Consequent list item lines are indented with two spaces. Example:

  ```markdown
  - Aaaaaaaa aaaaaaa aaaaaaaaaa (Aaaaaaa) aaaaaaaa aaaa
    aaaaaa aaaa. Aaaaaa aaaa aa'a aaaaaaaa aaaaaa aaa aaaaaaa.
    aaaaa aaaaa aa aaaaaaaaa, aaaaaaa.
  - Aaaaaaaaaaaaa aaaaaaaaaaa aaa aaaaaaa aaaaa.
    - Aaaaaaaaaaaaaa aaaaaaa aaaaaaaa AaaAA aaaa aaa aaa'a
      aaaa aaaaa aaaaa `aaa_aaaaa` aaaa, aaaa `aaaa_aaaaa_aaa`,
      aaaaa.
    - Aaaaaaa aaaaa aaaaaa (aaaaaaa aaaaaaa).
  ```

- Try to strip unneeded parts of URLs.
  For example, remove `www.`, `old.`, and description parts of Reddit links:

  - `https://old.reddit.com/r/rust/comments/i7bcwu/introducing_bevy_a_refreshingly_simple_datadriven`
  - `https://reddit.com/r/rust/comments/i7bcwu/introducing_bevy`

- Use a consistent list item termination
  (don't mix items ending with ";", ",", ".", etc).

[markdownlint]: https://github.com/DavidAnson/markdownlint
[vscode-lint]: https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
[sublime-lint]: https://packagecontrol.io/packages/SublimeLinter-contrib-markdownlint
[vim-lint]: https://github.com/fannheyward/coc-markdownlint
[softbreak]: https://spec.commonmark.org/0.29/#soft-line-breaks
[md-reflinks]: https://www.markdownguide.org/basic-syntax/#reference-style-links

Ping the coordinators in the current coordination issue
or WG's Discord channel if there are any questions.
If something in this guide is unclear file an issue
and we'll try to improve it.
