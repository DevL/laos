defmodule Yearly.LeapYearController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, :index, conn: conn
  end

  def show(conn, %{"year" => year}) do
    if valid_year? year do
      render conn, :show, year: year, leap_year: leap_year? year
    else
      conn |> put_status(400) |> render :bad_year, year: year
    end
  end

  defp valid_year?(year), do: year =~ ~r/\A\d+\z/
  defp leap_year?(year), do: year |> String.to_integer |> LeapYear.leap_year?
end
