# DIY Robot Vacuum Garage Tutorial

This guide will walk you through building a custom garage for your robot vacuum cleaner under your kitchen cabinets. This project combines basic woodworking, electronics, and programming skills. Follow the steps below to create a hidden, automatic garage door for your robot vacuum.

## Materials Required
1. **[NodeMCU ESP32 (CP2102)](https://www.bol.com/nl/nl/p/azdelivery-esp32-nodemcu-module-wlan-wifi-development-board-met-cp2102-compatibel-met-arduino-inclusief-e-book/9300000067496370/?Referrer=NLGOOFS&utm_source=google&utm_medium=free_shopping)** - 1 piece
2. **[MG996R Servo](https://www.tinytronics.nl/en/mechanics-and-actuators/motors/servomotors/mg996r-servo)** - 1 piece
3. **[Mean Well Power Supply 5V 7A](https://www.tinytronics.nl/en/power/power-supplies/5v/mean-well-power-supply-5v-7a-switching-power-supply-lrs-35-5)** - 1 piece
4. **[230V Plug](https://www.tinytronics.nl/en/cables-and-connectors/cables-and-adapters/mains-voltage/power-supply-cables/standard-230v-power-supply-cable-1.8m-angled-plug)** - 1 piece
5. **[Jumper Wires (Male-Female)](https://www.tinytronics.nl/en/cables-and-connectors/cables-and-adapters/prototyping-wires/dupont-compatible-and-jumper/dupont-jumper-wire-male-female-20cm-10-wires)** - Several
6. **[Jumper Wires (Male-Male)](https://www.tinytronics.nl/en/cables-and-connectors/cables-and-adapters/prototyping-wires/dupont-compatible-and-jumper/dupont-jumper-wire-male-female-20cm-10-wires)** - Several
7. **[Pine Wood Lath (18 x 44 mm)](https://www.hornbach.nl/p/konsta-vuren-lat-geschaafd-18-x-44-x-2100-mm/5185389/)** - Enough to build a frame

> **Note:** It is assumed that you already have screws, tape, a screwdriver/drill, wood glue, and other basic tools.

## Step 1: Measure the Space
Before starting, ensure that your robot vacuum and its docking station can fit under the kitchen cabinet. Measure the space available under the cabinet and compare it with the dimensions of your robot vacuum and dock.

**Example Measurements for Roborock Q8 Max:**
- **Robot Vacuum:**
  - Width: 350 mm
  - Height: 96.5 mm
  - Depth: 353 mm
- **Charging Dock:**
  - Make sure to measure and add a few centimeters to each side to allow easy maneuvering of the robot.

> **Important:** Ensure there is a nearby power outlet to plug in the power supply. If needed, you can install a power strip.

## Step 2: Build the Frame
Create a frame from the wood laths that your robot vacuum can drive under. Ensure that it is sturdy and allows enough clearance for easy movement.

### Instructions:
- Cut the wood to size.
- Assemble the frame using screws and wood glue.
- Add hinges and a lightweight door (using hardboard) to cover the front. The door should match the color of your cabinet plinth for a seamless look.
  
Place the charging dock in the center of the frame under the cabinet.

## Step 3: Attach the Servo Motor
The servo motor will lift the door to allow the robot vacuum to exit and enter.

### Instructions:
- Attach the MG996R servo motor securely to the frame.
- Ensure the servo arm is positioned to lift the door without obstructing the robot’s path.
- You can use LEGO or other materials to create a custom mount if needed.

## Step 4: Connect the Servo and NodeMCU
The NodeMCU will control the servo. Both the servo and NodeMCU need to be powered by the 5V power supply.

### Connections:
- Connect the 5V line from the power supply to the NodeMCU’s 5V pin (red wire).
- Connect the ground (GND) line from the power supply to the NodeMCU’s GND pin (gray wire).
- Connect the data wire from the servo to the NodeMCU’s GPIO13 pin (yellow wire).


## Step 5: Flash the NodeMCU
This step involves programming the NodeMCU with the necessary code to control the servo.

### Instructions:
- Download and install [Visual Studio Code](https://code.visualstudio.com/).
- Install the necessary [drivers for the NodeMCU](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads).
- Install the PlatformIO extension in Visual Studio Code [(Tutorial)](https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads).
- Download the code from this GitHub repository.
- Build and flash the code onto the NodeMCU.
- Once flashed, connect the NodeMCU to your Wi-Fi network.

## Step 6: Test the Door Mechanism
After flashing the code, a web server will run on the NodeMCU. You can control the servo’s position through HTTP POST commands.

### Instructions:
- Use the [Talend API Tester](https://chrome.google.com/webstore/detail/talend-api-tester) Chrome extension or any other tool to send POST requests to adjust the servo angle.
- Test to ensure that the door opens and closes smoothly.

## Step 7: Integrate with Home Assistant (Optional)
For more advanced users, you can integrate the garage door control with Home Assistant for automated operation.

### Instructions:
This step is under development.

---

By following these steps, you'll have a custom-built, automated garage for your robot vacuum, hidden seamlessly under your kitchen cabinets.
