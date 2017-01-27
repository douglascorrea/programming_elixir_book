defmodule MyList do
  def max([head | tail]), do: do_max(tail, head)

  #private
  defp do_max([], m), do: m
  defp do_max([head | tail], m) when head > m do
    do_max(tail, head)
  end
  defp do_max([head | tail], m) when head <= m do
    do_max(tail, m)
  end
end
