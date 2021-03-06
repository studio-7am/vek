class Product < ActiveRecord::Base
  has_many :store_orders
  mount_uploader :image, ProductUploader
  include Bootsy::Container
end
