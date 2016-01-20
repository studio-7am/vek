class LombardTab < ActiveRecord::Base
  belongs_to :lombard
  include Bootsy::Container
end
