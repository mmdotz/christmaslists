class Recipient < ActiveRecord::Base
  belongs_to :user

  def full_name
    "#{self.first} #{self.last}"
  end

end
