class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
     # t.references :language, foreign_key: true

      t.timestamps
    end
    #add_index :users, [:language_id, :name]
  end
end
