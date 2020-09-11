class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :brewery, null: false, foreign_key: true
      t.boolean :favorite
      t.boolean :wishlist
      t.boolean :visited

      t.timestamps
    end
  end
end
