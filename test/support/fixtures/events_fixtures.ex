defmodule Countdown.EventsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Countdown.Events` context.
  """

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{
        title: "some title",
        due: ~N[2023-08-28 12:35:00]
      })
      |> Countdown.Events.create_event()

    event
  end
end
