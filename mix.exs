defmodule MixtapeStatic.MixProject do
  use Mix.Project

  def project do
    [
      app: :mixtape_static,
      aliases: aliases(),
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp aliases do
    [
      "assets.deploy": ["tailwind default --minify"]
    ]
  end

  defp deps do
    [
      {:griffin_ssg, "~> 0.4.3"},
      {:tailwind, "~> 0.3", runtime: Mix.env() == :dev}
    ]
  end
end
