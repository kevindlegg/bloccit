module UsersHelper
  def has_posts?(user)
    user && (Post.exists?(user: user))
  end

  def has_comments?(user)
    user && (Comment.exists?(user: user))
  end

  def has_favorites?(user)
    user && (Favorite.exists?(user: user))
  end
end
