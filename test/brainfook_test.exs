defmodule BrainfookTest do
  use ExUnit.Case
  doctest Brainfook

  test "greets the world" do
    assert Brainfook.hello() == :world
  end
end
