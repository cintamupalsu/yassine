class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :english_name
      t.string :arabic_name
      t.string :english_translation
      t.string :city

      t.timestamps
    end
  end
end
