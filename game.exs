defmodule Game do

  def join_game({:user, name, age, role}) do
    result = if age >= 18 || role == :admin || role == :moderator, do: :ok, else: :error
    #if role == :admin || role == 
    IO.puts(result)
    #return result
    # result = age >= 18 && true || false 
  end

  def move_allowed?(current_color, {type, color}) do
    is_color = if current_color == color, do: true, else: false 
    result = if ( type == :pawn && is_color ) || ( type == :rock && is_color ), do: true, else: false
    IO.puts(result)
  end

  def single_win?(a_win, b_win) do
    result = if a_win == b_win, do: false, else: true 
    IO.puts(result)
  end

  def double_win?(a_win, b_win, c_win) do
    #result = false
    result = cond do
      a_win && b_win ->
        :ab
      a_win && c_win ->
        :ac
      b_win && c_win ->
        :bc
      true ->
        false
    end
    IO.puts(result)
  end

end

#Game.join_game({ :user, 'User', 12, :admin } )
#Game.move_allowed?( :white , { :figure, :pawn, :black } )
#Game.single_win?( true, true )
#Game.double_win?( true, false, true )
