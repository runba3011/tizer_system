class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :link , null: false
      t.integer :single_point , null: false 
      t.references :user , null: false , foreign_key: true
      t.timestamps
    end
  end
end
