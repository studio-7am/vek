class Tab < ActiveRecord::Base
  belongs_to :page
  validates :title, presence: true
  validates :content, presence: true
  validates :page, presence: true
end
