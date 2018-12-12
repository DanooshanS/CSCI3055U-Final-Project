defmodule M do
  def main do
    sum = fn x,y -> x + y end
    IO.puts "#{sum.(5,5)}"

    sum2 = &(&1 + &2)
    IO.puts "#{sum2.(5, 5)}"

    sum3 = fn
         {x, y} -> x + y
         {x, y, z} -> x + y + z
    end
    IO.puts "#{sum3.({5,5})} and #{sum3.({5,5,5})}"
  end
end
