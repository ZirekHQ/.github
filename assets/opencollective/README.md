# Zirek — Open Collective Banners & Assets

This directory contains high-resolution banners and covers created for [Open Collective (Zirek)](https://opencollective.com/zirek) and GitHub project documentation.

---

## 1. Open Collective Page Covers (2736 × 650 px)

Open Collective recommends **2736 × 650 px** for collective page cover banners.

| File | Description | Recommended Usage |
| :--- | :--- | :--- |
| [`zirek_oc_cover_curve_fitted.png`](./zirek_oc_cover_curve_fitted.png) | **Open Collective Curve-Fitted Cover (Recommended)**: Custom-engineered specifically for Open Collective's unique hero layout. Anchors the neural network sphere and audio frequency spectrum in the visible right window (65%–95%), while the left smoothly transitions to deep slate `#060913` behind Open Collective's diagonal profile curve. | **Directly upload this to opencollective.com/zirek!** |
| [`zirek_opencollective_cover_v1.png`](./zirek_opencollective_cover_v1.png) | **Asymmetric Hero Design**: Modern dark theme with insignia and cards. | Best for standalone widescreen viewing. |
| [`zirek_opencollective_cover_v2.png`](./zirek_opencollective_cover_v2.png) | **Centered Safe-Zone Design**: Symmetrical layout centered between dual audio waveforms. | General purpose panoramic banner. |

### How to Upload to Open Collective
1. Go to [opencollective.com/zirek](https://opencollective.com/zirek).
2. Click **Settings** (gear icon) in the collective navigation.
3. In the collective settings, choose **Cover Image** (or **Edit Collective** -> **Cover**).
4. Upload [`zirek_oc_cover_curve_fitted.png`](./zirek_oc_cover_curve_fitted.png) (recommended) or one of the alternative variants.
5. Adjust framing if needed and click **Save**.

---

## 2. GitHub README Sponsor Banner (1200 × 300 px)

| File | Description |
| :--- | :--- |
| [`zirek_readme_sponsor_banner.png`](./zirek_readme_sponsor_banner.png) | Compact banner tailored for GitHub READMEs, organization profiles, and documentation with a direct call-to-action button to Open Collective. |

### Markdown Snippet for READMEs:
```markdown
[![Support Zirek on Open Collective](https://raw.githubusercontent.com/ZirekHQ/.github/main/assets/opencollective/zirek_readme_sponsor_banner.png)](https://opencollective.com/zirek)
```

### HTML Snippet for READMEs:
```html
<p align="center">
  <a href="https://opencollective.com/zirek">
    <img src="https://raw.githubusercontent.com/ZirekHQ/.github/main/assets/opencollective/zirek_readme_sponsor_banner.png" alt="Support Zirek on Open Collective" width="100%">
  </a>
</p>
```

---

## Source Templates
- [`render_curve_fitted.html`](./render_curve_fitted.html)
- [`render_cover_1.html`](./render_cover_1.html)
- [`render_cover_2.html`](./render_cover_2.html)
- [`render_readme_sponsor.html`](./render_readme_sponsor.html)

