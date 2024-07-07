---
title: "Newsletter {{ env.NEWSLETTER_COUNTER}}: {{ env.NEWSLETTER_MONTH }} {{ env.NEWSLETTER_YEAR }}"
labels: coordination, help wanted
assignees: AngelOnFira, mamaicode, janhohenheim
---

**Editors:** @janhohenheim, @AngelOnFira, @mamaicode

Another month has gone by, so it's time to put together the Rust Gamedev newsletter with {{ env.NEWSLETTER_MONTH }}'s news!

## Current Schedule

The deadline for all section PRs is the **28th of {{ env.NEWSLETTER_MONTH}}, {{ env.NEWSLETTER_YEAR }}**. Submissions after this date will be added to the next newsletter.
Our target release date is the **3rd of {{ env.NEWSLETTER_NEXT_MONTH }}, {{ env.NEWSLETTER_YEAR }}**.

## Current Structure & Status

Below is our current planned structure for the newsletter, and the status of each PR (which we'll try to keep updated).

This is **not** an exhaustive list - if you have your own project that you want to write about, just make a comment on this issue and open a PR!

### Game Updates

None yet. Feel free to submit yours!

### Learning Material Updates

None yet. Feel free to submit yours!

### Engine Updates

None yet. Feel free to submit yours!

### Tooling Updates

None yet. Feel free to submit yours!

### Library Updates

None yet. Feel free to submit yours!

### Other News

None yet. Feel free to submit yours!

### Discussions

None yet. Feel free to submit yours!

## Calls for Submissions

### Social Media

- [ ] Reddit
- [ ] Lemmy
- [ ] Mastodon
- [ ] Twitter/X
- [ ] Hacker News

### Discord Servers

- [ ] Rust GameDev
- [ ] Bevy
- [ ] Blue Engine
- [ ] Macroquad
- [ ] Fyrox
- [ ] LogLogGames (comfy engine)
- [ ] Spicy Lobster
- [ ] Rust Godot

Let us know if you also want to receive monthly reminders on your Discord server!

## Publishing Steps

- [ ] Final review - by everyone
- [ ] Publish - by @janhohenheim
- [ ] Post together with next calls for submissions - by @janhohenheim
- [ ] Pin thread on social media - by @janhohenheim
- [ ] Add comment links - by @janhohenheim

## How to Contribute

If you want to help writing the newsletter:

- **Read [CONTRIBUTING.md](https://github.com/rust-gamedev/rust-gamedev.github.io/blob/source/CONTRIBUTING.md?rgh-link-date=2023-09-12T16%3A17%3A34Z).**
- Choose one or more of the "🆓 **free**" sections listed below, and leave a comment letting us know you want to work on them.
  - The links in brackets (like `[1](#), [2](#), [3](#)`) are suggestions of links to include in the section. Feel free to add more!
  - The username listed next to the section (like `@janhohenheim?`) is a suggestion of who may want to pick up the work (usually the project's developer, or someone who has expressed interest in the past).
  - You are not obligated to write a section if you're tagged or your project is listed! You're welcome to ask someone else to write the section, or to ask for your project to be excluded from this month's post.
  - Extra sections not listed in the plan are welcomed - just leave a comment and open a PR!
- Write a short overview in the newsletter's Markdown file, making sure to follow the style guidelines (see below).
- Send a PR [_to the `source` branch_](https://github.com/rust-gamedev/rust-gamedev.github.io/tree/source) (example PR: [N15: A/B Street #336](https://github.com/rust-gamedev/rust-gamedev.github.io/pull/336)).
- Mention this issue in your PR's description to link it all together.

## Style Guidelines

The full style guide is in [CONTRIBUTING.md](https://github.com/rust-gamedev/rust-gamedev.github.io/blob/source/CONTRIBUTING.md?rgh-link-date=2023-09-12T16%3A17%3A34Z),
but here are the most important rules:

- Write in third-person perspective.
- Each line must be 160 characters or less, for ease of reviewing/diffing.
- Only one image per section is allowed.
  - The maximum size is 300kb for static images and 2.5mb for GIFs.
  - The image should come before the text, and must have alt text for accessibility.
  - Prefer static images to GIFs/videos, to keep the page load times down.
  - To include a video, encode it as `H.264` in an `mp4` container and use
    the `video_figure()` shortcode; videos autoplay in a loop (muted).
- Each section should be under 1000 characters, and under 6 paragraphs.
  - This only applies to the rendered text, not the markup.
- Keep formatting minimal - no bold/italics/etc.
- Avoid long/nested bullet point lists - no changelogs!

Please use these templates as a starting point:

**Games/apps/libraries:**

```md
### [Game name]

{{ image_figure(
    alt="image/GIF description",
    src="image link",
    caption="image caption") }}

OR

{{ video_figure(
    type="video/mp4", 
    src="my-video.mp4", 
    caption="optional video caption") }}

[Game name] ([GitHub], [Discord], [Twitter]) by [@nickname]
is... {short project description in one sentence}.

{An overview of the recent updates with links to more details}.

_Discussions: [/r/rust_gamedev](link), [Twitter](link), [etc](link)_

[Game name]: http://example.com
```

**Articles/blog posts/videos/etc:**

```md
### [Article name]

{{ image_figure(
    alt="image/GIF description",
    src="image link",
    caption="image caption") }}

OR

{{ video_figure(
    type="video/mp4", 
    src="my-video.mp4", 
    caption="optional video caption") }}

[@nickname] published an [article] about...
{overview what the resource is about}.

_Discussions: [/r/rust_gamedev](link), [Twiter](link), [etc](link)_

[Article name]: http://example.com
```
