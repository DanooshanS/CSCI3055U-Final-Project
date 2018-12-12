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
Elixirs standard library is known as Elixir and is installed along with it, no code is required to utilize the functions.   

## Compiling and running:
     Once installed, in command prompt or terminal navigate to directory with elixir files (<filename>.ex)
          1) Run: iex 
          This will open an interactive shell for running code.
          2) Compile: c("<filename>")
               - if program does not use modules: Any code written in the file will be ran.
               - if program does use modules: Code can be called using <Module name>.<function name> will run any code 
                 written within the function.
          ALTERNATIVE: If your program does not use modules, code could be ran directly from the terminal instead of within the the
                       interactive shell, then you can run code simply with: elixirc <filename>
      
## Syntax:  
     Modules: Contains all of the elixir functions you write.
              MUST begin with an uppercase letter.
```elixir
defmodule Module do
     ...
end
```
     Data types: See example1.ex for examples
     
          - Integer: 15; Can be of infinite size unlike other languages
          - Float: 3.14; Can be accurate up to 16 digits
          - Atom: :Bob; 
          - String: "Hello";
          
          - Tuple: {1, "b", 3.00, :Four};
          - List: [1, 2, 3, 4];
          - Map: %{"a" -> 1, 2 -> "B"};
          
     Variables: See example2.ex for examples. 
                Once a variable of any type is defined, it CANNOT be changed. 
                MUST begin with an _ or lowercase letter
```elixir
variablename = data
```
     Getting input or producing output: See example3.ex for examples
     Data can be outputted using the put function by using #{}
```elixir
IO.puts "Hello World"
variable = IO.gets "Enter variable here: "
IO.puts "Variables : #{variable}"
```
     Functions: See example3.ex for examples
                MUST begin with a lowercase letter
                To call functions they can be called by name, or values can be passed directly using |>
```elixir
IO.puts "This function: #{functionname(parameters)}"
     #or functions can be called by:
"Hello World" |> IO.puts
# -> This prints Hello World by passing a string to the IO.puts function
def functionname do
     ...
end
     #or
def functionname(parameters) do
     ...
end
```
     Conditionals: See example4.ex for examples
                   Includes common comparitors such as: ==, >=, <=, !=, <, >
                   Includes uncommon comparitors: ===,!==
                                        These comparitors compare value AND type
                   Cond and case will return the first instance which is true.
                   A ternary must contain an if, do:, and else:
```elixir
if a == b do
     #Do stuff if a == b
else do
     #Do stuff if a != b
end

unless a == b do
     #Do stuff if a != b
else do
     #Do stuff if a == b
end

cond do
     a == b -> IO.puts "They're equal."
     a != b -> IO.puts "They're not equal"
     true -> IO.puts "Default" #This acts as the default option.
end

case data do #Checks if data is equal to any of the cases
    1 -> IO.puts "#{data} = 1"
    2 -> IO.puts "#{data} = 2"
    _ -> IO.puts "None of the options were #{data}" #This acts as the default option
end

#An example of a Ternary:
IO.puts "Ternary : #{if a == b, do: "A is equal to B!", else: "A is not equal to B!"}"
```     
