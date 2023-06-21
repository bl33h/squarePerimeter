# squarePerimeter
A program that calculates the perimeter of a square based on user input. It uses the formula x = l * 4, where x is the perimeter and l is the length of the square's side. The program prompts the user to enter the side length, performs the calculation, and displays the result. It supports multiple calculations through a loop and returns a no-error signal to the operating system.

<p align="center">
  <br>
  <img src="https://concept-stories.s3.ap-south-1.amazonaws.com/test/Stories%20-%20Images_story_104908/image_2020-02-20%2005%3A55%3A36.028812%2B00%3A00" alt="pic" width="500">
  <br>
</p>
<p align="center" >
  <a href="#Files">Files</a> •
  <a href="#Features">Features</a> •
  <a href="#how-to-use">How To Use</a> 
</p>

## Files
- src: the file that implements de solution.
- others: algorithm flowchart

## Features
The main features of the application include:
- User Input: It prompts the user to enter the value of the side length of the square.
- Calculation: It calculates the perimeter of the square using the formula x = l * 4, where x is the perimeter and l is the side length.
- Looping: It allows multiple calculations by repeating the calculation process until a certain condition is met.
- Output: It displays the calculated perimeter value to the user.
- Error Handling: It returns a no-error signal to the operating system upon completion.
- Assembly Language: It is written in assembly language, specifically targeting a specific architecture.

## How To Use
To clone and run this application, you'll need [Git](https://git-scm.com) and a [x86 emulator or simulator](https://www.qemu.org/) installed on your computer. Or a RaspberryPi in case you have one. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/bl33h/squarePerimeter

# Open the folder
$ cd src

# Assemble the app
$ as -o CalculoPerimetroCuadrados.o CalculoPerimetroCuadrados.s
$ ld -o CalculoPerimetroCuadrados CalculoPerimetroCuadrados.o

# Run the app
$ ./CalculoPerimetroCuadrados
```
