# Getting Started

!!! warning "This section is a **work in progress**"

## Installation

Running the installer will install on your system:

* The standalone application in `/Applications`;
* The _GRM Tools Atelier_ plugins:
    * AAX for use with _Avid Pro Tools_ in `/Library/Application Support/Avid/Audio/Plug-ins`;
    * AU for use with _Apple Logic_ and compatible hosts in `/Library/Audio/Plugins/Components`;
    * VST3 for use in most hosts in `/Library/Audio/Plugins/VST3`.

<!-- app & plugins are the same -->

## Authorization

Start by running the standalone application. On the first start, you will be invited to authorize
your beta copy. Follow the indicated steps, and paste the code that was sent back to you. Once the
authorization popup disappears, you are ready to go.

## Application audio & MIDI setup

Then, set up your audio interface. In the status bar, click the gear icon to reveal the settings:
- select an output device, and enable all channels connected to your speakers
- optionally select an input device and enable the corresponding channels
- be wary of feedback, and then untick "Mute audio input"

The number of enabled output channels determines the number of channels the modules will work with.

## Use as a plugin

_Atelier_ can be used as a plugin in a VST3/AU/AAX host identically to the application.

> change to: Atelier can be used as a plugin in a VST3/AU/AAX host. The plugin version supports the same features as the standalone application. Patches created on one can be used with the other. ?

## And now?

In the status bar next to the file icons is the patch browser. You can click on it to bring up a list of factory supplied library patches, draw some inspiration and explore the capablilties of _GRM Tools Atelier_.

Happy patching!

<!-- modules: left-to-right, drag -->
<!-- modulations: drag wire -->
<!-- app: starts from last opened patch -->
<!-- in/out gain meters+faders -->
<!-- recorder -->
<!-- slider/cursors: elastic -->
