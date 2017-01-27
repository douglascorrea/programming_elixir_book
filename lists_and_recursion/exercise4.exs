defmodule MyList do
  def span(from, to), do: do_span([], from, to)
  # private
  defp do_span(list, from, to) when from <= to do
    do_span([to | list], from, to - 1)
  end
  defp do_span(list, from, to) do
    list
  end
end
