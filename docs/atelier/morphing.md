# Morphing

!!! warning "This section is a **work in progress**"

In _Atelier_ there are multiple ways for a patch or parts of it to transition from one state to another. Module snapshots for instance allow you to store and recall all cursors and parameters that make up a specific sound. Randomization on the other hand is a tool to leave the charted territories and embark on a journey to surprises by the roll of a dice.

These changes can be instantaneous or continuously transition over time. Shifting shapes and **morphing** from one place to the other. All controlled by a single **Morph time** slider on the sidebar of the main window.

During such a transition _Atelier_ keeps a map of all effected parameter values of the current state and a map of the target values. It will continuously update the parameters with an interpolated value until it reaches the target. You can trigger several morphing operations simultaneously. The duration of each operation is determined by the value of **Morph time** at the moment you initiate it. This means that you could for example set **Morph time** to one minute, recall a snapshot in a module to initiate a very slow and gradual transition and then set **Morph time** to a much shorter value to randomize a few parameters. All the while the morphing recall is still on its way.

If you touch any of the effected parameters during a morphing operation that parameter will stay at the value you selected and won't be effected by the morph anymore.

!!! tip

    As a way to smooth out movements, controls such as sliders and cursors support **elastic drag**. Hold down cmd while dragging the control with the mouse to smoothly move them to the desired position. You can control the elasticity of the drag operation using the **Morph time** slider.

## Module snapshots

<!-- preloaded with examples (tips and tricks) -->
<!-- what's part, what not? -->
<!--    cursor activation -->
<!--    not modulations or modulation amount -->
<!-- storing snapshots, recalling (blinking) -->
<!-- stored in patch (note: currently no way to export snapshots but planned) -->
<!-- reset to initials? -->
<!-- modulatable like anything else -->

## Randomizer

<!-- randomization amount -->
<!-- randomizing whole patches -->
<!-- randomizing modules -->
<!-- what's part, what not? -->
<!--    not cursor activation -->
<!--    nor modulations or modulation amount -->
<!-- randomizing parameters -->

## Locking

<!-- what's locking for -->
<!-- locking modules -->
<!-- locking parameters -->
<!-- locking groups -->
