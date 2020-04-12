defmodule UeberauthLinkedin.Mixfile do
  use Mix.Project

  @url "https://github.com/fajarmf/ueberauth_linkedin"
  @description "An Ueberauth strategy for LinkedIn authentication"

  def project do
    [
      app: :ueberauth_linkedin,
      version: "0.3.3",
      name: "Ueberauth LinkedIn Strategy",
      elixir: "~> 1.2",
      package: package(),
      source_url: @url,
      homepage_url: @url,
      description: @description,
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs()
    ]
  end

  def application, do: [applications: [:logger, :oauth2, :ueberauth]]
  defp docs, do: [extras: docs_extras(), main: "readme"]
  defp docs_extras, do: ["README.md"]

  defp deps,
    do: [
      {:ueberauth, "~> 0.6"},
      {:oauth2, "~> 2.0"},
      {:earmark, "~> 1.4.3", only: :dev},
      {:ex_doc, "~> 0.21", only: :dev}
    ]

  defp package,
    do: [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Fajar Firdaus"],
      licenses: ["MIT"],
      links: %{Github: @url}
    ]
end
