Spectral scalpel
{.tagline}

# ![](../assets/images/modules/band/band.svg){.module-logo} Band

!!! warning "This section is a **work in progress**"

![Screenshot of the Band module](../assets/images/modules/band/band.png){.main-pic}

## Features

- precise multi-band filter
- band-pass or band-reject
- continuous slope setting
- 

## Context

<!-- visualization: solid line vs. fills -->
<!-- note: latency -->
<!-- note: FFT -> linear phase, artifact -->

## Controls

### Cursor Area

Click to add a band; double-click a band to remove it.

- **Y axis parameter:** The combo box determines which parameter is displayed on the Y axis (and
  consequently which is displayed on the Z axis, ie. cursors' halo size): either **Gain** or
  **Width**.

Each band has three parameters:

- **Pitch (X axis):** Center frequency of the band
- **Width (Y or Z axis):** Width of the band, in semitones. Positive width means band-pass, negative width means band-reject.
- **Gain (Z or Y axis):** Gain of the band

- **Transposition:** Transposes all bands center frequencies. This parameter has as many
  independently-modulatable instances as there are bands (see
  [Modulation](../atelier/modulation.md)).

### Global controls

- **Mix:** Crossfades the dry signal (0%) with the wet signal (100%).

The following parameters have as many independently-modulatable instances as there are bands (see [Modulation](../atelier/modulation.md)).

- **Spread:** Channel-locality of each band. At 0%, each band processes only the channels it is
  assigned to (see the global [Spread](../atelier/multichannel.md#spread) section); at 100%, all
  bands process all channels in parallel (multi-mono).
- **Gain:** Global gain of all bands.
- **Slope:** Slope of each band: number of semitones to transition from cutting to passing, and
  conversely.
- **Bump:** Adds a bell-shaped boost at the transition frequencies. The bump's width is determined
  by **Slope**, and its height is in ratio of the gain.

## Tips and tricks

### Animated formants

### Band splits

### Graphic equalizer
