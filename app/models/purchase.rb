class Purchase < ActiveRecord::Base
  belongs_to  :user
  has_many    :gifts
  has_many    :recipients, through: :gifts

  scope :paid, -> { where(bought: true) }
  scope :unpaid, -> { where(bought: false) }

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
