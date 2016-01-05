class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :recipients

  self.to_csv
    attributes = %w()
    CSV.generate(headers:true) do |csv|
      csv << attributes
      all.each do |purchase|
        csv << purchase.attributes.values_at(*attributes)
      end
  end



end
