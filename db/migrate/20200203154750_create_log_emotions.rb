class CreateLogEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :log_emotions do |t|
      t.belongs_to :log, foreign_key: true
      t.belongs_to :emotion, foreign_key: true
      t.integer :before
      t.integer :after

      t.timestamps
    end
  end
end
