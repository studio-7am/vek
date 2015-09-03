class Page < ActiveRecord::Base
	has_many :tabs
	has_many :orders
end
