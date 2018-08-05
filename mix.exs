defmodule LearnElixir.MixProject do
  use Mix.Project

  @version "0.1.1"
  @name "learn_elixir"
  @maintainers ["Hussein Merhi"]
  @url "https://github.com/husseinmerhi2018/learn_elixir"
  @docs "https://hexdocs.pm/learn_elixir/api-reference.html"

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
      {:poison, "~> 3.1"}
    ]
  end

  defp description() do
    "Elixir project to build and practice different topics"
  end

  defp package() do
    [
      name: @name,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: @maintainers,
      licenses: ["MIT"],
      links: %{"GitHub" => @url, "Docs" => @docs}
    ]
  end
end
