# Getting Started

!!! warning "This section is a **work in progress**"

## Installation

Running the installer will install on your system:

* The standalone application in `/Applications`;
* The _GRM Tools Atelier_ plugin, in all :
  * AAX for use with _Avid Pro Tools_ in `/Library/Application Support/Avid/Audio/Plug-ins`;
  * AU for use with _Apple Logic_ and compatible hosts in `/Library/Audio/Plugins/Components`;
  * VST3 for use in most hosts in `/Library/Audio/Plugins/VST3`.
* Example patches to get you started

## Authorization

On the first start (app or standalone), you will be invited to authorize your beta copy. Follow the
indicated steps, and paste the code that was sent back to you. Once the authorization popup
disappears, you are ready to go.

## Application audio & MIDI setup

Then, set up your audio interface. In the status bar, click the gear icon to reveal the settings:

_[Screenshot]_

* select an output device, and enable all channels connected to your speakers
* optionally select an input device and enable the corresponding channels
* optionally set up any MIDI controller below
* watch out for feedback if you have a microphone near your loudspeakers, then untick "Mute audio
  input"

The number of output channels set up determines how many channels the processors will work with.

## Use as a plugin

_Atelier_ can be used as a plugin in a VST3/AU/AAX host, identically to the application. The
standalone app and the plugin offer the exact same functionality. Patches created on one can be used
with the other.

## And now?

_[Screenshot]_

When first started, Atelier just passes sound through. Insert a processor from the splash screen and
start playing around. Click the "+" buttons to add other modules, either processors or modulators.
Processors process sound in series, from left to right; drag a module from its title bar to move it.
Drag a wire from the colored round handle of a modulator and start modulating a parameter.

_[Screenshot: patch browser]_

In the status bar next to the file icons is the patch browser. Click it to bring up the
factory-supplied library of patches, draw some inspiration and explore the capabilities of _GRM
Tools Atelier_.

Happy patching!

<!-- app: starts from last opened patch -->
<!-- in/out gain meters+faders -->
<!-- recorder -->
<!-- slider/cursors: elastic -->
