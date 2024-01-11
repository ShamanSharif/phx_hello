defmodule HelloWeb.PostJSON do
  alias Hello.Blog.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{data: for(post <- posts, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{data: data(post)}
  end

  defp data(%Post{} = post) do
    %{
      id: post.id,
      content: post.content,
      name: post.name,
      author: post.author,
      like_count: post.like_count
    }
  end
end
