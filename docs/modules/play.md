# Play

!!! warning "This section is a **work in progress**"

_A playground for audio files_

_Play_ is a multi-playhead file player with versatile playback region and envelope controls. It allows mangling any source material into a wide variety of outcomes. From percussive glitches to mesmerizing drones. Its built-in recording functionality allows sampling of inputs or resampling of whole patches.

## Features

- Multiple playheads with adjustable playback rate, pitch and position.
- Built-in recording into a temporary buffer with an option to save the recording to a file.
- Looped and single shot playback
- Global and individual transport controls for individual playheads
- Playback in forward and reverse direction (?)

## Context

Spliced tape, varispeed and reversed reels: in the hands of musique concrète artists, the reel-to-reel recorder became an instrument, turning sound itself into material for playful experimentation.
_Play_ taps into this history enabling polyphonic exploartion of the source material without cluttering your desk with snippets of magnetic tape.

When playing sound from a tape speed and pitch are invariably linked. Doubling the playback speed pitches the recorded material up by an octave. Halving it pitches it down by an octave. Playing the same material
in a loop with a difference of 7st (perfect fifth) creates a 3:2 pattern.

Each cursor can have an independent pitch and playback position. Fade is applied on play and pause as an envelope. In looped mode it additionally determines the overlap of the loop region. If fade is at 100% the sound will always overlap. When a region changes during playback the playhead will attempt to restart within the new region. To ensure a smooth and consistent playback it will keep fading out from its original position.

## Controls

### Toolbar

- **Play/pause:** Global transport state. Toggles playback of all playheads. When playing after pause the playheads will resume from their last position. This parameter has as many independently-modulatable instances as there are playheads (see [Modulation](../atelier/modulation.md)).
- **Stop:** Immediately stops playback of all playheads. Per-playhead transport controls will be reset. When playing the next time start positions will be determined by the playhead’s start position parameter.
- **Loop/single shot:** When toggled on: playback will be looped until paused. When toggled: off the region will play when play/pause is on.
- **File browser:** Shows the currently loaded file. Click to bring up a list of audio files in the same directory.
- **Record:** Records the input of the module into a temporary buffer (max. 1 minute).
- **Save:** Save temporary buffer to file.
- **Open file:** Opens an audio file.

### Region overview

The region overview integrates a view of the entire file, the playback region and the envelope. When hovering the mouse over the waveform the pointer becomes a hand. Click-and-drag allows to pan and zoom the viewed region.
The playback region is represented by a blue bar at the top of the region overview. It can be manipulated by drag and drop: vertical drag shrinks/enlarges the region, horizontal drag moves it. Additionally start and end points can be adjusted by dragging the vertical bars at the beginning or end of the region. Holding down alt while dragging anywhere on the waveform allows to define a new playback region.

### Cursor area
Click to add a playhead; double-click a playhead to remove it.

-	**Quantize button:** Click to quantize all playhead pitches to the closest semitone.

- **Rate:** Rate multiplier of playback speed. 0x stops advancing a playhead’s position; positive plays forward; negative plays backwards. This parameter has as many independently-modulatable instances as there are playheads (see [Modulation](../atelier/modulation.md)).

Each playhead has four controls:

- **Play/Pause (button):** Play/pause each individual playhead. A playhead will play if and only if its play/pause state is the opposite of the global playback parameter (XOR relationship)
- **Start (X axis):** Start position in the current region. If the start position lays outside of the playback region (less than 0% or more than 100%) playback will start with a delay.
- **Pitch (Y axis):** Pitch relative to input material in semitones. Lower pitch slows down playback, higher pitch speeds it up.
- **Gain (Z axis):** Output gain of the playhead.

### Global controls

- **Mix:** Crossfades the dry signal (0%) with the wet signal (100%).

The following parameters have as many independently-modulatable instances as there are comb filters (see [Modulation](../atelier/modulation.md)).

- **Position:** Center position of the playback region.
- **Duration:** Duration of the playback region in percentage of the total file length.
- **Spread:** Channel-locality of each playhead. At 0%, each playhead processes only the channels it is assigned to (see the global [Spread](../atelier/multichannel.md#spread) section); at 100%, each playhead processes all channels in parallel (multi-mono).
- **Gain:** Output gain of all playheads. Combined with the gain of playhead.
- **Fade:** Combined length of the fade-in and fade-out envelope. In loop mode it determines the cross fade time.
- **Slant:** Distribution of fade time between fade in and fade out. At 0% the attack is instant and the entire time is used for the fade out; at 50% the envelope is symmetric; at 100% the envelope is slanted towards the right.
- **Ease:** Easing curve of the applied fades, from linear (0%), to abrupt (100%).
- **Declick:** Time of short fade that is applied to suppress clicking. This fade is applied on play, pause and loops.

## Tips and tricks

!!! note

    Dragging an audio file from the patch recorder or the system’s file explorer anywhere into the module chain will create an instance of _Play_ preloaded with the dropped file in place.

### Phasing

To achieve a phasing effect — as popularized by Steve Reich — place two playheads at the same point. Then change the _Pitch_ parameter of one playhead to deviate by a very small amount. Note that holding down the shift key while dragging a slider allows for finer control. A very small difference (in the range of 0.05st) will create effects evocative of comb filtering. Slightly higher differences in playback speed result in faster alternating rhythmical patterns. This effect is easiest explored with short rhythmical loops but works on a large variety of material.

### Granular
### Percussion of drone material using fades
### Cannon distributing playheads on y-axis
### (Maybe rec echoes?)
