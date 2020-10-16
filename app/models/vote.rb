class Vote < ApplicationRecord
  validates :email, :framework, presence: true
end
