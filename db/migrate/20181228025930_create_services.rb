class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :svc_name
      t.string :svc_desc

      t.timestamps
    end
  end
end
