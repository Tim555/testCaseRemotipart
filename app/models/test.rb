class Test < ApplicationRecord
  has_many :attachs
  accepts_nested_attributes_for :attachs, allow_destroy: true
  validates :title, presence: true
end
