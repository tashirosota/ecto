defmodule FriendsTest do
  use ExUnit.Case
  doctest Friends

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "aa" do
    # Friends.Person.create!(%{first_name: "first_name", last_name: "last_name", age: 1})
    Friends.Person.all()
    assert 1 + 1 == 2
  end
end
