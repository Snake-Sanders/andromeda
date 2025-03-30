defmodule Andromeda.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      AndromedaWeb.Telemetry,
      # Andromeda.Repo,  # Uncomment to enable database
      {DNSCluster, query: Application.get_env(:andromeda, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Andromeda.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Andromeda.Finch},
      # Start a worker by calling: Andromeda.Worker.start_link(arg)
      # {Andromeda.Worker, arg},
      # Start to serve requests, typically the last entry
      AndromedaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Andromeda.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    AndromedaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
