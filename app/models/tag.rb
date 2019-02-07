class Tag < ApplicationRecord
	validates :title, 
		presence: true, 
		uniqueness: true

	has_many :tag_gossip_joins
	has_many :gossips, through: :tag_gossip_joins
end
