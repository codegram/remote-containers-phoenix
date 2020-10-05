defmodule RemoteContainers.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      RemoteContainers.Repo,
      # Start the Telemetry supervisor
      RemoteContainersWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: RemoteContainers.PubSub},
      # Start the Endpoint (http/https)
      RemoteContainersWeb.Endpoint
      # Start a worker by calling: RemoteContainers.Worker.start_link(arg)
      # {RemoteContainers.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RemoteContainers.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    RemoteContainersWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
