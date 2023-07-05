class Cast < ApplicationRecord
    # Associations
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    # Validations
    validates :content, presence: true
    # attr_accessor :author, :timestamp, :likes, :comments

end
