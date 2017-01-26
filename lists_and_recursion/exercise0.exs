defmodule MyList do
  def sum(list), do: do_sum([0 | list])

  # private functions
  defp do_sum([total | []]), do: total
  defp do_sum([total | [head | tail]]), do: do_sum([head+total | tail])
end
