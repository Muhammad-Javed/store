class Catagory < ApplicationRecord
  has_many :products, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, length: {minimum: 5, maximum: 40}
  validates_format_of :name, with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/i, on: :create
end
