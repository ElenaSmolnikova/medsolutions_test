class News < ApplicationRecord
  has_many :tags, inverse_of: :news
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

  scope :available, -> (current_user) do
    joins(tags: :specializations)
    .where(tags: {profession_status_id: [current_user.profession_status_id, nil], city_id: [current_user.city_id, nil]})
    .where(specializations: {id: current_user.specializations.ids})
  end
end
