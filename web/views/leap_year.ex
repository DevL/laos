defmodule Laos.LeapYearView do
  use Laos.View

  def leap_year_text(year, true), do: "#{year} is a leap year!"
  def leap_year_text(year, false), do: "#{year} is not a leap year."
end
