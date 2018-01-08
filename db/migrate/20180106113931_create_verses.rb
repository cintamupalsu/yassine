class CreateVerses < ActiveRecord::Migration[5.1]
  def change
    create_table :verses do |t|
      t.text :content
      t.integer :number
      t.references :chapter, foreign_key: true

      t.timestamps
    end
    add_index :verses, [:chapter_id, :number]
  end
end
