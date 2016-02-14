class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :recipients

  def self.to_csv
    attributes = %w(item url vendor cost tracking_num bought user_id purchase_date recipient_id)
    CSV.generate(headers:true) do |csv|
      csv << attributes
      all.each do |purchase|
        csv << purchase.attributes.values_at(*attributes)
      end
    end
  end

  def total_number_paid(user) #second argument should be budget year
    user.purchases.where(bought: true).count
  end

  def total_number_unpaid(user) #second argument should be budget year
    user.purchases.where(bought: false).count
  end

  def total_amt_paid(user) #second argument should be budget year
    user.purchases.where(bought: true).map { |purchase| purchase.cost}.sum
  end
  
end
