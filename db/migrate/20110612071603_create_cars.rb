class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.text :name

      t.timestamps
    end
  end
end
