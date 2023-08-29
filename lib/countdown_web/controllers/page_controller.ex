defmodule CountdownWeb.PageController do
  use CountdownWeb, :controller
  alias Countdown.Events

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    events = Events.list_future_events()
    # render conn, "index.html"
    # render conn, "home.html", events: events
    # render(conn, :home, layout: false)
    render conn, "home.html", events: events, current_user: get_session(conn, :current_user)
  end
end
