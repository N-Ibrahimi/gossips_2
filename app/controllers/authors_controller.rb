class AuthorsController < ApplicationController
	def new
		@cities = []
		City.all.each do |city|
			@cities << [city.name, city.id]
		end
	end

	def create
		@user = User.new(first_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], age: params[:age], city_id: params[:city_id], password: params[:password])
    if @user.save
    	log_in(@user)
      redirect_to root_path, success: "User successfully created !"
    else
      redirect_to new_author_path, danger: "#{@user.errors.full_messages.join(". ")}"
    end
	end

  def show
  	@author = User.find(params[:id])
  end
end
