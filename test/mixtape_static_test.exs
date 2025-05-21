defmodule MixtapeStaticTest do
  use ExUnit.Case
  doctest MixtapeStatic

  test "greets the world" do
    assert MixtapeStatic.hello() == :world
  end
end
