defmodule BlogApiWeb.Schemas.Queries.AdminQueries do
  use Absinthe.Schema.Notation
  alias BlogApiWeb.Resolvers.UserResolver

  object :user_queries do
    field :user, :user do
      arg :id, non_null(:id)
      resolve &UserResolver.find_user/3
    end

    field :users, list_of(:user) do
      resolve &UserResolver.list_users/2
    end
  end
end
