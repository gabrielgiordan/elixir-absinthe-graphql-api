defmodule BlogApiWeb.Router do
  use BlogApiWeb, :router
  alias BlogApiWeb.Schemas

  forward "/api", Absinthe.Plug,
    schema: Schemas.ApiSchema

  forward "/graphql", Absinthe.Plug.GraphiQL,
    schema: Schemas.ApiSchema,
    interface: :playground

end
