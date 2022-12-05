class Books < ActiveRecord::Migration[7.0]
  def change
  create_table :books do |t|
    t.string :name
    t.text :description
    t.string :author
    t.integer :year
    t.timestamps
  end
end
end