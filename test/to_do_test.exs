defmodule ToDoTest do
  use ExUnit.Case
  doctest ToDo

  test "greets the world" do
    assert ToDo.hello() == :world
  end
end
