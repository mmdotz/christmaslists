class Home < ActiveRecord::Base
  require 'Date'

  def self.days_until_christmas(date=DateTime.now)
    christmas = DateTime.new(date.year, 12, 25)
    if date < christmas
      days_left = (christmas - date).to_i
      "There are #{days_left} days until Christmas!"
    else
      "Season's Over. Go Relax, or start a new budget for next year."
    end
  end
end
