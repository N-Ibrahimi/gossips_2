class CitiesController < ApplicationController
    def show
        @city = City.find(params[:id])
        @users = User.where(city: params[:id])
        @gossips = Gossip.where(user: @users.ids)
    end
  end
  