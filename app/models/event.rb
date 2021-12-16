class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    has_many :event_participatings
    has_many :participants, through: :event_participatings, source: :user
    
end
