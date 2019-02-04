class GossipController < ApplicationController
  def show
    @potin = Gossip.find(params[:gossip_id])
  end
end
