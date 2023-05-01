defmodule ToDo.TaskOperations do
  alias ToDoContext.Task
  alias ToDo.Repo
  import Ecto.Query

  def create(params) do
    changeset =
      %Task{}
      |> Task.changeset(params)

    Repo.insert(changeset)
  end

  def get(public_id) do
    query = from(t in Task, where: t.public_id == ^public_id)
    Repo.all(query)
  end

  def update(attrs, public_id) do
    query = from(t in Task, where: t.public_id == ^public_id)
    [res] = Repo.all(query)

    res |> Task.changeset(attrs) |> Repo.update()
  end

  def delete(public_id) do
    query = from(t in Task, where: t.public_id == ^public_id)
    [res] = Repo.all(query)

    Repo.delete(res)
  end
end
