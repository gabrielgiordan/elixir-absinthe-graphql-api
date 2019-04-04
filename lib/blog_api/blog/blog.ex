defmodule BlogApi.Blog do
  import Ecto.Query, warn: false
  alias BlogApi.Repo
  alias BlogApi.Blog.Post
  
  def list_posts() do
    Repo.all(Post)
  end
end