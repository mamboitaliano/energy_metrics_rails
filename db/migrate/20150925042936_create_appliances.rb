class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string :brand_name
      t.string :model_name
      t.string :model_number

      t.timestamps null: false
    end
  end
end
