defmodule M do
  def main do
    int = 1
    float = 1.0

    IO.puts "#{int} is int? #{is_integer(int)}"
    IO.puts "#{float} is float? #{is_float(float)}"

    int2 = 2

    IO.puts "#{int + int2}"
    IO.puts "#{int - int2}"
    IO.puts "#{int * int2}"
    IO.puts "#{int / int2}"
    IO.puts "#{div(int,int2)}"
    IO.puts "#{rem(int,int2)}"
  end
end
