## Instructions to capture screenshot

Screenshot should be as square as possible, and made to be displayed either full-width or half-width
in the page. Captured width should be so that fonts in the screenshot should be more-or-less the
same size as the page text.

Either:

- run `dev/reset-window-state.sh` to reset all display settings
- Hit `⌘-4` to take the screenshot

Or if not possible (modal windows prevent it):

- go to the 6th zoom level (hit ⌘-+ 6 times from default size)
- take a system screenshot

**Always add meaningful alt text when embedding screenshots.** Alt-text is used for screen
readers or when there was a problem loading an asset. It should describe what is visible.
Alt-text shouldn't contain any additional information that isn't visible in the screenshot.

### Dimensions for module pages (in logical pixels)

**Fold page image**: 756 x 504

**Module logo**: 135 x 135

**Features thumbnails**: 120 x 120

**Screenshots in documentation**: 750 x variable height

**Tips and tricks**: 650 x variable height

**Carrousel image (on main page)**: variable width x 345 px
Use `dev/reset-window-state.sh --profile Carrousel` to set appropriate display settings

> Warning: Physical resolution still subject of negotiation

## Typographic conventions

- _Atelier_ references in text in italics
- Module names in _italics_, capitalized (e.g. "_Agitation_")
- Parameter names in **bold** (e.g. "**Spread**")
