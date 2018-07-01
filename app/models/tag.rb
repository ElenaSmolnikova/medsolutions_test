class Tag < ApplicationRecord
  belongs_to :news
  belongs_to :city, optional: true
  belongs_to :profession_status, optional: true
  has_many :specializations_tags
  has_many :specializations, through: :specializations_tags
end