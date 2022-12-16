defmodule Exbinance.MixProject do
  use Mix.Project

  def project do
    [
      app: :binance,
      version: "0.0.2",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Exbinance.Supervisor, []},
      applications: [:exconstructor, :poison, :httpoison],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:poison, "~> 4.0.0"},
      {:exconstructor, "~> 1.1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
      {:exvcr, "~> 0.12.2", only: :test}
    ]
  end

  defp description do
    """
    Elixir wrapper for the Binance public API
    """
  end

  defp package do
    [
      name: :binance,
      files: ["lib", "config", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Osman Perviz, Edgardo Cabanillas"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/dvcrn/binance.ex"}
    ]
  end
end
