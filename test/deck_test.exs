defmodule DeckTest do
  use ExUnit.Case
  doctest Deck

  test "the deck has 52 cards" do
    assert length(Deck.deck) == 52
  end
end
