defmodule ListLength do
  def count([], acc) do
    acc
  end

  def count([_head | tail], acc) do
    acc = acc + 1
    count(tail, acc)
  end
end
