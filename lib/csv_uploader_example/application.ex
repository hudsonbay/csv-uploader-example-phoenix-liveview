defmodule CsvUploaderExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CsvUploaderExample.Repo,
      # Start the Telemetry supervisor
      CsvUploaderExampleWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CsvUploaderExample.PubSub},
      # Start the Endpoint (http/https)
      CsvUploaderExampleWeb.Endpoint
      # Start a worker by calling: CsvUploaderExample.Worker.start_link(arg)
      # {CsvUploaderExample.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CsvUploaderExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CsvUploaderExampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
