defmodule Truncator do
  @moduledoc """
  Abbreviates strings to a target length
  """
  def abbreviate(input) do
    tokens = String.split(input, " ")
    token_to_length = for tok <- tokens, into: %{}, do: {tok, String.length(tok)}
    token_to_length
  end
end
