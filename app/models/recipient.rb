class Recipient < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase


  def increment_age_each_year

  end

end
