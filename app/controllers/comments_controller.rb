class CommentsController < ApplicationController
    # 2021-02-11 01 added
    def index
        render json: Comment.all
    end

    def create
        byebug
        comment = Comment.new(comment_params)

        if comment.save
            render json: comment
        else
            byebug
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

end
