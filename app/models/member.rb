class Member < ApplicationRecord
  has_one_attached :portrait
  has_one_attached :avatar
end
