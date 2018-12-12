defmodule M do
  def main do
    a = 3
    b = 3
    if a == b do
      IO.puts "Equal"
    else
      IO.puts "Not Equal"
    end
    c = 2
    unless a == c do
      IO.puts "Not Equal"
    else 
      IO.puts "Equal"
    end

    cond do
         a == b -> IO.puts "They're equal."
         a != b -> IO.puts "They're not equal"
         true -> IO.puts "Default"
    end

    data = 0
    case data do
        1 -> IO.puts "#{data} = 1"
        2 -> IO.puts "#{data} = 2"
        _ -> IO.puts "None of the options were #{data}"
    end
    IO.puts "Ternary : #{if a == b, do: "A is equal to B!", else: "A is not equal to B!"}"
  end
end
