class User < ActiveRecord::Base
  has_secure_password
  has_one   :wishlist, dependent: :destroy
  has_many  :recipients
  has_many  :purchases
  has_many  :relations
  has_many  :budgets
  validates :password, length: { minimum: 5 }
  validates :first, presence: true
  validates :last, presence: true

  def full_name
    "#{self.first} #{self.last}"
  end

#not working!
  def current_year_purchases
    purchases.where(purchase_date.between?(2014-12-26, 2015-12-24))
  end

end
