class CreateLogSubEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :log_sub_emotions do |t|
      t.belongs_to :sub_emotion, foreign_key: true
      t.belongs_to :log, foreign_key: true

      t.timestamps
    end
  end
end
