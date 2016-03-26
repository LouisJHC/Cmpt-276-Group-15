class PostsController < ApplicationController
    include SessionsHelper
        helper_method :current_user
        

    before_action :find_post, only: [:show, :edit, :update, :destroy]
 
    def index
        @posts = Post.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @post = current_user.posts.build
    end
    
    def create
        @post = current_user.posts.build(post_params)
        
        if @post.save
            redirect_to @post
        else
            render 'new'
        end

    end

    
    def edit
    end
    
   def update
    if current_user == @post.user
        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    else
        redirect_to posts_path
    end
end
    
    
    def destroy
        if current_user == @post.user
            @post.destroy
        end
        redirect_to posts_path
    end
    
    private
    
    def find_post
        @post = Post.find(params[:id])
    end
    
    private
    
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
