class Travel < ActiveRecord::Base
	has_many :notifications
	has_many :carpoolingrequests
	has_many :users , through: :carpoolingrequest
	belongs_to :source,class_name :City,foreign_key :source_city_id
	belongs_to :destination,class_name :City,foreign_key :dest_city_id

end
