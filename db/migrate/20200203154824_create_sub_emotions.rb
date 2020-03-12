class CreateSubEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_emotions do |t|
      t.string :name
      t.belongs_to :emotion, foreign_key: true

      t.timestamps
    end
  end
end
