defmodule SimpleexampleWeb.ExampleChannel do

  use Phoenix.Channel
  require Logger

  def join("example", payload, socket) do
    Logger.info ":: New Connection Example Channel !!::"
    {:ok, socket}
  end

  def handle_in("example:broadcast", payload, socket) do
    Logger.info ":: Example:Broadcast receive a message!::"
    {:noreply, socket}
  end

end
