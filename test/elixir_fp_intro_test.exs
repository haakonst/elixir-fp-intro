defmodule ElixirFpIntroTest do
  use ExUnit.Case
  import ElixirFpIntro
  doctest ElixirFpIntro

  test "greets the world" do
    assert ElixirFpIntro.hello() == :world
  end

  test "get_steves_first_name" do
    assert get_steves_first_name() == "Steve"
  end

  test "search_and_sort" do
    assert search_and_sort("Smith") == ["Bob Smith", "Peter Smith", "Tom Smith"]
  end

  test "search_and_sort_by_age" do
    assert search_and_sort("Smith", fn %{age: age1}, %{age: age2} -> age1 < age2 end) ==
             ["Tom Smith", "Bob Smith", "Peter Smith"]
  end
end
