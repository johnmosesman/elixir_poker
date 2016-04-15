defmodule Trainer do
  def should_three_bet?([ rank | suit ]) do
    case [rank] do
      'A' -> true
      'K' -> true
      _   -> false
    end
  end
end
