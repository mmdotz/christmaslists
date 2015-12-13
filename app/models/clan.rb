class Clan < ActiveRecord::Base
  validates :name, presence: true
end
