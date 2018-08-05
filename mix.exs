defmodule LearnElixir.MixProject do
  use Mix.Project

  @version "0.1.1"
  @name "learn_elixir"
  @maintainers ["Hussein Merhi"]
  @url "https://github.com/husseinmerhi2018/learn_elixir"

  def project do
    [
      app: :learn_elixir,
      version: @version,
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: @name,
      source_url: @url
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [ 
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false},
      {:poison, "~> 3.1"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
