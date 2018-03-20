class AddNameToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :name, :string
    add_column :contracts, :variable_value, :boolean
  end
end
