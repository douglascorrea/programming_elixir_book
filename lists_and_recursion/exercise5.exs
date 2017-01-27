defmodule MyEnum do

  # all?

  def all?(list),     do: all?(list, fn n -> !!n end)
  def all?([], _fun), do: true
  def all?([ head | tail ], fun) do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end

  # each
  def each([], fun) when is_function(fun), do: :ok
  def each([head | tail], fun) when is_function(fun) do
    fun.(head)
    each(tail, fun)
  end

  # filter
  def filter(list, fun) when is_function(fun), do: do_filter(list, fun, [])

  defp do_filter([], _fun, filtered), do: filtered

  defp do_filter([head | tail], fun, filtered) do
    if fun.(head) do
      do_filter(tail, fun, [head | filtered])
    else
      do_filter(tail, fun, filtered)
    end
  end

end
