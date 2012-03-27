class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :language
      t.string :word
      t.references :subtopic

      t.timestamps
    end
    add_index :entries, :language_id
    add_index :entries, :subtopic_id
  end
end
