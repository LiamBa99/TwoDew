class List < ApplicationRecord
    MAX_TITLE_LENGTH = 125
    has_many :tasks
    validates :title, presence: true, length: {maximum: MAX_TITLE_LENGTH}
    validates :user_id, presence: true
    
end
