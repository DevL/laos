defmodule Laos.LeapYearController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, :index
  end

  def show(conn, %{"year" => year}) do
    try do
      leap_year = year |> String.to_integer |> LeapYear.leap_year?
      render conn, :show, year: year, leap_year: leap_year
    rescue
      _ in ArgumentError -> render conn, :bad_year, year: year
    end
  end
end
