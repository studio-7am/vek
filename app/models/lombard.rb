class Lombard < ActiveRecord::Base
	has_many :lombard_tabs
	has_many :lombard_orders
end
