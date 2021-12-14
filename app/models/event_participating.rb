class EventParticipating < ApplicationRecord
    belongs_to :created_event, class_name: "Post"
    belongs_to :participant, class_name: "User"
end