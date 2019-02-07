class PotinController < ApplicationController


  def new
   
  end


  def create

    new_potin = Gossip.create(first_name: "#{params["first_name"]}", last_name: "#{params["last_name"]}",title:"#{params[:title]}",content:"#{params[:content]}")
  end
end
