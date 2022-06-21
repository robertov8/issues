defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      name: "Issues",
      source_url: "https://github.com/pragprog/issues",
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0.0"},
      {:pretty, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:credo, "~> 1.6"},
      {:ex_doc, "~> 0.28.3"},
      {:earmark, "~> 1.4.24"}
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
