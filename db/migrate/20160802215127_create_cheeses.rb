class CreateCheeses < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
  end
end
