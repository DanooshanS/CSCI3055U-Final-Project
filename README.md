Name: Danooshan Sureshkumar  
Course: CSCI3055U  

# CSCI3055U-Final-Project
This is a github repository for my final project in CSCI3055U  

Language: Elixir  
Description: Elixir is a dynamic functional general purpose programming language that uses the Erlang VM.  

## Installation: 
     Windows:  
          1) Install directly from website: https://elixir-lang.org/install.html  
               - NOTE: Critical that the bin and other neccesary files are appended to the PATH in system variables.  
     Mac:  
          1)Homebrew:   
               - Run in terminal: /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
               - Run in terminal: brew update  
               - Run in terminal: brew install elixir  
          2)Macport:  
               - sudo port install elixir  
     Ubuntu:  
          1)Run in terminal: wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb  
          2)Run in terminal: sudo apt-get update  
          3)Run in terminal: sudo apt-get install esl-erlang  
          4)Run in terminal: sudo apt-get install elixir  
## Libraries:
Elixirs standard library is known as Elixir and is installed along with it.   

## Compiling and running:
     Once installed, in command prompt or terminal navigate to directory with elixir files (<filename>.ex)
          1) Run: iex 
          This will open an interactive shell for running code.
          2) Compile: c(<filename>)
               - if program does not use modules: Any code written in the file will be ran.
               - if program does use modules: Code can be called using <Module name>.<function name> will run any code 
                 written within the function.


