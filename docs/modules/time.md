# Time

!!! warning "This section is a **work in progress**"

_Delay_

Take some audio as input, and output it as-is... just a little while later: a _delay_ seems to be
barely a musical device. This is precisely what makes it an indispensable tool: like a stick or a
rope, it can be a thousand things!

<!-- purely time-domain operations -->
<!-- unlike a traditional delay -->
<!-- 10 milliseconds or 10 minutes -->

At its heart, _Time_ is a multi-tap delay with granular playback and per-tap built-in resonant
filter, taking inspiration from GRM's Phonogene and Morphophone family of instruments.

## Features

- freely-tunable delay with multiple tap (up to 32 taps)
- per-tap resonant band-pass filter
- variable-rate write/read speed
- continuous control of repitching vs. granular (crossfading) playback

## Context

<!-- magnetic tape or digital samples: work the same -->
<!-- The advent of magnetic tape -->

## Controls

### Cursor area

Click to add a tap; double-click a tap to remove it. Each tap reads from the same audio buffer at
different delay times; it is then band-pass-filtered indepently and summed to the output and to the
feedback path.

- **Clear audio buffer:** instantly clears all audio material in the buffer.
- **Y axis parameter:** The combo box determines which parameter is displayed on the Y axis (and
  consequently which is displayed on the Z axis, ie. cursors' halo size): either **Gain** or
  **Cutoff**.

The following parameters are local to each tap:

- **Delay (X axis):** Delay time of the tap.
- **Gain (Y or Z axis):** Gain of the tap.
- **Cutoff (Z or Y axis):** Band-pass filter cutoff frequency of the tap.

The following parameters have as many independently-modulatable instances as there are taps (see
  [Modulation](../atelier/modulation.md)):

- **Delay scale:** Scales all delay times by the given ratio.
- **Transposition:** Transposes the cutoff frequencies of all taps.

### Global controls

- **Mix:** Crossfades between the dry signal (0%) and the wet signal (100%).
- **Speed:** Transport speed, or how fast the digital "tape" is moving. Affects the speed at which
  the input audio is written to the buffer, as well as the read speed. At speeds < 1x, there are
  less samples to record the incoming audio, so the fidelity is (interestingly) degraded.
- **Rotate:** Rotates the channels in the feedback path (see **Feedback**). At 0%, each channel
  feeds back into itself; at 100%, each channel feeds back into the next one, and the last one feeds
  back into the first, resulting in a generalized ping-pong delay-like effect.

The following parameters have as many independently-modulatable instances as there are taps (see
  [Modulation](../atelier/modulation.md)):

- **Spread:** Channel-locality of each tap. At 0%, each tap outputs only on the channels it is
  assigned to (see the global [Spread](../atelier/multichannel.md#spread) section); at 100%, each
  tap plays all channels in parallel (multi-mono).
- **Gain:** Global gain of all taps
- **Feedback:** Amount of the sum of all taps that is fed back into the input. Careful: with several
  taps, may bloom and provoke loud sounds (even under 100%). To make blooming less aggressive, the
  feedback path includes a soft-clipping stage.
- **Bandpass:** How much band-pass filtering is applied to each tap. The bigger this value, the more
  resonance (or Q-factor) the band-pass filter has. 0 means no filtering at all.
- **Repitch/Fade:** Duration of the tap's playback grains. When >0, a change in delay time will
  result in a crossfade, hence no repitch; at 0, grains are so small that playback is continuous,
  which repitches the input when delay time is changed. Grains are always played at speed 1, so
  lowering **Speed** while this is >0 will result in constant repitching.

## Tips and tricks

### Frippertronics

<!-- As popularized by Robert Fripp, -->

### Flangers, choruses and all that

### No delay

### Haas effect
