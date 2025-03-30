defmodule Andromeda.Repo do
  @moduledoc """
  The Database is disabled. To enable it check the following:

  1. Commented out Andromeda.Repo in lib/andromeda/application.ex
  2. Commented out the entire Andromeda.Repo module in lib/andromeda/repo.ex
  3. Commented out database configuration in config/dev.exs
  4. Commented out ecto_repos configuration in config/config.exs
  5. Commented out ecto dependencies in mix.exs
  6. Commented out ecto and ecto_sql in .formatter.exs
  7. Commented out ecto_sql in priv/repo/migrations/.formatter.exs
  8. Commented out ecto config in config/test.exs
  9. Commented out release.ex
  """

  # use Ecto.Repo,
  #   otp_app: :andromeda,
  #   adapter: Ecto.Adapters.Postgres
end
