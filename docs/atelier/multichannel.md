# Multichannel processing

Spatial thinking is often put aside during composition, and left as a mixing afterthought. Where most creative audio tools only work in mono or stereo, _Atelier_ brings spatial decisions to the composition stage. Want to process mono sound? Fine. Want to render your generative patch on a 32-channel loudspeaker dome? Works too. There are no limits other than your available CPU.

Essentially, _Atelier_ does not care how many channels you use, nor makes any assumption where they are placed. All processors apply the same processing on all the channels. The result can then be downmixed or spatialized into the required format using [any](https://plugins.iem.at/) [available](https://inagrm.com/en/store/product/15/spaces) [tool](https://forum.ircam.fr/projects/detail/spat/). Therefore, a patch produced in one setup will automatically scale to fit any other setup, following a few simple rules.

## Setup

All processors work with the number of _outputs_ set up.

- In the app, set it in the [Audio and MIDI configuration](getting-started.md#application-audio-midi-setup).
- The plug-in adapts to the numbers of channels of the track it is instantiated on.

If the number of inputs and outputs differ, [fanning and folding](#fanning-and-folding) applies to distribute the channels as evenly as possible. For instance, the mono input from a microphone will be available on all channels.

## Channel colors

Throughout the system, channels are identified with specific colors (Ch. 1 is green, 2 is red etc.). They are chosen so that their superposition is always white. Therefore, throughout _Atelier_, a saturated color identifies a specific channel, and the closer to white it gets, the more it represents a blend of several channel.

## Multichannel processing in modules

!!! warning "This section is a **work in progress**"

Whenever you add a tone generator or a filter in a module each of them will automatically have one or more channels associated with it. 

![A screenshot of Gen showing a four note chord in a four channel system](../assets/images/atelier/multichannel/multichannel-gen-chord.png){width=50%, align=right}

For example: if you create a simple chord in [Gen](../modules/gen.md) each individual note of that chord will sound loudest on its corresponding channels. The actual distribution of those channels depends on the number of output channels of the application and the number of notes in the chord. In [Gen](../modules/gen.md) note oscillators are represented using 'cursors' on a grid. These are color-coded to display the associated channels. You can get a more detailed overview by selecting a note. In the panel below the cursor area, next to the title you'll see circles representing the associated channels.

Similarly, if you add a filter in a processing module e.g. in [Comb](../modules/comb.md) or [Band](../modules/band.md) or a delay tap in [Time](../modules/time.md) this filter will be applied to the associated input channels.

### Fanning and folding

In the case there are as many filters as there are channels it is easy: each filter gets one single channel. But what happens if the number of filters doesn't match the number of channels? This is where **fanning and folding** comes into play. It is a way of distributing channels ensuring that all channels are processed and all filters are applied. In essence if you have less filters than channels – under the hood – the filters are duplicated to match the number of channels. Conversely if you have more filters than channels the input channels will be duplicated and the output of the filters summed. This means that if you place for instance a single comb filter in [Comb](../modules/comb.md) at 440Hz all input channels will be resonating at that frequency. On the other hand if you have more filters than channels the filters process the channels in an alternating pattern.

<!-- screenshot -->

### Spread

To control the amount of channel-locality of each generator, playhead or filter most modules provide a **Spread** control. If **Spread** is at 0% they will only sound on their associated channels. When the value is above 0% also filters that aren't assigned to a channel will be processed and mixed in by the specified amount. For instance if a [Comb](../modules/comb.md) module had two filters at different frequencies and **Spread** is at 50% the filter assigned to the processed channel would sound at full gain while the other filter would only be half as loud. Cursors that visually represent a generator, playhead or filter in a module are drawn using colors representing the assigned channels. The higher the **Spread** amount is the whiter cursors will appear in the cursor area.

Note that the **Spread** parameter has as many [parameter instances](modulation.md#parameter-instances) as there are cursors. Meaning that when you modulate **Spread** each filter has its own spread value and will "bleed" to other channels accordingly.
