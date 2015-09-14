class Product < ActiveRecord::Base
  belongs_to :store_order
  mount_uploader :image, ProductUploader
end
