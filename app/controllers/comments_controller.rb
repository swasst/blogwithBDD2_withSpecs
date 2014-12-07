class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.post,
                                  notice: 'Comment was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors,
                             status: :unprocessable_entity }
      end
    end
  end

  def comment_params
    params.require(:comment).permit(:username, :email, :content)
  end
end