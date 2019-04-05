defmodule BlogApiWeb.Types.AdminTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: BlogApi.Repo

  object :user do
    field :id, :id
    field :name, :string
    field :email, :string
    field :subscription, :string
    field :posts, list_of(:post), resolve: assoc(:posts)
  end
end
