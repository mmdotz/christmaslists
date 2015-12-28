class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :recipients

  def season_purchases(user)
      user.purchases
  end

end
