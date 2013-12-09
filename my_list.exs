defmodule MyEnum do

  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def map(_func, []), do: []
  def map(func, [d]), do: [func.(d)]
  def map(func, [head | tail]), do: [func.(head) | map(func, tail)]

  def reduce(collection, init, fun), do: _reduce(collection, init, fun)
  def _reduce([], acc, _), do: acc
  def _reduce([head | tail], acc, func ), do: _reduce(tail, func.(acc, head), func)

  def max(collection), do: _max(collection, 0)
  def _max([], prev_max), do: prev_max
  def _max([head | tail], prev_max) when head > prev_max do
    _max(tail, head)
  end
  def _max([head | tail], prev_max) when head <= prev_max do
    _max(tail, prev_max)


  end

  def caesar([], _), do: []
  def caesar([head | tail], n), do: [(n+head) | caesar(tail, n)]

  def merge([]), do: []
  def merge([a , b | tail]) do 
  merge([(a + b) |  tail])
  end
  def merge([a | []]), do: [a]
  def can_merge?(l1, l2), when is_list l1 and is_list l2 
end

