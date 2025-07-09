TODO
{.tagline}

# ![Gen module logo](../assets/images/modules/gen/gen.svg){.module-logo} Gen

!!! warning "This section is a **work in progress**"

![Screenshot of the Gen module](../assets/images/modules/gen/gen.png){.main-pic}

## Features

## Context

<!-- generators share waveforms unless modulated -->

## Controls

### Waveform area

All parameters in the waveform area have as many independently-modulatable instances as there are
 generators (see [Modulation](../atelier/modulation.md)).

- **Sine gain:** Gain of the sine oscillator.
- **Triangle gain:** Gain of the triangle oscillator.
- **Rectangle gain:** Gain of the rectangle oscillator.
- **Noise gain:** Gain of the filtered noise generator.
- **Sine timbre:** Amount of sine phase modulation.
- **Triangle timbre:** Morphs from saw to triangle wave.
- **Rectangle timbre:** Rectangle pulse width. Morphs from square wave to single-sample impulse.
- **Noise timbre:** Morphs from low-pass-filtered to resonant band-pass-filtered white noise.

#### Input envelope follower section

- **Duck/Follow:** At 0%, all generators are constantly on. At positive values (Follow), each
  generator gain follows more-and-more the amplitude envelope of the input signal. At negative
  values (Duck), each generator gain is reduced more-and-more when the envelope of the input signal
  increases.
- **React:** Envelope follower reactivity, or time it takes for the envelope follower to rise or
  fall when the input's gain envelope rises or fall. At 0s, it reacts instantly, resulting in ring
  modulation-type effects.
- **Select:** Frequency selectivity of the input envelope follower. How much each generator envelope
  follower listens only to frequencies close to that of this generator. This value is the Q factor
  of a band-pass filter applied to the input before envelope-following.

### Cursor area

- **Ratio:** Ratio by which all generator's frequencies are multiplied. Has as many
 independently-modulatable instances as there are generators (see
 [Modulation](../atelier/modulation.md)).

The following parameters are local to each generator:

- **Pitch:** Pitch of the generator.
- **Spread:** Channel-locality of the generator (see **Spread** below). At 0%, the generator outputs
  only to the channels it is assigned to (see the global [Spread](../atelier/multichannel.md#spread)
  section); at 100%, the generator outputs on all channels.
- **Gain:** Individual gain of the generator.

### Global controls

- **Mix:** Crossfades between the input signal (0%) and the oscillators signal (100%).

The following parameters have as many independently-modulatable instances as there are generators
 (see [Modulation](../atelier/modulation.md)):

- **Spread:** Global channel-locality of all generators. This value is added to the local **Spread** of each generator.
- **Gain:** Global gain of all generators.

## Tips and tricks

### Vocoder
