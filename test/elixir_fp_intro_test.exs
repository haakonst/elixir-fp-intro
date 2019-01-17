defmodule ElixirFpIntroTest do
  use ExUnit.Case
  doctest ElixirFpIntro

  test "greets the world" do
    assert ElixirFpIntro.hello() == :world
  end
end
