# Contributing

Thanks for considering it. These guidelines apply to every repository in this
organisation unless a repository overrides them with its own
`CONTRIBUTING.md`.

## You don't need to write code

Most of what these projects need is language knowledge, not programming:

- Reviewing or extending translations
- Judging whether a character description or symbol name reads naturally
- Recording speech for voice training
- Reporting that something is pronounced wrongly, with the text that triggers it

Open an issue describing what you noticed. Please include the exact text and,
for a mispronunciation, what it should sound like.

## Translations

Translation catalogues are gettext `.po` files. Edit them with a PO editor
(Poedit, Lokalize, or `msgfmt`-aware tooling) rather than a plain text editor,
so the metadata and plural forms stay intact.

Keep the existing `Last-Translator` and `Language-Team` attributions when you
add to someone else's work — append yourself rather than replacing them.

## Pull requests

1. Fork, then branch from the default branch.
2. Keep a pull request to one concern. A translation pass and a build change
   should be two pull requests.
3. Describe what you changed and how you verified it. For pronunciation
   changes, say which words you tested.

Don't worry about commit message conventions; a clear description matters more.

## Licensing

Contributions are accepted under whichever licence the repository declares —
check its `LICENSE` file, as it varies. NVDA-derived work is GPL, so
contributions there are GPL too.
