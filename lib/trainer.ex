defmodule Trainer do
  def should_three_bet?([[ rank_1 | suit_1 ], [ rank_2 | suit_2 ]]) do
    cond do
      [rank_1] == [rank_2] && Enum.any?('9TJQKA', fn rank -> rank == rank_1 end) -> true
      ([rank_1] == 'A' && [rank_2] == 'K') || ([rank_1] == 'K' && [rank_2] == 'A') -> true
      true -> false
    end
  end

  def number_of_outs([[ rank_1 | suit_1 ], [ rank_2 | suit_2 ]]) do
    # TODO
  end
end
