defmodule DealerTest do
  use ExUnit.Case
  doctest Dealer

  test "deal" do
    result = Dealer.deal()

    # Deck has 48 cards remaining
    assert result
    |> elem(0)
    |> length
    == 48

    # Each hand has 2 cards
    assert result
    |> elem(1)
    |> length
    == 2

    assert result
    |> elem(2)
    |> length
    == 2
  end
end
