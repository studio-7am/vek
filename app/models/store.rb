class Store < ActiveRecord::Base
	has_many :store_tabs
	mount_uploader :image, StoreUploader
	include Bootsy::Container
end
