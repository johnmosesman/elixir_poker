defmodule Dealer do
  def deal do
    Deck.deck()
    |> deal_hands()
  end

  def deal_flop(deck) do
    deck = tl(deck) # Burn

    # Turn
    flop = Enum.take(deck, 3)
    deck = Enum.drop(deck, 3)

    %{deck: deck, flop: flop}
  end

  defp deal_hands(deck) do
    hand_1 = [Enum.at(deck, 0)]
    deck = tl(deck)

    hand_2 = [Enum.at(deck, 0)]
    deck = tl(deck)

    hand_1 = [hand_1, Enum.at(deck, 0)]
    deck = tl(deck)

    hand_2 = [hand_2, Enum.at(deck, 0)]
    deck = tl(deck)

    %{ deck: deck, hand_1: hand_1, hand_2: hand_2 }
  end
end
