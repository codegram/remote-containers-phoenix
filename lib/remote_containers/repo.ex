defmodule RemoteContainers.Repo do
  use Ecto.Repo,
    otp_app: :remote_containers,
    adapter: Ecto.Adapters.Postgres
end
