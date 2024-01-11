defmodule Hello.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :content, :text
      add :name, :string
      add :author, :string
      add :like_count, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
