defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "counts all of the items in the list" do
      list = [1, 2, 3, 5, 7]

      response = ListLength.call(list)

      expected_response = 5

      assert response == expected_response
    end
  end
end
