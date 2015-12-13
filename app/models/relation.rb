class Relation < ActiveRecord::Base
  belongs_to :user
  belongs_to :clan
end
