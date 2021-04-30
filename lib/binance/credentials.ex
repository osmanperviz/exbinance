defmodule Exbinance.Credentials do
  @moduledoc """
  Struct for representing a credentials for Binace exchange.

  ```
  @enforce_keys [:secret_key, :api_key]
  defstruct @enforce_keys
  ```
  """

  @enforce_keys [:secret_key, :api_key]
  defstruct @enforce_keys
end
