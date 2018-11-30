class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :pucharses
end
