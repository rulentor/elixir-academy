defmodule Game do

  def join_game({:user, name, age, role}) do
    result = if age >= 18, do: true, else: false
    return result
    # result = age >= 18 && true || false 
  end

  def move_allowed?(current_color, figure) do
    # TODO add your implementation
  end

  def single_win?(a_win, b_win) do
    # TODO add your implementation
  end

  def double_win?(a_win, b_win, c_win) do
    # TODO add your implementation
  end

end
