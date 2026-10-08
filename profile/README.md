## Zirek

Software that reads and speaks the languages large vendors don't get around to.

Two strands, and they meet: screen-reader support for under-served languages,
and the local neural speech synthesis that makes a screen reader usable in the
first place. Projects, releases and docs: [zirekhq.github.io](https://zirekhq.github.io/).

### Screen readers

- **[dengjen-nvda](https://github.com/ZirekHQ/dengjen-nvda)** ([overview](https://zirekhq.github.io/#dengjen-nvda)) — NVDA add-on for fast,
  fully local neural text-to-speech using [Piper](https://github.com/OHF-Voice/piper1-gpl)
  voices. No cloud service, no account, no network. In the official NVDA Add-on
  Store. Maintenance continuation of
  [mush42/sonata-nvda](https://github.com/mush42/sonata-nvda), renamed from
  Sonata Neural Voices at the original author's request as a condition of the
  store listing.
- **[nvda-addon-testkit](https://github.com/ZirekHQ/nvda-addon-testkit)** ([overview](https://zirekhq.github.io/#nvda-addon-testkit)) — end-to-end
  testing for NVDA add-ons against a real NVDA in CI, covering the seams an
  add-on actually needs: speech, braille, keys, config, log.

### Speech synthesis

The stack underneath the add-on, all continuations of
[Musharraf Omer's](https://github.com/mush42) work:

- **[dengjen-tts](https://github.com/ZirekHQ/dengjen-tts)** ([overview](https://zirekhq.github.io/#dengjen-tts)) — cross-platform
  inference engine for neural TTS models (Rust), with pluggable backends
  (Piper, Kokoro). Includes the sentence segmentation that used to be a
  separate project (tqsm), tuned for speed over linguistic perfection —
  splitting text correctly is most of what makes synthesised speech sound
  unhurried.
- **[dengjen-piper-rs](https://github.com/ZirekHQ/dengjen-piper-rs)** ([overview](https://zirekhq.github.io/#dengjen-piper-rs)) /
  **[dengjen-tts-go](https://github.com/ZirekHQ/dengjen-tts-go)** ([overview](https://zirekhq.github.io/#dengjen-tts-go)) — the Piper
  backend crate, and Go bindings with prebuilt native binaries.
- **[dengjen-tashkeel](https://github.com/ZirekHQ/dengjen-tashkeel)** ([overview](https://zirekhq.github.io/#dengjen-tashkeel)) — diacritic
  restoration for Arabic. Arabic is normally written without the short vowels a
  synthesiser needs, so they have to be inferred before anything can be spoken.

Kurmanji phoneme support is contributed upstream to
[espeak-ng](https://github.com/espeak-ng/espeak-ng) rather than kept here, so it
reaches every project that uses it.

### Translation

- **[dengjen-werger](https://github.com/ZirekHQ/dengjen-werger)** ([overview](https://zirekhq.github.io/#dengjen-werger)) — commitment
  and peer-review layer for sustained Kurmanji translation contribution,
  sitting in front of Crowdin.

### Archived

- **[nvdaku](https://github.com/ZirekHQ/nvdaku)** — Kurdish (Kurmanji) localisation
  for NVDA from 2018: a partial interface translation, character descriptions and a
  symbol dictionary. No longer maintained.

### Help wanted

Kurmanji is badly served by assistive technology, and most of the gap needs
native speakers rather than programmers:

- **Voice recordings** for text-to-speech training.

Sorani and Zazaki speakers are just as welcome; the work is Kurmanji-first only
because that is where it started.

On the synthesis side the shortage is different:

- **Windows testers** for dengjen-nvda, especially against current NVDA releases.
- **Co-maintainers.** The add-on has one maintainer, which is one too few.

Open an issue on the relevant repository — for anything that sounds wrong,
include the exact text and what it should sound like. See
[CONTRIBUTING.md](https://github.com/ZirekHQ/.github/blob/main/CONTRIBUTING.md);
you do not need to write code to help.
