class Budget < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :year
end
