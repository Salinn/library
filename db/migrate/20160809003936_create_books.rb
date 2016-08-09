class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :section
      t.belongs_to :library, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
