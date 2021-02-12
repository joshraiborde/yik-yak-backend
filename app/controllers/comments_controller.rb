class CommentsController < ApplicationController
    # 2021-02-11 01 added
    def index
        render json: Comment.all
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment
        end
    end

    # def destroy
    #     comment.destroy
    # end

    private

    def comment_params
        params.require(:comment).permit(:content, :post_id)
    end

    # def set_comment
    #     comment = Comment.find(params[:id])
    # end

end
