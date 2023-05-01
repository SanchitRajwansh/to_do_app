defmodule ToDo.Repo.Migrations.CreateTableList do
  use Ecto.Migration

  def change do
    create table(:lists, primary_key: false) do
      add :lists_id, :uuid, primary_key: true
      add :name, :string
      add :state, :string

      timestamps()
    end

    create unique_index(:lists, [:lists_id])
  end
end
