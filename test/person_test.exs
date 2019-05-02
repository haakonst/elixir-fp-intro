defmodule PersonTest do
  use ExUnit.Case
  import Person

  @person %Person{first_name: "Sam", last_name: "Smith", age: 12}

  test "person_access" do
    assert @person.first_name == "Sam"
  end

  test "person_update" do
    assert %{@person | age: 13} == %Person{first_name: "Sam", last_name: "Smith", age: 13}
  end

  test "person_access_error" do
    result =
      try do
        @person.name
      rescue
        exception -> exception
      end

    assert match?(%KeyError{}, result)
  end
end
