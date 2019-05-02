defmodule StringCalculator2 do
  def step(), do: 2

  def add(""), do: 0

  def add(string_of_numbers) do
    String.split(string_of_numbers, ",")
    |> Enum.map(fn number ->
      case Integer.parse(number) do
        {integer, ""} -> integer
        _ -> :error
      end
    end)
    |> Enum.sum()
  end
end
