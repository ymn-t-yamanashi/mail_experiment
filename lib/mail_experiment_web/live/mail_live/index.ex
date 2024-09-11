defmodule MailExperimentWeb.MailLive.Index do
  use MailExperimentWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:logs, [])
    |> then(&{:ok, &1})
  end

  @impl true
  def handle_event("send", _params, %{assigns: %{logs: logs}} = socket) do
    socket
    |> assign(:logs, logs ++ ["送信しました #{DateTime.utc_now()}"])
    |> then(&{:noreply, &1})
  end
end
