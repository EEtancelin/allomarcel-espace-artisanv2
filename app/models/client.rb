class Client < ApplicationRecord
  has_many :intervention

  def national_phone_number
    Phonelib.parse(phone_number).national
  end
end
