class City < ActiveRecord::Base
	has_many :outgoing,class_name :Travel,foreign_key :source_city_id
	has_many :incoming,class_name :Travel, foreign_key :dest_city_id
end
