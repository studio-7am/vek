class StoreTab < ActiveRecord::Base
  belongs_to :store
  include Bootsy::Container
end
