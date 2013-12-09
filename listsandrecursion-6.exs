defmodule MyList do
  def all?([], _), do: []
  def all?([head | []], func), do: func.(head)
  def all?([head | tail], func) do
    func.(head) and all?(tail, func)
  end
  def each([], _), do: []
  def each([head | []], func), do: func.(head)
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
  def filter([], _), do: nil 
  def filter([head | []], func), do: add_if_true(head, func.(head))
  def filter([head | tail], func) do
    [add_if_true(head, func.(head)) | filter(tail, func)]
  end
  def add_if_true(val, true), do: val
  def add_if_true(val, false), do: []
  def take(coll, 0), do: []
  def take(coll, n) when is_integer(n) do
    take_iter(coll, n)
  end
  def take_iter(collection, 0), do: []
  def take_iter([head | tail], n) do
    [head | take_iter(tail, n-1)] 
  end

 
end
