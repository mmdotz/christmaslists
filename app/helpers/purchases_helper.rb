module PurchasesHelper
  def total_number_paid
    purchases.paid.count
  end

  def total_number_unpaid
    purchases.unpaid.count
  end

  def total_amt_paid
    purchases.paid.pluck(:cost).sum
  end
end
