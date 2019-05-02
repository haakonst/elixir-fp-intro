defmodule StringCalculator3 do
  def step(), do: 3

  def add(""), do: 0

  def add(string_of_numbers) do
    String.split(string_of_numbers, [",", "\n"])
    |> Enum.map(fn number ->
      case Integer.parse(number) do
        {integer, ""} -> integer
        _ -> :error
      end
    end)
    |> Enum.sum()
  end
end
