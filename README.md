# Introduction to functional programming with Elixir

The goal with the workshop is to give a brief introduction to functional programming using Elixir as programming language. We'll go through some of the basic language features in Elixir and concepts in functional programming, looking at some examples. Then we'll work on some exercises. The idea is to complete the implementation of the initially empty function definitions in the module [ElixirFpIntro](lib/elixir_fp_intro.ex). The module [ElixirFpIntroTest](test/elixir_fp_intro_test.exs) contains test cases which will indicate if the implementation is ok.

For this workshop you need to have Elixir on your computer. You get it by either installing it directly on your computer or you can use the official Docker image for Elixir.

## Getting started

# Clone this Git repository

```
> cd C:/src/
> git clone https://github.com/haakonst/elixir-fp-intro.git
> cd C:/src/elixir-fp-intro/
```

# Install Elixir or run the Docker image

Do either of the following:
* Install Elixir and Erlang by following the [installation instructions](https://elixir-lang.org/install.html)
* Ensure Docker is installed and [that your `C:` drive is shared](https://github.com/haakonst/elixir-todo-workshop#config) and run either of these commands (the latter is just a script file containing the former):
  - `docker run --rm -it -v "C:/src/elixir-fp-intro:/elixir-fp-intro" -w /elixir-fp-intro elixir /bin/bash`
  - `.\docker-run.ps1`

# Run the test cases

```
mix test
```

## Resources

* Elixir getting started guide: https://elixir-lang.org/getting-started/introduction.html
* Elixir docs: https://elixir-lang.org/docs.html
* Elixir standard library docs: https://hexdocs.pm/elixir/
* Elixir official website: https://elixir-lang.org/

# Commonly used modules
* [Enum](https://hexdocs.pm/elixir/Enum.html)
* [String](https://hexdocs.pm/elixir/String.html)
* [Map](https://hexdocs.pm/elixir/Map.html)
