class Vote < ApplicationRecord
  validates :email, :framework, presence: true
  validates :email, uniqueness: true
end
