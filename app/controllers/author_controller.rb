class AuthorController < ApplicationController
  def display
    @author = User.find(params[:user_id])
  end
end
