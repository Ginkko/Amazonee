class Purchase < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :items

  validates :name, presence: true
  validates :date, presence: true
end
