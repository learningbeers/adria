class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.references :member, index: true

      t.timestamps
    end
  end
end
