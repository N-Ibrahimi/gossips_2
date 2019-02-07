class GossipsController < ApplicationController


  def index
    @gossips = Gossip.order('id ASC') 
  end

  def show
    @potin = Gossip.find(params[:gossip_id])
    #@comments = Comment.where(gossip: params[:id])
  end

  def author 
  @author = User.find(params[:user_id])
  end 
  
  def new
  end

  def create
    @gossip = Gossip.new(title:params[:title], content:params[:content],user_id:"30")
    if @gossip.save
      redirect_to root_path, success: "Gossip successfully created !"
    else
      redirect_to new_gossip_path, danger: "#{@gossip.errors.full_messages.join(". ")}"
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(title: params[:title], content: params[:content])
      redirect_to gossip_path(params[:id]), success: "Gossip successfully edited !"
    else
      redirect_to edit_gossip_path(params[:id]), danger: "#{@gossip.errors.full_messages.join(". ")}"
      end  
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path, success: "Gossip successfully deleted !"
  end


  private

  def authenticate_user
    unless current_user
      redirect_to new_session_path, danger: "Hmmmm, seems like you are not logged in 🤔"
    end
  end
  
end
