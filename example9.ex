defmodule M do
  def main do
    #ASSUMING helloworld.txt exists and contains one line "Hello World":
    FileName = "helloworld.txt"
    FileName2 = "oijoiadjaoisdjas"
    File.read(FileName) #This returns {:ok, "Hello World"}
    File.read(FileName2) #This returns {:error, reason}
    File.read!(FileName) #This returns "Hello World"
  end
end
