defmodule ListFilter do
  def call(list) do
    list_filter(list)
  end

  defp list_filter(list) do
    number_list = Enum.flat_map(list, fn el ->
      case Integer.parse(el) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    Enum.count(number_list, fn el -> rem(el, 2) != 0 end)
  end
end
