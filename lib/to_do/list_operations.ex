defmodule ToDo.ListOperations do
  alias ToDoContext.Lists
  alias ToDo.Repo
  import Ecto.Query

  def create(params) do
    changeset =
      %Lists{}
      |> Lists.changeset(params)

    Repo.insert(changeset)
  end

  def get(public_id) do
    query = from(l in Lists, where: l.lists_id == ^public_id)
    Repo.all(query)
  end

  def get_all do
    query = from(l in Lists, select: l)
    Repo.all(query)
  end

  def update(attrs, public_id) do
    query = from(l in Lists, where: l.public_id == ^public_id)
    [res] = Repo.all(query)

    res |> Lists.changeset(attrs) |> Repo.update()
  end

  def delete(public_id) do
    query = from(l in Lists, where: l.public_id == ^public_id)
    [res] = Repo.all(query)

    Repo.delete(res)
  end
end
