defmodule Hello.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :name, :string
    field :author, :string
    field :content, :string
    field :like_count, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:content, :name, :author, :like_count])
    |> validate_required([:content, :name, :author, :like_count])
  end
end
