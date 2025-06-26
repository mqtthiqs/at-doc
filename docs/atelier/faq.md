# Frequently Asked Questions

!!! warning "This section is a **work in progress**"

## Sales policies

### Is there a demo version of _Atelier_?

Yes, _Atelier_ runs in demo mode until you activate it. In demo mode, saving is not supported, and
the sound fades regularly to silence. Download the unique installer to get it; you don't need an
account for this.

### Can I install _Atelier_ on more than one computer?

Yes. Each license purchased comes with 3 activations, assignable freely.

### Do you offer education discount?

Yes, we happily do! Students and teachers benefit from a 35% discount. When creating an
account, just check the right option and the rate will be applied automatically.

### Can I resell or give my license to another user?

We do not support license transfer at this point.

### What is your return or refund policy?

_[TODO]_

## Using the software

### Do you support 42th-order ambisonics, Dolby Atmos, DTS:X?

We don't, and [it is a choice](multichannel.md). _Atelier_ supports multichannel processing in a discrete and
format-agnostic way. For _Atelier_, a channel is a channel: we make no presupposition on where it is
placed in space or if it has a special function. This allows more flexibility at the composition
stage, and you can rely on plenty of [other tools](https://plugins.iem.at/) to encode a set of
discrete channels coming from _Atelier_ into your specific format.

### Something seems wrong; where are the global settings stored?

First, if you think you encountered a bug, please contact us! You are probably not alone.

The application's audio configuration, recent files and last loaded patch are stored in a hidden
file in your `Application Support` directory. In case you need to delete it, back it up or restore
it:

- Open a Finder window
- In the "_Go_" menu, select "_Go to folder..._" or type ⇧-⌘-G
- In the popup, enter `~/Library/Application Support/`
- The configuration file is `com.INAgrm.GRMTools.Atelier.settings`

### I customized my module presets, but they disappeared after starting a new patch

Module presets are saved and can be different for each instances of each module. There is no way to
save (yet). Do reach out if you think it would be useful to you.

### Presets morphing is cool, but where do I set the morph time?

The _Morph Time_ slider is in the sidebar on the right. It controls preset morphing, elastic moves,
and randomization morphing.
