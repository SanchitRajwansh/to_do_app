defmodule ToDoContext.Task do

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:public_id, Ecto.UUID, autogenerate: true}
  schema "task" do
    field :name, :string
    field :state, :string
    field :lists_id, Ecto.UUID

    timestamps()
  end

  def changeset(session, attrs) do
    session
    |> cast(attrs, [
      :public_id,
      :name,
      :state,
      :lists_id
    ])
  end

end
