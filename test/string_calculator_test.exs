defmodule StringCalculatorTest do
  use ExUnit.Case
  import StringCalculator

  test "step1: add_empty" do
    assert step() < 1 or add("") == 0
  end

  test "step1: add_single_number" do
    assert step() < 1 or add("7") == 7
  end

  test "step1: add_two_numbers" do
    assert step() < 1 or add("14,17") == 31
  end

  test "step2: add_multiple_numbers" do
    assert step() < 2 or add("14,17,18,25") == 74
  end

  test "step3: add_numbers_with_newline_delimiter" do
    assert step() < 3 or add("1\n2,3") == 6
  end

  test "step4: add_numbers_with_delimiter_spec" do
    assert step() < 4 or add("//;\n1;2") == 3
  end

  test "step5: add_numbers_refute_negatives" do
    result =
      try do
        add("-10,20,-5,40")
      rescue
        exception -> exception
      end

    assert step() < 5 or result == %RuntimeError{message: "negatives not allowed -10,-5"}
  end

  test "step6: add_numbers_reject_larger_than_1000" do
    assert step() < 6 or add("14,1000,17,1001,18,25,5000") == 1074
  end

  test "step7: add_numbers_with_string_delimiter_spec" do
    assert step() < 7 or add("//[***]\n1***2***3") == 6
  end

  test "step8: add_numbers_with_multiple_delimiter_spec" do
    assert step() < 8 or add("//[*][%]\n1*2%3") == 6
  end

  test "step9: add_numbers_with_multiple_delimiter_spec" do
    assert step() < 9 or add("//[***][%%%]\n1***2%%%3") == 6
  end
end
