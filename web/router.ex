defmodule Yearly.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", Yearly do
    pipe_through :browser # Use the default browser stack

    get "/leap/", LeapYearController, :index
    get "/leap/:year", LeapYearController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", Yearly do
  #   pipe_through :api
  # end
end
