# Snapshots and randomizer

Easily store and recall the state of a whole processor in one click with _snapshots_. Leave creative decisions to chance and get inspired by surprise with the _randomizer_. All of this instantaneously, or continuously transitioning over time with _morphing_. Shifting shapes, unpredictable destinations... _Atelier_ is about the journey as much as the result.

## Snapshots

Each processor features a bank of eight snapshots at the bottom of its interface:

![A screenshot showing a bank of snapshots at the bottom of a processor](../assets/images/atelier/morphing/morphing-snapshot-banks.png){width=80%}

To capture a snapshot, `⌘`-click on one of the eight snapshot buttons; it lights up, indicating that it contains a custom snapshot. Snapshots are saved with your patches. Each instance of a module has independent custom snapshots.

To recall a snapshot click on its button. The processor's parameters start [morphing](#morphing) from their current state to the state stored in the snapshot. A white outline around a button indicates the currently-selected snapshot; when any parameter is manually moved, the outline becomes grey, indicating the last selected snapshot.

The currently-selected snapshot (from 1 to 8) is itself a parameter, and therefore modulatable and mappable: just draw a cable to the snapshot buttons. A little dot in the corner indicates the actual value of this parameter; it blinks while in transition. You can thus control or randomize the invocation of interesting, pre-saved scenes.

!!! note

    Snapshots include all sliders, buttons and cursors position, and certain other data like the loaded file in _Play_ or the widget sizes in _Viz_.

## Randomizer

Randomization is a way to find new settings you would not have thought of otherwise, or just to sprinkle a bit of surprise on top of your patch. You can randomize:

- **A single parameter:** right-click or press `R` while hovering it,
- **A group of parameter:** select a several cursors, press `R` while hovering over one of their sliders
- **A whole processor:** click **Randomize** (dice icon) next to the snapshot buttons
- **A whole patch:** click **Randomize** (dice icon) in the sidebar

!!! note

    Contrary to [module snapshots](#snapshots) randomization won't add or remove cursors

The **Random amount** slider in the sidebar controls how subtle or dramatic the randomization will be. The lower the amount, the closer the values will remain to their current position. 100% makes the new value completely random.

!!! warning

    Because randomization affects parameters like gain and feedback, patches may suddenly produce very loud sounds. Work with low headphone levels when using this feature!

## Locking

You can exclude certain parameters from randomization or snapshot recall using locking. Right-click on a control or on a module's title bar and select **Lock**. Locked parameters are:

- not randomized,
- not recalled when recalling a snapshot,
- not saved when saving a snapshot.

By locking some parameters and saving a snapshot, you therefore save a "partial" snapshot that will leave some parameters as-is when recalled.

## Morphing

!!! warning "This section is a **work in progress**"

Both snapshot recall and randomization smoothly morph from the current state to the new one, by interpolating each parameter separately. The **Morph time** slider in the sidebar sets this transition time.

If you modify any affected parameters during morphing, that parameter won't be effected by the ongoing morph anymore.

!!! tip

    To smooth out movements controls such as sliders and cursors support **elastic drag**. Hold down `⌘` while dragging the control with the mouse to smoothly move it to the desired position. You can control the elasticity of the drag operation using the **Morph time** slider.

You can trigger several morphing operations simultaneously: The duration of each operation is determined by the value of **Morph time** at the moment you initiate it. This means that you could for example set **Morph time** to one minute, recall a snapshot in a module to initiate a very slow and gradual transition and then set **Morph time** to a much shorter value to randomize a few parameters. All the while the morphing snapshot recall is still on its way.
