# Release Notes Style

Applies to every repository in this organisation unless a repository overrides it with its own `RELEASE_NOTES_STYLE.md`.

## Convention: GitHub's default, unedited

Use `gh release create --generate-notes` (or `release: { generate_release_notes: true }`) as the release body, unedited. `dengjen-nvda` and `nvda-addon-testkit` layer [release-drafter](https://github.com/release-drafter/release-drafter) on top to group the same PR titles under labels — that's a presentation layer over the same source data, still compliant.

Write a good PR title; that title is the release note, there's no second draft.

## What NOT to do

- Don't hand-author root-cause/consequence paragraphs per change. An earlier draft of this doc mandated a fabric8io-style deep rewrite per item; reverted, because nothing can produce that but a human or an LLM rewriting every release by hand.
- Don't add a manual "edit the generated notes to match convention" step to a release pipeline.

## Different concern, not covered here

`dengjen-tashkeel`'s releases are `cargo-dist`-generated installer/download bodies (binaries, checksums, install scripts), not a PR changelog. This doc doesn't apply to it.
