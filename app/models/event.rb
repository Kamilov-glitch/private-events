class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    has_many :event_participatings
    has_many :participants, through: :event_participatings, source: :user

    scope :past_events, -> { where("date <= ?", Time.now) }
    scope :upcoming_events, -> { where("date > ?", Time.now) }

    # def self.past_events
    #   self.where("date <= ?", Time.now)
    # end

    # def self.upcoming_events
    #   self.where("date > ?", Time.now)
    # end

    def past_event?
      self.date < Time.now
    end

end
