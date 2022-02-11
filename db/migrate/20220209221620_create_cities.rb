class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name         # name of the related city
      t.string :zip_code          # zip code of the related city (to offer search features on this field)
      t.timestamps                # created_at & update_at automated creation
    end
  end
end
# Table definition complete