defmodule ToDo.Repo.Migrations.CreateTableTask do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :public_id, :uuid
      add :name, :string
      add :state, :string
      add :lists_id, :uuid

      timestamps()
    end
  end
end
