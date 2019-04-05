defmodule BlogApiWeb.Types.BlogTypes do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: BlogApi.Repo

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :user, :user, resolve: assoc(:user)
    field :details, :post_detail
  end

  object :post_detail do
    field :site, :string
    field :section, :string
    field :topic, :string
  end
end
