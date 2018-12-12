defmodule M do
  def main do
    IO.puts "Sum: #{addNums(1,1)}"
    "Hello World" |> IO.puts
  end
  def addNums(x,y) do
    x + y
  end
end
