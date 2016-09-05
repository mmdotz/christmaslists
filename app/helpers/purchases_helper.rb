module PurchasesHelper
  # move these to ApplicationHelper and use callback in controller
  def total_number_paid(user) #second argument should be budget year
    user.purchases.paid.count
    #purchases where purchase_date are between range NOT compared to current_year
  end


  def total_number_unpaid(user) #second argument should be budget year
    user.purchases.unpaid.count
  end

  def total_amt_paid(user) #second argument should be budget year
    user.purchases.paid.pluck(:cost).sum
  end
end

# 2.2.1 :016 > year
#  => "2015-07-04 00:00:00"
# 2.2.1 :017 > require 'date'
#  => false
# 2.2.1 :018 > DateTime.strptime(year, "%Y")
#  => Thu, 01 Jan 2015 00:00:00 +0000
# 2.2.1 :019 > date = DateTime.strptime(year, "%Y")
#  => Thu, 01 Jan 2015 00:00:00 +0000
# 2.2.1 :020 > date.year
#   2015
