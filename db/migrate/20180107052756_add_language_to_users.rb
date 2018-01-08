class AddLanguageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :language, index: true
    add_foreign_key :users, :languages
  end
end
