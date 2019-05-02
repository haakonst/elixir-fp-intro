defmodule ElixirFpIntro do
  # Constants start with @ and are always local to the module
  @steve %{first_name: "Steve", last_name: "Jones", age: 43}
  @people [
    @steve,
    %{first_name: "Bob", last_name: "Hansen", age: 15},
    %{first_name: "Tom", last_name: "Smith", age: 37},
    %{first_name: "Alice", last_name: "Johnson", age: 25},
    %{first_name: "Peter", last_name: "Smith", age: 71},
    %{first_name: "Bob", last_name: "Smith", age: 52}
  ]

  def hello() do
    :world
  end

  def get_steves_first_name() do
    @steve[:first_name]
  end

  def get_sort_fn(:first_name) do
    fn %{first_name: first_name1}, %{first_name: first_name2} -> first_name1 < first_name2 end
  end

  def get_sort_fn(:age) do
    fn %{age: age1}, %{age: age2} -> age1 < age2 end
  end

  def search_and_sort(last_name, sort_fn \\ nil, data \\ @people) do
    sort_fn = sort_fn || get_sort_fn(:first_name)

    data
    |> Enum.filter(fn person -> match?(%{last_name: ^last_name}, person) end)
    |> Enum.sort(sort_fn)
    |> Enum.map(fn %{first_name: first_name, last_name: last_name} ->
      "#{first_name} #{last_name}"
    end)
  end
end
