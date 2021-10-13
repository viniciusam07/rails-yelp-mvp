class Restaurant < ApplicationRecord
  include Categoriable

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: Categoriable::CATEGORIES }

  has_many :reviews, dependent: :destroy
end
