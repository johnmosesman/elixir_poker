defmodule TrainerTest do
  use ExUnit.Case
  doctest Trainer

  test "should_three_bet?" do
    # Pocket pairs
    assert Trainer.should_three_bet?(['9H', '9D'])
    assert Trainer.should_three_bet?(['JH', 'JD'])
    assert Trainer.should_three_bet?(['AH', 'AD'])
    refute Trainer.should_three_bet?(['5H', '5S'])

    # A-K
    assert Trainer.should_three_bet?(['KH', 'AC'])
    assert Trainer.should_three_bet?(['AC', 'KS'])
    refute Trainer.should_three_bet?(['KH', '2S'])
  end
end
