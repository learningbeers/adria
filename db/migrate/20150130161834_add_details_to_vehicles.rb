class AddDetailsToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :model, :string
    add_column :vehicles, :vehicletype, :string
  end
end
