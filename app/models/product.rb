class Product < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { maximum: 18, too_long: "Title of a product can't be longer than %{count} characters." }
  validates :description, presence: true, inclusion: { in: %W(#{ "Main courses" } #{ "Second courses" } Soups Entrees Salads Desserts) }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :picture, presence: true
  has_one_attached :picture
end
