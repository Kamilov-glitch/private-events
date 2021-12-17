class AddUniquenessConstraintToEventParticipatings < ActiveRecord::Migration[6.1]
  def change
    add_index :event_participatings, [:event_id, :user_id], unique: true
  end
end
