TODO
{.tagline}


# ![Pitch module logo](../assets/images/modules/pitch/pitch.svg){.module-logo} Pitch

!!! warning "This section is a **work in progress**"

![Screenshot of the Pitch module](../assets/images/modules/pitch/pitch.png){.main-pic}

## Features

## Context

<!-- archetype of a pitch shifter; much more -->
<!-- focus on artifacts -->

---

## Controls

### Cursor area

- **Quantize** button: click to quantize all pitches to the closest semitone.
- **Clear all buffers** button: click to silence all delay buffers

The following parameters are local to each pitch shifter:

- **Delay (X axis):** Pitch shifter delay time.
- **Pitch (Y axis):** Pitch shifting amount. Sets the grains playback rate relative to normal rate.
- **Gain (Z axis):** Pitch shifter gain.
- **Freeze** button: Stops feeding audio into this pitch shifter buffer, and read current content
  in-place.

The following parameters have as many independently-modulatable instances as there are pitch
 shifters (see [Modulation](../atelier/modulation.md)):

- **Freeze** button: Inverts the Freeze state of all pitch shifters (see local **Freeze** parameter).
- **Delay ratio:** Scales all delays by the given ratio.
- **Rate:** Scales all pitches by the given ratio. Negative ratios mean reverse grain playback.

### Global controls

- **Mix:** Crossfades between the dry (0%) and the wet signal (100%).

The following parameters have as many independently-modulatable instances as there are pitch
 shifters (see [Modulation](../atelier/modulation.md)):

- **Spread:** Channel-locality of each pitch shifter. At 0%, each pitch shifter processes only the
  channels it is assigned to (see the global [Spread](../atelier/multichannel.md#spread) section);
  at 100%, all pitch shifters process all channels in parallel (multi-mono).
- **Gain:** Global gain of all pitch shifters.
- **Feedback:** How much of each pitch shifter's output is reinjected into its input.
- **Window:** Duration of the pitch-shifted grains.
- **Detect:** Precision of the correlation detection. At 100%, a correction is applied to each grain
  starting position to correlate better with the currently playing grain to avoid phase
  cancellations. At 0%, this correction is disabled, resulting in an amplitude modulation-type effect.
- **Rotate:** Rotates the channels in the feedback path. At 0%, each channel's feedback paths is
  completely independent; at 100%, each channel feeds back into its successor and the last one feeds
  back into the first, resulting in a generalized ping-pong delay-like effect.

---

## Tips and tricks

### Melodies

### Ring-modulation

### Walk the frozen buffer

### Granulator

<!-- doesn't repitch when moving Delay -->
