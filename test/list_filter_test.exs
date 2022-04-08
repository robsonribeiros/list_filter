defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return count odd numbers in list of strings" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      response = ListFilter.call(list)
      expected = 3
      assert response == expected
    end
  end
end
