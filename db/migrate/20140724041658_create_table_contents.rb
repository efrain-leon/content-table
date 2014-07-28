class CreateTableContents < ActiveRecord::Migration
  def change
    create_table :table_contents do |t|
      t.string :content
      t.integer :level
      t.integer :order
      t.integer :book_id

      t.timestamps
    end
  end
end
