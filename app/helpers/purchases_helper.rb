module PurchasesHelper
  # move these to ApplicationHelper and use callback in controller
  def total_number_paid(user) #second argument should be budget year
    user.purchases.paid.count
    #purchases where purchase_date.year LIKE?, current_year
  end

  def total_number_unpaid(user) #second argument should be budget year
    user.purchases.unpaid.count
  end

  def total_amt_paid(user) #second argument should be budget year
    user.purchases.paid.map { |purchase| purchase.cost}.sum
  end
end
