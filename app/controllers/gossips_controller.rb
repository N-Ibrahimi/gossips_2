class GossipsController < ApplicationController


  def index
    @gossips = Gossip.order('id ASC') 
  end

  def show
    @potin = Gossip.find(params[:gossip_id])
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
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
