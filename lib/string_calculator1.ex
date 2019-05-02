defmodule StringCalculator1 do
  def step(), do: 1

  def add(""), do: 0

  def add(string_of_numbers) do
    case String.split(string_of_numbers, ",") do
      [number] ->
        Integer.parse(number) |> elem(0)

      [number1, number2] ->
        (Integer.parse(number1) |> elem(0)) + (Integer.parse(number2) |> elem(0))
    end
  end
end
