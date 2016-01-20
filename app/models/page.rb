class Page < ActiveRecord::Base
	has_many :tabs
	has_many :orders
	include Bootsy::Container
  mount_uploader :cover, CoverUploader
end
