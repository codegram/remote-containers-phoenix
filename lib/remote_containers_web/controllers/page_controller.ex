defmodule RemoteContainersWeb.PageController do
  use RemoteContainersWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
