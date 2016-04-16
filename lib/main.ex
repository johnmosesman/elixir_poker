defmodule Main do
  def main(_args \\ nil) do
    IO.puts "Welcome to PokerTrainer."
    get_input
  end

  defp get_input do
    IO.puts "Choose a training exercise:"
    IO.puts "1) Three bet"
    IO.puts "2) Outs calculator"
    IO.puts "3) Exit"

    input = IO.gets "Enter the number of your choose: "

    cond do
      input =~"1" -> three_bet
      input =~"2" -> IO.puts "2"
      input =~"3" || String.downcase(input) =~ "exit" -> true
      true -> get_input
    end
  end

  defp three_bet do
    IO.puts "============="
    IO.puts "Three bet"
    IO.puts "============="

    result = Dealer.deal

    hand_1 = result |> Map.fetch!(:hand_1)

    IO.puts "Your hand is: #{hd(hand_1)}, #{tl(hand_1)}"
  end
end
