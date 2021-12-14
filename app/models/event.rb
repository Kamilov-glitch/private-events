class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :participants, through: :event_participiatings, source: :participant
    has_many :event_participiatings, foreign_key: :created_event_id
end
