class CreateCheeses < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeses do |t|
      t.string :type
      t.belongs_to :user

      t.timestamps
    end
  end
end
