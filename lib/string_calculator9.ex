defmodule StringCalculator9 do
  # Implements both step 8 and 9
  def step(), do: 9

  def add(""), do: 0

  def add(string_of_numbers) do
    regex = ~r{^//(?:(.)|((?:\[[^\]]+\])+))\n(.*)$}

    {string_of_numbers, delimiters} =
      case Regex.run(regex, string_of_numbers, capture: :all_but_first) do
        [single_char_delimiter, "", string_of_numbers] ->
          {string_of_numbers, single_char_delimiter}

        ["", multi_char_delimiters, string_of_numbers] ->
          delimiters =
            multi_char_delimiters
            |> String.slice(1..-2)
            |> String.split("][")

          {string_of_numbers, delimiters}

        _ ->
          {string_of_numbers, [",", "\n"]}
      end

    String.split(string_of_numbers, delimiters)
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
