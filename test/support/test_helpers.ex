defmodule Doggo.TestHelpers do
  @moduledoc """
  Defines helpers for tests.
  """

  import Phoenix.LiveViewTest

  @doc """
  Renders the given HEEx template and parses it with Floki.

  ## Example

      parse_heex(~H"<p>Hello!</p>")
  """
  def parse_heex(heex) do
    heex
    |> rendered_to_string()
    |> Floki.parse_fragment!()
  end

  @doc """
  Returns the trimmed text nodes from the first level of the HTML tree.
  """
  def text(html) do
    html
    |> Floki.text(deep: false)
    |> String.trim()
  end
end
