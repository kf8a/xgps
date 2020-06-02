defmodule XGPS.Mixfile do
  use Mix.Project

  def project do
    [app: :xgps,
     name: XGPS,
     version: "0.4.1",
     elixir: "~> 1.7-dev",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/royveshovda/xgps",
     deps: deps(),
     description: description(),
     package: package()]
  end

  def application do
    [applications: [:logger, :gen_stage],
     mod: {XGPS, []}]
  end

  defp deps do
    [{:circuits_uart, "~> 1.4"},
      {:gen_stage, "~> 1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    An OTP application for reading and parsing GPS data written in Elixir.
    Will attach to an serial port, and provide positions to subscribers.
    Distributes positions using GenStage.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :xgps,
     files: ["lib", "mix.exs", "README*", "LICENSE*", "simulator_positions.txt"],
     maintainers: ["Roy Veshovda"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/royveshovda/xgps"}]
  end
end
