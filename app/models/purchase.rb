class Purchase < ActiveRecord::Base
  belongs_to  :user

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
