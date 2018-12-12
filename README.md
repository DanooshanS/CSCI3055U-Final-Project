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
     Modules: Similar to packages, contains all of the elixir functions you write.
              MUST begin with an uppercase letter.
              
```elixir
require externalModule #imports all functions from a different module
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
          
     Math:
          Addition: a + b
          Subtraction: a- b
          Multiplication: a * b
          Division: a / b
          Integer Division: div(a,b)
          Remainder: rem(a,b)
          
     Variables: Once a variable of any type is defined, it CANNOT be changed. 
                MUST begin with an _ or lowercase letter
```elixir
variablename = data
```
     Getting input or producing output: See example2.ex for examples
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
else 
     #Do stuff if a != b
end

unless a == b do
     #Do stuff if a != b
else 
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
     Anonymous Functions: See example5.ex for examples
                          NOTE: A . is required between the function name and parameters when calling an anonymous function. 
```elixir
sum = fn x, y -> x + y end
IO.puts "#{sum.(5,5)}" #Would print 10
#or
sum = &(&1 + &2)
IO.puts "#{sum.(5, 5)}" #Would print 10
#or
sum = fn 
     {x, y} -> x + y
     {x, y, z} -> x + y + z
end
IO.puts "#{sum.({5,5})} and #{sum.({5,5,5})}" #Would print 10 and 15, can make different function definitions with different parameters.
```
     Enumerables: See example6.ex for examples
                  MANY built in functions for Enum, see https://hexdocs.pm/elixir/Enum.html for more information.
```elixir
sequence = [1,2,3]
sequence2 = [1..5]
sequence3 = Enum.map(sequence, fn x -> x + 1 end)
sum = Enum.sum(sequence2)
IO.puts "sequence 3 = #{sequence3} and sum = #{sum}" #Would print: sequence3 = [2,3,4] and sum = 15
```
     Transformation of data: See example6.ex for examples
                             Multiple different transformations, critical ones would be: <> and [Head | Tail]
```elixir
string1 = "Hello"
string2 = "World"
string3 = string1 <> " " <> string2 #<> is the operator used for concatenate strings
IO.puts "#{string3}" #Prints Hello World
[Start | Rest] = [1,2,3] #Start will become the first element in list, and Rest will be a list of the elements after the first.
IO.puts "#{Start}, #{Rest}" 
```
     Iteration: See example7.ex for examples
                Elixir does not include for loops because variables cannot be changed, therefore iteration is impossible.
                Therefore, the only method of iteration is recursion.
                    - Base cases can either be made as if's or seperate functions of the same name (depends on the problem to solve)
```elixir
list = ["Random", "words", "go", "here"]

def loop([Head | Tail]) do #Pops the first element in the list off and prints it, passes the remaining list to the same function
     IO.puts "#{Head}"
     loop(Tail)
end
def loop([]), do: nil #Is called once the list is empty

list2 = [1,3,5,6]
def loop2([Head|Tail]) do
     if (rem(Head,2)) == 0 do
          IO.puts "Reached a positive number!"
     else 
          loop2(Tail)
     end
end
```
     Exception Handling: See example8.ex for examples
```elixir
integer = 4
err = try do
     integer / 0
rescue
     ArithmeticError -> "Cannot divide by 0"
end
```
     Specialized Library: File ; See example9.ex for examples
                          Multiple methods for File available for use can be found at https://hexdocs.pm/elixir/File.html
```elixir
#ASSUMING helloworld.txt exists and contains one line "Hello World":
FileName = "helloworld.txt"
FileName2 = "oijoiadjaoisdjas"
File.read(FileName) #This returns {:ok, "Hello World"}
File.read(FileName2) #This returns {:error, reason}
File.read!(FileName) #This returns "Hello World"
```

     For more information about Elixir and its built in functionality refer to https://hexdocs.pm/elixir/Kernel.html
