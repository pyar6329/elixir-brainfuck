defmodule Brainfook do
  @moduledoc """
  Documentation for Brainfook.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Brainfook.hello
      :world

  """
  def hello do
    :world
  end
end

defmodule Memory do
  defstruct prev: [], cur: [0]
end

defmodule Head do
  import Memory

  @doc ~S"""
    iex> Head.next(%Memory{prev: [1, 2, 3], cur: [4, 5, 6]})
    %Memory{prev: [1, 2, 3, 4], cur: [5, 6]}

    iex> Head.next(%Memory{cur: [1, 2, 3]})
    %Memory{prev: [1], cur: [2, 3]}

    iex> Head.next(%Memory{prev: [1, 2, 3], cur: [4]})
    %Memory{prev: [1, 2, 3, 4], cur: [0]}
  """
  def next(mem) do
    case mem.cur do
      [head | []] ->
        %{mem | prev: mem.prev ++ [head], cur: [0]}

      [head | tail] ->
        %{mem | prev: mem.prev ++ [head], cur: tail}
    end
  end
end
