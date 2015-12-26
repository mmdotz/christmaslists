class Recipient < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase



  def full_name
    "#{self.first} #{self.last}"
  end

end
