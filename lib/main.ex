defmodule Main do
  require IEx

  def main(_args \\ nil) do
    IO.puts "Welcome to PokerTrainer."
    get_input
  end

  defp get_input do
    IO.puts "==========================="
    IO.puts "Choose a training exercise:"
    IO.puts "1) Three bet"
    IO.puts "2) Outs calculator"
    IO.puts "3) Exit"

    input = IO.gets "Enter the number of your choose: "

    cond do
      input =~"1" ->
        IO.puts "============="
        IO.puts "Three bet"

        three_bet
      input =~"2" ->
        IO.puts "Coming soon!"
        get_input
      input =~"3" || String.downcase(input) =~ "exit" -> true
      true -> get_input
    end
  end

  defp three_bet do
    IO.puts "============="

    result = Dealer.deal

    hand_1 = result |> Map.fetch!(:hand_1)

    IO.puts "Your hand is: #{hd(hand_1)}, #{tl(hand_1)}"
    IO.puts "Do you three bet with tight range?"

    input = IO.gets "(Y/N/Exit): "

    should_three_bet = Trainer.should_three_bet?(hand_1)

    cond do
      String.downcase(input) =~ "y" ->
        IO.puts (if should_three_bet, do: "Correct!", else: "Incorrect.")
        three_bet
      String.downcase(input) =~ "n" ->
        IO.puts (if !should_three_bet, do: "Correct!", else: "Incorrect.")
        three_bet
      String.downcase(input) =~ "exit" ->
        true
      true ->
        three_bet
    end
  end
end
