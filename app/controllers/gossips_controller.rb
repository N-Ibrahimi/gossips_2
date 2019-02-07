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
