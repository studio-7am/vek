class Page < ActiveRecord::Base
	has_many :tabs
	has_many :orders

    mount_uploader :cover, CoverUploader
end
