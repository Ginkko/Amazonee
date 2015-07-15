class Item < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :purchases

  validates :name, presence: true
  validates :regular_price, presence: true
  validates :sale_price, presence: true

  validates :name, uniqueness: true
end
