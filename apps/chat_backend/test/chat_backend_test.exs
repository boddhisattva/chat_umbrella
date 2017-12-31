defmodule ChatBackendTest do
  use ExUnit.Case
  doctest ChatBackend

  test "getting the message" do
    assert ChatBackend.get_message() == "Hello, from ChatBackend"
  end
end
