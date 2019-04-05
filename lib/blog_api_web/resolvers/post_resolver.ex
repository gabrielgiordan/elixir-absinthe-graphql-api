defmodule BlogApiWeb.Resolvers.PostResolver do
  alias BlogApi.Blog

  def list_posts(_args, _info) do
    {:ok, Blog.list_posts}
  end
end
