class CreateEventParticipatings < ActiveRecord::Migration[6.1]
  def change
    create_table :event_participatings do |t|
      t.integer :participant_id
      t.integer :created_event_id

      t.timestamps
    end
  end
end
