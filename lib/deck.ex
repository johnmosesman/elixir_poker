defmodule Deck do
  def deck do
    deck = for rank <- '23456789TJQKA', suit <- 'CDHS', do: [rank, suit]
    deck |> Enum.shuffle
  end
end
