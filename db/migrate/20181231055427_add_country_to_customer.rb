class AddCountryToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :cus_country, :string
  end
end
