# Introduction to functional programming with Elixir

The goal with the workshop is to get a brief introduction to functional programming using Elixir as programming language. We'll go through some of the basic language features in Elixir and concepts in functional programming by looking at some examples. Then we'll work on some exercises. The idea is to implement a basic calculator, adding numbers listed in a string, starting with something very very basic and then make stepwise refinements to the implementation. The [exercises](https://osherove.com/tdd-kata-1/) are shaped as a [kata](https://en.wikipedia.org/wiki/Kata_(programming)) for test driven development. The test cases have already been defined. Each exercise/implementation step have a test case which must succeed for the exercise to be complete:

* [Module with the skeleton of the string calculator function to be implemented](lib/string_calculator.ex)
* [Test cases](test/string_calculator_test.exs)

To avoid noise from test cases for steps that fail because you didn't reach those steps yet, update the function [`StringCalculator.step/0`](lib/string_calculator.ex#L2) to return the number of the exercise/step you're at.

[Slides](https://haakonst.github.io/elixir-fp-intro/presentation.html) for this workshop.

For this workshop you need to have Elixir on your computer. You can get it by either installing it directly on your computer or you can use the official Docker image for Elixir.

## Getting started

### Clone this Git repository

```
> cd C:/src/
> git clone https://github.com/haakonst/elixir-fp-intro.git
> cd C:/src/elixir-fp-intro/
```

### Install Elixir or run the Docker image

Do either of the following:
* Install Elixir and Erlang by following the [installation instructions](https://elixir-lang.org/install.html)
* Ensure Docker is installed and [that your `C:` drive is shared](https://github.com/haakonst/elixir-todo-workshop#config) and run either of these commands (the latter is just a script file containing the former):
  - `docker run --rm -it -v "C:/src/elixir-fp-intro:/elixir-fp-intro" -w /elixir-fp-intro elixir /bin/bash`
  - `.\docker-run.ps1`

### Run the test cases

```
mix test
```

## Resources

* Elixir getting started guide: https://elixir-lang.org/getting-started/introduction.html
* Elixir docs: https://elixir-lang.org/docs.html
* Elixir standard library docs: https://hexdocs.pm/elixir/
* Elixir official website: https://elixir-lang.org/

### Commonly used modules
* [Kernel](https://hexdocs.pm/elixir/Kernel.html)
* [String](https://hexdocs.pm/elixir/String.html)
* [Enum](https://hexdocs.pm/elixir/Enum.html)

### Less commonly used modules
* [Map](https://hexdocs.pm/elixir/Map.html)
* [List](https://hexdocs.pm/elixir/List.html)
* [Keyword](https://hexdocs.pm/elixir/Keyword.html)
* [Integer](https://hexdocs.pm/elixir/Integer.html)
* [Regex](https://hexdocs.pm/elixir/Regex.html)
