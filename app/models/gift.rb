class Gift < ActiveRecord::Base
  belongs_to :purchase
  belongs_to :recipients
end
