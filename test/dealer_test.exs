defmodule DealerTest do
  use ExUnit.Case
  doctest Dealer

  test "deal" do
    result = Dealer.deal

    # Deck has 48 cards remaining
    assert result
    |> Map.fetch!(:deck)
    |> length
    == 48

    # Each hand has 2 cards
    assert result
    |> Map.fetch!(:hand_1)
    |> length
    == 2

    assert result
    |> Map.fetch!(:hand_2)
    |> length
    == 2
  end

  test "deal_flop" do
    deck = Dealer.deal |> Map.fetch!(:deck)

    flop_deal = Dealer.deal_flop(deck)

    assert flop_deal
    |> Map.fetch!(:deck)
    |> length
    == 44

    assert flop_deal
    |> Map.fetch!(:flop)
    |> length
    == 3
  end
end
