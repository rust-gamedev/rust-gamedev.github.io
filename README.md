# rust-gamedev.github.io

## Newsletter Creation Workflow

- At the beginning of the month, a draft of the newsletter is created
  from a [template](./newsletter-template.md).
  - This should be called `index.md`, and placed in a folder named
    `/posts/newsletter-xxx` (where `xxx` is the issue number).
- During the month PRs with the month's news, meeting notes, etc
  are reviewed and merged into the draft.
  - All images should be placed in the same folder as the post.
  - Check the comments in the draft file.
- At the end of the month, the draft is reviewed as a whole
  and polished if needed.
- On the first working day of the next month, the final PR
  (that removes `draft = true` from the post's front matter and adds the date)
  is sent.
- The link to the newsletter is shared on social networks, etc.
- A small PR that adds links to Reddit, Twitter, etc discussions
  (see the comment at the bottom of the draft) is made.
- A new draft for the next month is created from the template, goto 1.

## License

This project is licensed under either of:

- Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or
  <http://www.apache.org/licenses/LICENSE-2.0>)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or
  <http://opensource.org/licenses/MIT>)

With the exception of:

- The [Font Awesome](https://fontawesome.com) social icons, which are used
  under a [Creative Commons Attribution 4.0 International][cc-by-4-0] license
- The [OpenMoji](https://openmoji.org) icons used on the homepage,
  which are used under
  a [Creative Commons Attribution-ShareAlike 4.0 International][cc-by-sa-4-0] license

[cc-by-4-0]: https://creativecommons.org/licenses/by/4.0
[cc-by-sa-4-0]: https://creativecommons.org/licenses/by-sa/4.0
