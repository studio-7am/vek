class LombardOrder < ActiveRecord::Base
	belongs_to :lombard
	has_many :products
	accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
end
