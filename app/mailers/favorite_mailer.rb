class FavoriteMailer < ApplicationMailer
  default from: "kevinlegg@legalshieldcorp.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@enigmatic-everglades-92504.herokuapp.com"
    headers["In-Reply-To"] = "<post/#{post.id}@enigmatic-everglades-92504.herokuapp.com"
    headers["References"] = "<post/#{post.id}@enigmatic-everglades-92504.herokuapp.com"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
