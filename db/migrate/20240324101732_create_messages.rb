class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :text
      t.references :user_id, null: false, foreign_key: true
      t.references :room_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
