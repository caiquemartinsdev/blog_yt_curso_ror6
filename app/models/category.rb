class Category < ApplicationRecord
    has_many :articles, #este comando diz que a categoria tem muitos articles
    dependent: :restrict_with_error

    validates :name, presence: true, length: { minimum: 3 }
    scope :sorted, -> {order(:name)}
end
