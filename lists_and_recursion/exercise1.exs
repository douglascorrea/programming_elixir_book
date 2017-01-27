defmodule MyList do
  def mapsum(list, func), do: do_mapsum([0 | list], func)

  #private
  defp do_mapsum([acc | []], _func), do: acc
  defp do_mapsum([acc | [head | tail]], func), do: do_mapsum([func.(head) + acc | tail], func)
end
