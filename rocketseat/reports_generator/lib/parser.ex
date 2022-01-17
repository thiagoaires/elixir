defmodule ReportsGenerator.Parser do

  defp parse_line(el) do
    el
    |> String.trim()
    |> String.split(",")
    |> List.update_at(2, &String.to_integer/1)
  end
end
