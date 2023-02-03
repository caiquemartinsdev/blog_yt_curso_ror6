class Article < ApplicationRecord
    belongs_to :category
    belongs_to :user

    validates :title, presence: true, length: { minimum: 5}
    validates :body, presence: true, length: { minimum: 10}

end
