class AddMemberIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :member_id, :integer
  end
end
