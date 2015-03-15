class AddFunkcijaToMemebers < ActiveRecord::Migration
  def change
  	add_column :members, :telefon, :string
  	add_column :members, :email, :string
  	add_column :members, :vrsta_clana, :string
  	add_column :members, :funkcija, :string
  	add_column :members, :datum_vstopa, :date
  	add_column :members, :datum_izstopa, :date
  	add_column :members, :status_clanstva, :string
  end
end
