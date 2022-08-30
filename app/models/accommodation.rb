class Accommodation < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :persons, presence: true
end
