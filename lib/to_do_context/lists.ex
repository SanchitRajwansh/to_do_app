defmodule ToDoContext.Lists do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:lists_id, Ecto.UUID, autogenerate: true}
  schema "lists" do
    field(:name, :string)
    field(:state, :string)

    timestamps()

    has_many(:task, ToDoContext.Task, foreign_key: :lists_id)
  end

  def changeset(session, attrs) do
    session
    |> cast(attrs, [
      :lists_id,
      :name,
      :state
    ])
  end
end
