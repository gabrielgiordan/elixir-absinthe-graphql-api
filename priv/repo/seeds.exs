# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BlogApi.Repo.insert!(%BlogApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias BlogApi.Repo
alias BlogApi.Admin.User
alias BlogApi.Blog.Post

Repo.insert!(%User{
  name: "Ryan Swapp",
  email: "ryan@abc.com",
  subscription: "free"
})

Repo.insert!(%User{
  name: "Rosie",
  email: "rosie@abc.com",
  subscription: "gold"
})

Repo.insert!(%User{
  name: "Pablo",
  email: "pablo@def.com",
  subscription: "gold"
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  details: %{
    "site" => "ABC",
    "section" => "Sports",
    "topic" => "Soccer"
  },
  user_id: [1, 2, 3] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  details: %{
    "site" => "DEF",
    "section" => "Politics",
    "topic" => "National"
  },
  user_id: [1, 2, 3] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  details: %{
    "site" => "ABC",
    "section" => "Videogames",
    "topic" => "Xbox"
  },
  user_id: [1, 2, 3] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  details: %{
    "site" => "DEF",
    "section" => "Economics",
    "topic" => "Asia"
  },
  user_id: [1, 2, 3] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  details: %{
    "site" => "ABC",
    "section" => "Videogames",
    "topic" => "PS3"
  },
  user_id: [1, 2, 3] |> Enum.take_random(1) |> hd
})