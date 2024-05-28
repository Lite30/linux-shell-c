# MyShell: Custom Command Line Interpreter

This repository contains the source code and documentation for MyShell, a simple Linux shell developed using C programming language.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Commands](#commands)
- [Implementation Details](#implementation-details)
- [Makefile](#makefile)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

MyShell is a simple command line interpreter that mimics the functionality of a standard Linux shell. It supports several internal commands and introduces a unique custom command for additional functionality.

## Features

MyShell supports the following internal commands:

1. `mycd <directory>`: Change the current directory to `<directory>`. Reports the current directory if `<directory>` is not provided. Reports an error if the directory does not exist.
2. `myclr`: Clears the screen.
3. `mydir <directory>`: Lists the contents of `<directory>`.
4. `myenviron`: Lists all environment strings.
5. `myecho <comment>`: Displays `<comment>` followed by a new line.
6. `myhelp`: Displays the user manual using the standard `more` filter.
7. `mypause`: Pauses the shell until 'Enter' is pressed.
8. `myquit`: Quits the shell.
9. `myone`: A custom command providing unique functionality not found in standard Linux commands.

Additionally, the command line prompt contains the pathname of the current directory.

## Installation

To install MyShell, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/myshell.git
   cd myshell
2. Compile the source code using the provided Makefile by entering:
   ```bash
   make

## usage
1. To use the shell simply enter:
   ```bash
   ./myshell
in the terminal and a welcome screen should appear.

## commands
Internal Commands

`mycd <directory>`

 - **Changes the current directory to <directory>**.
 - **If <directory> is not provided, it reports the current directory**.
 - **Reports an error if the directory does not exist**.
 -**Changes the PWD environment variable accordingly**.

`myclr`

 - **Clears the terminal screen**.

`mydir <directory>`

 - **Lists the contents of <directory>**.

`myenviron`

 - **Lists all the environment variables**.

`myecho <comment>`

 - **Displays <comment> followed by a new line. Reduces multiple spaces/tabs to a single space**.

`myhelp`

 - **Displays the user manual using the standard more filter**.

`mypause`

 - **Pauses the shell until 'Enter' is pressed**.

`myquit`

 - **Exits the shell**.
 
`myone`
 - **A unique command that provides functionality not offered by standard Linux commands.
   Detailed description and usage instructions for myone are provided below**.
   
## implementation-details
Implementation Details

`mycd <directory>`

 - **Uses the `chdir` system call to change the directory.**.
 - **Updates the `PWD` environment variable.**.
 - **Reports an error if the directory does not exist**.
 -**Changes the PWD environment variable accordingly**.


`myclr`

 - **Uses ANSI escape codes to clear the screen.**.

`mydir <directory>`

 - **Uses `opendir`, `readdir`, and `closedir` functions to list directory contents.**.

`myenviron`

 - **Iterates through the environment variables using the `environ` pointer.
`myecho `

 - **Prints the arguments to the standard output, ensuring multiple spaces/tabs are reduced to a single space.**.

`myhelp`

 - **Uses the `more` filter to display the user manual, typically found in a help text file.**.

`mypause`

 - **Pauses the shell until 'Enter' is pressed**.

`myquit`

 - **Exits the shell using the `exit` system call.**.
 
`myone`
 - **A unique command that provides functionality not offered by standard Linux commands.**.



Implementation:

    Reads from the /proc/uptime file and displays the system uptime in a human-readable format.
## makefile
A Makefile is provided to compile the source code. Use the following command to compile:

    ```bash
    make

Sample Makefile

makefile

# Makefile for MyShell

CC = gcc
CFLAGS = -Wall -Werror -std=c99
TARGET = myshell

all: $(TARGET)

$(TARGET): myshell.o
	$(CC) $(CFLAGS) -o $(TARGET) myshell.o

myshell.o: myshell.c
	$(CC) $(CFLAGS) -c myshell.c

clean:
	rm -f *.o $(TARGET)

## contributing
 Fork the repository.
 Create a new branch (`git checkout -b feature-branch`).
 Make your changes and commit them (`git commit -m 'Add new feature'`).
 Push to the branch (`git push origin feature-branch`).
 Open a Pull Request.

## license
This project is licensed under the MIT License - see the LICENSE file for details.
## contact

