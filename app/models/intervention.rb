class Intervention < ApplicationRecord
  belongs_to :artisan
  belongs_to :client

  validates :artisan_id, presence: true
end
