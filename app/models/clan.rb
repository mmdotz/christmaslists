class Clan < ActiveRecord::Base
  has_many :relations
  validates :name, presence: true
end
