alias ToDoContext.Lists
alias ToDo.Repo
alias ToDo.ListOperations

list_seed = [
  %{
    name: "Do Laundry",
    state: "pending"
  },
  %{
    name: "Do Cleaning",
    state: "pending"
  },
  %{
    name: "Do Studies",
    state: "pending"
  },
  %{
    name: "Do Coding",
    state: "pending"
  },
  %{
    name: "Do Reading",
    state: "pending"
  },
  %{
    name: "Do Gymming",
    state: "pending"
  },
]


Enum.each(list_seed, fn params -> ListOperations.create(params) end)
