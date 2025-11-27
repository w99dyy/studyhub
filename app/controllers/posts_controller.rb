class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:home, :show]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user, only: [:edit, :update, :destroy]
    
    def home 
        @posts = Post.all.order(created_at: :desc)
    end

    def show
        @post = Post.find(params[:id])
        @comments = @post.comments  # This line must be present
      end

    def new
        @post = current_user.posts.build
        #build is like new but assosiates with current_user
    end


    def create
       @post = current_user.posts.build(post_params)

       if @post.save
        redirect_to @post, notice: "Post created successfully!"

       else
        flash.now[:alert] = @post.errors.full_messages.to_sentence
        render :new, status: :unprocessable_entity
       end

    
      end
      
    
      
    def edit
        # Post is already set with set_post
    end

    def update
        if @post.update(post_params)
            # Success
        else
            #failure

        end
    end

    def destroy
        @post.destroy
        redirect_to posts_url #go back to posts list
    end

    def set_post  #Find the post
        @post = Post.find(params[:id])
    end

    def post_params #Security filter
        params.require(:post).permit(:title, :content, :tags) #Allow only this fields to be saved

    end

    def authorize_user
        redirect_to root_path, alert: "Not Auothrized" unless @post.user == current_user
end
end
