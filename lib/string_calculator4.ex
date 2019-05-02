defmodule StringCalculator4 do
  def step(), do: 4

  def add(""), do: 0

  def add(string_of_numbers) do
    {string_of_numbers, delimiter} =
      case Regex.run(~r{^//(.)\n(.*)$}, string_of_numbers) do
        [_, delimiter, string_of_numbers] -> {string_of_numbers, delimiter}
        _ -> {string_of_numbers, [",", "\n"]}
      end

    String.split(string_of_numbers, delimiter)
    |> Enum.map(fn number ->
      case Integer.parse(number) do
        {integer, ""} -> integer
        _ -> :error
      end
    end)
    |> Enum.sum()
  end
end
