defmodule LeapYear do
  import Guardsafe, only: [divisible_by?: 2]

  def leap_year?(year) when divisible_by?(year, 400), do: true
  def leap_year?(year) when divisible_by?(year, 100), do: false
  def leap_year?(year), do: divisible_by?(year, 400)
end
