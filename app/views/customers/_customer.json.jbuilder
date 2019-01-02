json.extract! customer, :id, :cus_f_name, :cus_l_name, :cus_p_phone, :cus_a_phone, :cus_address, :cus_zip, :cus_email, :cus_notes, :created_at, :updated_at
json.url customer_url(customer, format: :json)
