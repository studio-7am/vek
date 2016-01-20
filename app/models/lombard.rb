class Lombard < ActiveRecord::Base
	has_many :lombard_tabs
	has_many :lombard_orders
	mount_uploader :image, LombardUploader
	include Bootsy::Container
end
