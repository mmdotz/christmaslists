class Purchase < ActiveRecord::Base
  belongs_to  :user
  has_many    :recipients

  # scope :current_year_purchases =>  where(purchase_date.between?(2014-12-26, 2015-12-24))

  def current_year_purchases
    where(purchase_date.between?(2014-12-26, 2015-12-24))
  end

  def self.to_csv
    attributes = %w(item url vendor cost tracking_num bought user_id purchase_date recipient_id)
    CSV.generate(headers:true) do |csv|
      csv << attributes
      all.each do |purchase|
        csv << purchase.attributes.values_at(*attributes)
      end
    end
  end
end
