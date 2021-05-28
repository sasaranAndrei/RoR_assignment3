class Order < ApplicationRecord
  enum status: %i[received preparing on_way delivered]
  # validates :delivery_date, future: true
  validates :address, presence: true
  validates :user_id, presence: true
  validates :products, presence: true

  belongs_to :user
end
