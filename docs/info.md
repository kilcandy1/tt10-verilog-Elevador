<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Explain how your project works
To build the three-story elevator system, we need to take into account that we will use two push buttons, which are the inputs that will allow us to send a signal to the DC motors, which in turn will be connected to an L298N module (H bridge). These two motors
will allow us to move the elevator either up or down. We will also use a 7-segment display to be able to see the floor number we are on. The three-story elevator project would look like this.

## How to test
o build and operate the three-story elevator system using the components you described (two push buttons, DC motors, L298N H-bridge, and a 7-segment display), we can break down the process into several key steps. Here's a guide on how you can use the components to control the elevator and display its floor number.

## Explain how to use your project

Components Needed:
Two Push Buttons: These will be the input controls for the elevator.

Button 1 (Up): This button will move the elevator up to the next floor.
Button 2 (Down): This button will move the elevator down to the previous floor.
Two DC Motors: These motors will move the elevator platform up and down.

Motor 1: Controls the elevator's movement in the upward direction.
Motor 2: Controls the elevator's movement in the downward direction.
L298N H-Bridge: This motor driver controls the direction of the motors. It allows you to change the motor’s direction to either move the elevator up or down.

7-Segment Display: This will show the current floor number of the elevator.

It will display numbers 1, 2, or 3 depending on the current position of the elevator.
Basic Operation Overview:
User Input (Push Buttons):

The Up button will increase the floor number and move the elevator to a higher floor.
The Down button will decrease the floor number and move the elevator to a lower floor.
The push buttons will control the DC motors via the L298N H-Bridge, which determines the movement direction.
Motor Control:

Upward Movement: When the Up button is pressed, the L298N will control the motors to move the elevator up to the next floor.
Downward Movement: When the Down button is pressed, the L298N will control the motors to move the elevator down to the previous floor.
Display Control:

A 7-segment display will show the current floor number. If the elevator is on the ground floor, the display shows 1; if on the second floor, it shows 2; and if on the top floor, it shows 3.

## External hardware
2 buttons

DC motors: The direct current motor, also called direct current motor, (DC motor or DC motor) is a machine that converts electrical energy into mechanical energy, causing a rotary movement, thanks to the action of a magnetic field.

7-segment display: It is an opto-electronic device that allows numbers from 0 to 9 to be displayed. There are two types of display, common cathode and common anode.

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
2 buttons

1 DC motors: T

one 7-segment display

