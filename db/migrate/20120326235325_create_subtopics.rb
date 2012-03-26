class CreateSubtopics < ActiveRecord::Migration
  def change
    create_table :subtopics do |t|
      t.references :topic
      t.references :user
      t.string :name

      t.timestamps
    end
    add_index :subtopics, :topic_id
    add_index :subtopics, :user_id
  end
end
