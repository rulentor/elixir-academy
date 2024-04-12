defmodule TicTacToe do

  @type cell :: :x | :o | :f
  @type row :: {cell, cell, cell}
  @type game_state :: {row, row, row}
  @type game_result :: {:win, :x} | {:win, :o} | :no_win
# boolean
  @spec valid_game?(game_state) :: boolean
  def valid_game?(state) do
    result = true
    items = [cell: elem(state, 0), cell: elem(state, 1), cell: elem(state, 2)]
    for {:cell, item} <- items, do: #case item do
      result = if tuple_size(item) != 3 && result, do: false  
      #_ -> "No one else"
    #end
    #state_1 = elem(state, 1)
    IO.inspect(result)
  end

  @spec check_who_win(game_state) :: game_result
  def check_who_win(state) do
    game_result = :no_win
  end

end

game_state = {
  {:x, :o, :f, :a},
  {:f, :o, :f},
  {:f, :f, :f}
}
TicTacToe.valid_game?(game_state)
