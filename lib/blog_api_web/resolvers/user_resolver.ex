defmodule BlogApiWeb.Resolvers.UserResolver do
  alias BlogApi.Admin

  def list_user(_args, _info) do
    {:ok, Admin.list_users}
  end

  def find_user(_args, %{id: id}, _resolution) do
    case Admin.get_user!(id) do
      nil -> {:error, "User ID #{id} not found"}
      user -> {:ok, user}
    end
  end
end
