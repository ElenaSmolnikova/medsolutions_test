class Specialization < ActiveRecord::Base
  has_many :specializations_tags
  has_many :tags, through: :specializations_tags
end