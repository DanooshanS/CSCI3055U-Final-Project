defmodule M do
  def main do
    string1 = "Hello"
    string2 = "World"
    string3 = string1 <> " " <> string2
    IO.puts "#{string3}"
    [head | tail] = [1,2,3]
    IO.puts "#{head} "
    IO.puts "#{tail}"
  end
end
