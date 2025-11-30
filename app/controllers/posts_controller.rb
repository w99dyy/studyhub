class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user, only: [:edit, :update, :destroy]



    
    def index
      if params[:tag].present?
        @posts = Post.tagged_with(params[:tag]).order(created_at: :desc)
      else
        @posts = Post.all.order(created_at: :desc)
      end
    end

  
    def show
        @comments = @post.comments.order(created_at: :desc) 

      end

    def new
        @post = current_user.posts.build
    end


    def create
       @post = current_user.posts.build(post_params)

       if @post.save
        redirect_to @post
       else
        flash.now[:alert] = @post.errors.full_messages.to_sentence
        render :new, status: :unprocessable_entity
       end

    
      end
      
    
      
    def edit
        @post = Post.find(params[:id])


    end

    def update
        if @post.update(post_params)
            redirect_to @post, notice: "Post created successfully!"
        else
            #failure

        end
    end

    def destroy
    
    @post.destroy
    redirect_to root_path, notice: "Post deleted successfully!"
  end

    def set_post  #Find the post
        @post = Post.find_by(id: params[:id])
        unless @post
            redirect_to posts_path, alert: "Post not found."
          end
        end
    
    private

    def post_params
      params.require(:post).permit(:title, :content, :tag_list)

    end
    

    def authorize_user
        redirect_to root_path, alert: "Not Auothrized" unless @post.user == current_user
end
end
