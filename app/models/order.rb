class Order < ApplicationRecord
  validates :delivery_date, future: true
  validates :address, presence: true
  validates :user_id, presence: true
  validates :products, presence: true

  belongs_to :user
end
