class Store < ActiveRecord::Base
	has_many :store_tabs
	mount_uploader :image, StoreUploader
end
