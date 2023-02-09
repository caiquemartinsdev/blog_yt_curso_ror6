class Article < ApplicationRecord
    belongs_to :category
    belongs_to :user

    validates :title, presence: true, length: { minimum: 5}
    validates :body, presence: true, length: { minimum: 10}

    scope :filter_by_category, -> (category_id) {where category_id: category_id if category_id.present?}
end
