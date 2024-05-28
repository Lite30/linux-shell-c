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
   `make`
