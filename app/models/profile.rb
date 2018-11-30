class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :pucharses
  validates_presence_of :name, :age
end
