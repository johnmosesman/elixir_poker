defmodule TrainerTest do
  use ExUnit.Case
  doctest Trainer

  test "should_three_bet?" do
    assert Trainer.should_three_bet?('AH')
    assert Trainer.should_three_bet?('KH')
    refute Trainer.should_three_bet?('QH')
  end
end
