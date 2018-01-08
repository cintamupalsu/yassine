class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.string :content
      t.integer :number
      t.references :language, foreign_key: true
      t.references :verse, foreign_key: true
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
