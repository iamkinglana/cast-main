class Comment < ApplicationRecord
    # Associations
    belongs_to :user
    belongs_to :cast

    # Validations
    validates :content, presence: true

end
