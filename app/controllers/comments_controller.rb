class CommentsController < ApplicationController

	before_action :authenticate_user, only: [:edit, :new, :create, :show]
	
	def new
	end

	def create
		@comment = Comment.create(content: params[:content], user: current_user, gossip: Gossip.find(params[:gossip_id]))
      	redirect_to gossip_path(params[:gossip_id]), success: "Comment successfully created !"
	end

	def edit
		 @comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update(content: params[:content])
    	redirect_to gossip_path(params[:gossip_id]), success: "Comment successfully edited !"
	end

	def destroy
		@comment = Comment.find(params[:id])
	    @comment.destroy
	    redirect_to gossip_path(params[:gossip_id]), success: "Comment successfully deleted !"
	end

	private

  def authenticate_user
    unless current_user
      redirect_to new_session_path, danger: "Hmmmm, seems like you are not logged in 🤔"
    end
  end

end
