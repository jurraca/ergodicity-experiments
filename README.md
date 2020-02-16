# Ergo

**Implementing ergodic and non-ergodic games in Elixir.**

A non-ergodic system is one where the time average (the average of one actor *through* time) diverges from the ensemble average (the average of *all* actors at a given moment in time). Elixir allows us to not only model these states, but implement them in individual lightweight processes that map more closely to the environment we're modeling. 

Ideally, the user would provide a number of actors, generations to run the experiment for, and the update function for each "generation". We would return the underlying data and high level statistical summary for the experiment. 

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ergo` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ergo, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ergo](https://hexdocs.pm/ergo).

