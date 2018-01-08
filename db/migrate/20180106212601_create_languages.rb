class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :country_name

      t.timestamps
    end
    add_index :languages, [:country_name]
  end
end
