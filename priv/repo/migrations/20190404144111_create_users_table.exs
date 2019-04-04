defmodule BlogApi.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :subscription, :string
      
      timestamps()
    end
  end
end
