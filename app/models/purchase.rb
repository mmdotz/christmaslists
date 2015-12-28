class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :recipients

  before_create :set_season

  def set_season
    self.season = purchase_date.strftime("%Y")
  end

  def season_purchases(user)
      user.purchases
  end

end
