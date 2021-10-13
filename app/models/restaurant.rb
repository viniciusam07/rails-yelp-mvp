class Restaurant < ApplicationRecord
  include Categoriable
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: Categoriable::CATEGORIES }
end
