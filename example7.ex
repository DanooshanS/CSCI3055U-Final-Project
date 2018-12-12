defmodule M do
  def main do
    list = ["Random", "words", "go", "here"]
    loop(list)



    list2 = [1,3,5,6]
    loop2(list2)

  end
  def loop2([Head|Tail]) do
       if (rem(Head,2)) == 0 do
            IO.puts "Reached a positive number!"
       else 
            loop2(Tail)
       end
  end
  def loop([Head | Tail]) do
    IO.puts "#{Head}"
    loop(Tail)
  end
  def loop([]), do: nil
end
