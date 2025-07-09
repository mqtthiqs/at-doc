# MIDI and automations

_Remote control in your paw_
<!-- hands on? -->

!!! warning "This section is a **work in progress**"

<!-- performance -->
<!-- using in a track? -->

All sliders and buttons can be controlled by MIDI or when _Atelier_ is loaded as plug-in be automated. 

## Features

## MIDI

_Atelier_ can be remote controlled by external MIDI control surfaces. You can use MIDI keyboards, fader banks, knob controllers, etc. to remotely control almost every slider or button in the application.

You can configure the MIDI devices in the [Audio and MIDI setup](../atelier/getting-started.md#application-audio-midi-setup). In the list of available MIDI devices select all MIDI devices that you want to use to control _Atelier_. If you have a MIDI control surface with motorized faders or endless encoders you can select it in **MIDI Output**. In this case whenever your change a patch or move a control using the mouse the hardware will reflect the current parameter value.

If you use _Atelier_ as a plug-in you might need to setup your DAW to forward MIDI messages to the track.

Once your setup is ready mapping a control is very simple:

1.  Right-click on the slider or button you want to control to bring up the parameter menu.

2.  Choose **Learn MIDI**.

    This will bring up the **Parameter mappings window** with the selected parameter highlighted.


3.  Send a MIDI message by moving a fader, turning a knob or pressing a key.

    You will see a description of the MIDI event in the MIDI column of the mappings table. Click anywhere to exit MIDI learn mode and accept the controller assignment. Click on the trash bin icon if you want to abort.

    !!! note
        If the hardware control was previously assigned to another parameter a warning icon will appear next to the MIDI event description. Hover with the mouse over the warning icon to see what parameter it was previously assigned to. Once you accept the new mapping the old one will be overwritten.

        If you want one controller to control several parameters just create a [Control](../modules/control.md) module and [set it up to control several parameters](#control-several-parameters-with-a-macro-control).

  4.  Once the mapping of a parameter is complete a dashed blue outline is drawn around the control to signify that it is mapped.

## Automations (when used as plugin)

When used as a plug-in in a DAW you can automate parameters to record movements and schedule changes that should happen over time. Due to limitations of plug-in formats only a limited pre-defined number of parameters can be made available to DAWs for automation. _Atelier_ provides 64 'slots' of freely assignable automations that can be mapped to any control inside the plug-in. Mapped parameters can then be controlled from the DAW.

To expose a parameter to the DAW's automation system just right-click on the button or slider you want to automate. In the parameter menu choose **Automate Parameter**. _Atelier_ will automatically map the parameter to the next available automation slot. To indicate that a control is mapped its outline is highlighted with a dashed blue line. You can see what automation slot it is mapped to either by right-clicking on the control or by clicking the mappings button in the status bar to bring up the mappings window.

## The parameter mappings window

## Tips and tricks

### Control several parameters with a macro control

### Smooth low-res MIDI using Control