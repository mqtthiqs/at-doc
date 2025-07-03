## Instructions to capture screenshot

Captured width should be so that fonts in the screenshot should be more-or-less the same size as the
page text.

Screenshots should usually have a scale factor of 2.

- run `dev/reset-window-state.sh` to reset all display settings
- take a system screenshot (hint: holding alt while taking screenshot removes drop shadow)

**Always add meaningful alt text when embedding screenshots.** Alt-text is used for screen
readers or when there was a problem loading an asset. It should describe what is visible.
Alt-text shouldn't contain any additional information that isn't visible in the screenshot.

### Dimensions for module pages (in logical pixels)

- **Fold page image**: 756 x 504
- **Module logo**: 135 x 135
- **Features thumbnails**: 120 x 120
- **Screenshots in documentation**: 750 x variable height
- **Tips and tricks**: 650 x variable height
- **Carrousel image (on main page)**: variable width x 345 px
  Use `dev/reset-window-state.sh --profile Carrousel` to set appropriate display settings

## Typographic conventions

- _Atelier_ references in text in italics
- Module names in _italics_, capitalized (e.g. "_Agitation_")
- Parameter names in **bold** (e.g. "**Spread**")
