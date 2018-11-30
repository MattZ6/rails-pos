class Pucharse < ActiveRecord::Base
  belongs_to :profile
  has_many :product_pucharses
  accepts_nested_attributes_for :product_pucharses, reject_if: lambda { |a| a[:product_id].blank? }, allow_destroy: true
  validates_presence_of :description
end
