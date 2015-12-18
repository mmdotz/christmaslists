class Purchase < ActiveRecord::Base
  belongs_to :user


  def season_purchases(user)
      user.purchases
  end

end
