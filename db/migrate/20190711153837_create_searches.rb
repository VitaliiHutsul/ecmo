class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :title
      t.float :min_price
      t.float :max_price

      t.timestamps
    end
  end
end
