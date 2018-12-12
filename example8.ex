defmodule M do
  def main do
    integer = 4
    err = try do
         integer / 0
    rescue
         ArithmeticError -> "Cannot divide by 0"
    end
  end
end
