class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.references :entry
      t.references :language
      t.string :word
      t.string :notes

      t.timestamps
    end
    add_index :translations, :entry_id
    add_index :translations, :language_id
  end
end
