Not a pitch shifter
{.tagline}

# ![Pitch module logo](../assets/images/modules/pitch/pitch.svg){.module-logo} Pitch

!!! warning "This section is a **work in progress**"

![Screenshot of the Pitch module](../assets/images/modules/pitch/pitch.png){.main-pic}

A pitch shifter changes the pitch of a sound without changing its duration. On the surface, this is what _Pitch_ is: a bank of pitch shifters combined with delays, placed on a convenient 2D surface. But rather than delivering just this, _Pitch_ deconstructs the concept and exposes it, piece by piece. Used for classic pitch tricks or to explore a wealth of novel ideas, _Pitch_ is more than just what its name suggests.

## Features

- Up to 8 pitch shifters/granular delays, placed on an intuitive 2D surface
- Wide transposition & delay range: from +48 semitones to -∞, up to 10 seconds delay
- Freeze function to scrub inside buffer
- Widely adjustable window size & correlation detection

## Context

Feed sound into _Pitch_, click to add a pitch shifter: the sound is delayed and transposed.

But what actually happens is not magic: the input is recorded into a buffer, and two overlapping play heads continuously read small grains of sound around the cursor (the delay time), at a speed proportional to the transposition required. Basic pitch shifting is just this: playing small overlapping grains of the input sound at speeds different than the recording speed!

Combined with correlation detection to adjust grain positions, this overlap/add technique is the archetype of pitch shifting algorithms ([_WSOLA_](https://ieeexplore.ieee.org/document/319366)), and with short grain size and strong correlation detection, it works especially well on monophonic sounds; otherwise artifacts, like transient doubling or amplitude modulation, start to be heard.

_Pitch_ can act as a convincing bank of pitch shifters, but really shines when breaking free from its traditional use, leveraging its very nature: with a wide range of grain sizes (from 4 ms to 2 seconds), and adjustable correlation detection, you can explore playing with granular scrubbing, transient doubling or amplitude modulation artifacts in new, creative ways.

---

## Controls

### Cursor area

Click to add a pitch shifter; double-click a pitch shifter to remove it. Each pitch shifter runs in parallel with its own buffer; they are then mixed to the output.

The following parameters are local to each pitch shifter:

- **Delay (X axis):** Pitch shifter delay time.
- **Pitch (Y axis):** Pitch shifting amount. Sets the grains playback rate relative to normal rate.
- **Gain (Z axis):** Pitch shifter gain.
- **Freeze** button: Stops feeding audio into this pitch shifter buffer, and read current content in-place.

The following parameters have as many independently-modulatable instances as there are pitch shifters (see [Modulation](../atelier/modulation.md)):

- **Freeze** button: Inverts the Freeze state of all pitch shifters (see local **Freeze** parameter).
- **Delay ratio:** Scales all delays by the given ratio.
- **Rate:** Scales all pitches by the given ratio. Negative ratios mean reverse grain playback.

Finally two buttons at the top modify the state of _Pitch_:

- **Quantize**: click to quantize all pitches to the closest semitone.
- **Clear all buffers**: click to silence all delay buffers

### Global controls

- **Mix:** Crossfades between the dry (0%) and the wet signal (100%).

The following parameters have as many independently-modulatable instances as there are pitch shifters (see [Modulation](../atelier/modulation.md)):

- **Spread:** Channel-locality of each pitch shifter. At 0%, each pitch shifter processes only the channels it is assigned to (see the global [Spread](../atelier/multichannel.md#spread) section); at 100%, all pitch shifters process all channels in parallel (multi-mono).
- **Gain:** Global gain of all pitch shifters.
- **Feedback:** How much of each pitch shifter's output is reinjected into its input. Feedback is local to each pitch shifter
- **Window:** Duration of the pitch-shifted grains.
- **Detect:** Precision of the correlation detection. At 100%, a correction is applied to each grain starting position to correlate better with the currently playing grain to avoid phase cancellations. At 0%, this correction is disabled, resulting in an amplitude modulation-type effect.
- **Rotate:** Rotates the channels in the feedback path. At 0%, each channel's feedback paths is completely independent; at 100%, each channel feeds back into its successor and the last one feeds back into the first, resulting in a generalized ping-pong delay-like effect.

---

## Tips and tricks

### Harmonize

![A screenshot showing Pitch used as a harmonizer](../assets/images/modules/pitch/pitch-tips-harmonize.png){width=50%, align=right}


A staple of studio effects: with a voice or solo instrument as input, just add two 0-delay pitch shifters at pitches close to zero. Reduce **Spread** to increase the stereo effect.

### Melodies



### Ring-modulation

### Walk the frozen buffer

### Granulator

<!-- doesn't repitch when moving Delay -->
