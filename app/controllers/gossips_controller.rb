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
    @new_user = User.create!(first_name:params[:first_name],last_name:params[:last_name])
    @gossip = Gossip.create(title:params[:title], content:params[:content], user_id:"#{@new_user.user_id}")

    @new_user.errors
    @gossip.errors 
    # if @gossip.save
    #   puts "Ton gossip a bien été créé !"
    #   redirect_to root_path
    # else 
    #   render :new
    #   puts "Erreur!"
    # end
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
