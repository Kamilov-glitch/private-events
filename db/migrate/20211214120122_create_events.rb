class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :place
      t.integer :creator_id

      t.timestamps
    end
  end
end
