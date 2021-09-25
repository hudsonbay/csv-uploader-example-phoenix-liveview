defmodule CsvUploaderExample.Repo do
  use Ecto.Repo,
    otp_app: :csv_uploader_example,
    adapter: Ecto.Adapters.Postgres
end
