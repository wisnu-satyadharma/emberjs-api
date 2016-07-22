class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.date :release_year
      t.references :library, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
