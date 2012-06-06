class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.integer :topics_count, null: false, default: 0
      t.boolean :status

      t.timestamps
    end
  end
end
