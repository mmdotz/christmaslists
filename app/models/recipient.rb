class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many   :gifts
  has_many   :purchases, through: :gifts

  def full_name
    "#{self.first} #{self.last}"
  end

end
