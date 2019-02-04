class IndexController < ApplicationController
  def home
    @gossip = Gossip.all
    @user = User.all
  end
end
