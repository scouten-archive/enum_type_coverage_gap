defmodule CoverageGap.MixProject do
  use Mix.Project

  def project do
    [
      app: :gap,
      version: "0.1.0",
      name: "Coverage Gap Example",
      elixir: "~> 1.8",
      elixirc_options: [warnings_as_errors: true],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: ["lib"],
      compilers: Mix.compilers(),
      test_coverage: [tool: ExCoveralls],
      description: "example"
    ]
  end

  def application, do: [extra_applications: [:logger]]
  defp deps, do: [{:excoveralls, "~> 0.10", only: :test}, {:enum_type, "~> 1.0"}]
end
