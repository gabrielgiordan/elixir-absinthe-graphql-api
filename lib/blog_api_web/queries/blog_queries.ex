defmodule BlogApiWeb.Schemas.Queries.BlogQueries do
  use Absinthe.Schema.Notation
  alias BlogApiWeb.Resolvers.PostResolver

  object :post_queries do
    field :posts, list_of(:post) do
      resolve &PostResolver.list_posts/2
    end
  end
end


