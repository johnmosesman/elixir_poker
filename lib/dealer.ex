defmodule Dealer do
  def deal do
    Deck.deck()
    |> deal_hands()
  end

  defp deal_hands(deck) do
    hand_1 = [Enum.at(deck, 0)]
    deck = List.delete_at(deck, 0)

    hand_2 = [Enum.at(deck, 0)]
    deck = List.delete_at(deck, 0)

    hand_1 = [hand_1, Enum.at(deck, 0)]
    deck = List.delete_at(deck, 0)

    hand_2 = [hand_2, Enum.at(deck, 0)]
    deck = List.delete_at(deck, 0)

    { deck, hand_1, hand_2 }
  end
end
