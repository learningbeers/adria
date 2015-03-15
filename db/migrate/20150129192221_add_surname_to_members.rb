class AddSurnameToMembers < ActiveRecord::Migration
  def change
    add_column :members, :surname, :string
    add_column :members, :dob, :date
    add_column :members, :street, :string
    add_column :members, :houseno, :string
    add_column :members, :town, :string
    add_column :members, :zip, :string
    add_column :members, :country, :string
  end
end
