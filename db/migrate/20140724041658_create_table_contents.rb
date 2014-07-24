class CreateTableContents < ActiveRecord::Migration
  def change
    create_table :table_contents do |t|
      t.string :content
      t.integer :level
      t.integer :order
      t.integer :id_book

      t.timestamps
    end
  end
end
