defmodule SimpleexampleWeb.ExampleChannel do

  use Phoenix.Channel
  require Logger

  def join("example", payload, socket) do
    Logger.info ":: New Connection Example Channel !!::"
    {:ok, socket}
  end

end
