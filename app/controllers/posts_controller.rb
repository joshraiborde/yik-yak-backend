class PostsController < ApplicationController

    def index
        render json: Post.all
    end
    
    def create
         post = Post.new(post_params)
    
         if post.save
            render json: post
         end

    end


    private

    def post_params
        params.require(:post).permit(:content)
    end
end
