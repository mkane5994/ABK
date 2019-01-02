class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :cus_f_name
      t.string :cus_l_name
      t.string :cus_p_phone
      t.string :cus_a_phone
      t.string :cus_address
      t.string :cus_zip
      t.string :cus_email
      t.string :cus_notes

      t.timestamps
    end
  end
end
