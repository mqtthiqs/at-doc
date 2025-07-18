# Multichannel processing

Spatial thinking is often put aside during composition, and left as a mixing afterthought. Where most creative audio tools only work in mono or stereo, _Atelier_ brings spatial decisions to the composition stage. Want to process mono sound? Fine. Want to render your generative patch on a 32-channel loudspeaker dome? Works too. There are no limits other than your available CPU.

Essentially, _Atelier_ does not care how many channels you use, nor makes any assumption where they are placed. All processors apply the same processing on all the channels. The result can then be downmixed or spatialized into the required format using [any](https://plugins.iem.at/) [available](https://inagrm.com/en/store/product/15/spaces) [tool](https://forum.ircam.fr/projects/detail/spat/). Therefore, a patch produced in one setup will automatically scale to fit any other setup, following a few simple rules.

## Setup

The number of _outputs_ set up determines how many channels processors work with.

- In the app, set it in the [Audio and MIDI configuration](getting-started.md#application-audio-midi-setup).
- The plug-in adapts to the numbers of channels of the track it is instantiated on.

If the number of inputs and outputs differ, [fanning and folding](#fanning-and-folding) is applied to distribute the channels as evenly as possible. For instance, the mono input from a microphone will be distributed on all output channels.

## Channel colors

Throughout the system, channels are identified with specific colors (Ch. 1 is green, 2 is red etc.).

![The first 8 channel colors represented on cursors](../assets/images/atelier/multichannel/multichannel-colors.png){width=65%}

They are chosen so that their superposition is always white. Therefore, throughout _Atelier_, a saturated color identifies a specific channel, and the closer to white it gets, the more it represents a blend of several channel. White means "all channels".

## Spread

Throughout _Atelier_, the **Spread** parameter is your key to distributing processors to channels. It controls _channel locality_: focused on some channels vs. spread out to all.

![A screenshot illustrating channel assignments to cursors in Comb](../assets/images/atelier/multichannel/multichannel-assigned-channel-comb.png){width=50%, align=right}

Single processing units (a generator, a comb filter etc.) are represented by _cursors_: round, colored dots. Each cursor automatically gets assigned one or more channels by [fanning and folding](#fanning-and-folding). These are visible in the dark panel below when a cursor is selected, next to its name.

The **Spread** parameter determines what channel each unit (here, comb filter) processes:

- When **Spread** is 0%, the processing is fully local to its assigned channels. Here, **Comb 1** will only process Channels **1** and **5**.
- When **Spread** is 100%, all channels are processed the same way. Here, each of the 4 comb filters processes each channel, and the result is mixed per channel.

!!! note

    This assignment is not editable. It is what makes this system adaptive to any I/O configuration.

## Fanning and folding

Channels are assigned to units so that all channels are processed and all units are used. It follows a few simple rules:

- If there are more channels than units, each unit is assigned several channels (_fanning_). In particular, a single unit will always be assigned all channels.
- If there are as many or more units than channels, each unit is assigned one channel, with some units possibly sharing channels; therefore their output is mixed (_folding_). In particular, if there are as many channels than units, each unit is simply assigned a unique channel.
- For a given unit, channels are assigned such that they are the most "spread out", i.e. minimize "clusters" of adjacent channels (1,2,3). For instance, two comb filters acting on four channels will give the assignment (1,3) for Comb 1 and (2,4) for Comb 2.

This principle applies as well to [distribute inputs to outputs](#setup), and to match file and processor channels in [_Play_](../modules/play.md).
