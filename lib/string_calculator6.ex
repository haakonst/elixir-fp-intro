defmodule StringCalculator6 do
  def step(), do: 6

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
    |> Enum.reject(fn n -> n > 1000 end)
    |> Enum.group_by(fn integer ->
      if integer < 0 do
        :negative
      else
        :nonnegative
      end
    end)
    |> case do
      %{negative: numbers} -> raise("negatives not allowed #{Enum.join(numbers, ",")}")
      %{nonnegative: numbers} -> Enum.sum(numbers)
    end
  end
end
