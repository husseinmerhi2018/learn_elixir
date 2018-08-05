defmodule LearnElixir do
  @moduledoc """
  Contains usefull functions for daily basis
  """

  @doc """
  convert all map keys from string to atom

  ## Examples

      iex> LearnElixir.atomize_keys_map(%{"id": 1, "name": "hussein"})   
      %{id: 1, name: "hussein"}

  """
  @spec atomize_keys_map(Map.m()) :: Map.m()
  def atomize_keys_map(m) do
    m
    |> Map.new(fn {key, value} ->
      if is_binary(key) do
        {String.to_atom(key), value}
      else
        {key, value}
      end
    end)
  end
end
