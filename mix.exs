defmodule Laos.Mixfile do
  use Mix.Project

  def project do
    [
      app: :laos,
      version: "1.0.0",
      elixir: "~> 1.0",
      elixirc_paths: ["lib", "web"],
      compilers: [:phoenix] ++ Mix.compilers,
      deps: deps
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: {Laos, []},
      applications: [:phoenix, :cowboy, :logger]
    ]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 0.9.0"},
      {:cowboy, "~> 1.0"},
      {:guardsafe, "~> 0.1.0"}
    ]
  end
end
