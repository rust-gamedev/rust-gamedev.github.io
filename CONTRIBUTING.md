# Contributing Guide

Thank you for contributing to the newsletter! 💖

- [Writing Newsletter Sections](#writing-newsletter-sections)
    - [Templates](#templates)
    - [Style Guidelines](#style-guidelines)
- [Becoming an Editor](#becoming-an-editor)

## Writing Newsletter Sections

At the end of each month, a [coordination issue] will be created by one of
the newsletter editors. This signals that it's time to start writing and
submitting sections!

The coordination issue will contain the deadlines for submissions, as well
as an initial outline for the newsletter's content. Each item in the outline
will have a marker showing whether it is free for someone to pick up, and a
suggested author.

> This outline is just a first draft - feel free to submit sections that
aren't listed!

If you would like to write a section for the newsletter, leave a comment on
the coordination issue stating what you're planning to write about. This
allows the editors to keep track of what's in progress, and prevents
duplicated work.

Next, make your changes to the newsletter's main Markdown file - this is
located in [`/content/news/{N}/index.md`][newsletter-source], where `{N}` is
the newsletter's issue number. You can either do this by forking the repo,
or by using GitHub's built-in editor. If you're picking up a section from
the coordination issue's outline, use the provided links as a starting
point.

> **Please follow the [templates](#templates) and
[style guidelines](#style-guidelines) provided below when writing your
section, for consistency with the rest of the newsletter!**

Once your edits are done, send a PR against the `source` branch (not
`master`). Make sure that you mention the coordination issue in the PR
description, and tick the 'Allow edits from maintainers' box to make it
easier for editors to fix any issues.

Upon submitting your PR, a CI build will run, checking that your changes
meet the style guidelines. Please double check that this passes, and watch
your GitHub notifications for any further review comments from the editors.

### Templates

#### Games, Apps or Libraries

```md
### [Game name]

![alt text](img)
_optional image label_

[Game name] ([GitHub], [Discord], [Twitter]) by [@nickname]
is... {short project description in one sentence}.

{An overview of the recent updates with links to more details}.

_Discussions: [/r/rust_gamedev](link), [Twitter](link), [etc](link)_

[Game name]: http://example.com
```

#### Articles, Blog Posts or Videos

```md
### [Article name]

![alt text](img)
_optional image label_

[@nickname] published an [article] about...
{overview what the resource is about}.

_Discussions: [/r/rust_gamedev](link), [Twitter](link), [etc](link)_

[Article name]: http://example.com
```

### Style Guidelines

- Run [MarkdownLint] against your changes with [our config][md-config].
    - Most editors have a MarkdownLint plugin available
      (e.g. [VS Code][md-vscode], [Sublime Text][md-sublime],
      [Vim][md-vim]).
- Write in third-person perspective.
- Lines should be no more than 80 characters long.
- The rendered text should be under 1000 characters, and under 6
  paragraphs - this doesn't include markup/links/etc.
- Do not use rich formatting (bold, italics, etc).
- Avoid having multiple/nested bullet points.
    - This guideline may be relaxed if your project has multiple parts that
      aren't independent enough for their own sections.
- Only include one image (<300kb) or GIF (<2.5mb).
    - Images should be placed before text, with an optional caption and
      mandatory alternate text for accessibility.
    - Unless essential to demonstrating your project, prefer static images
      over GIFs, to keep the file size down.
- Use singular 'they' if you’re not sure what someone's pronouns are.
- If a project has been featured in previous newsletters, try to focus on
  what's new rather than repeating previous content.
- Donation/sponsorship links are allowed, but should not be the focus of a
  section.

[coordination issue]: https://github.com/rust-gamedev/rust-gamedev.github.io/issues?q=label%3Acoordination
[@rust_gamedev]: https://twitter.com/rust_gamedev
[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[gd-discord]: https://discord.gg/yNtPTb2
[newsletter-source]: https://github.com/rust-gamedev/rust-gamedev.github.io/tree/source/content/news
[markdownlint]: https://github.com/DavidAnson/markdownlint
[md-config]: https://github.com/rust-gamedev/rust-gamedev.github.io/blob/source/.markdownlint.json
[md-vscode]: https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
[md-sublime]: https://packagecontrol.io/packages/SublimeLinter-contrib-markdownlint
[md-vim]: https://github.com/fannheyward/coc-markdownlint

## Becoming an Editor

The newsletter is organized by a small volunteer group of editors. If you
have some time to spare each month and want to help out, please get in
touch, either via the [issue tracker][issues] or the
[gamedev working group's Discord channel][wg-discord]. We'd be happy to have
you!

Editors have two main responsibilities:

* Gathering news and links over the course of the month
* Reviewing, fixing and merging PRs

Each month, one of the editors will be designated as the 'lead editor'. Their additional responsibilities are:

* Creating and maintaining the coordination issue
* Preparing the final draft
* Publishing the newsletter
* Linking to the newsletter on social media
* Creating the files for next month's newsletter

The lead editor role rotates every month, to spread the workload fairly, but
you can opt out if you want.

[issues]: https://github.com/rust-gamedev/rust-gamedev.github.io/issues
[wg-discord]: https://discord.gg/DACMGKM5en
