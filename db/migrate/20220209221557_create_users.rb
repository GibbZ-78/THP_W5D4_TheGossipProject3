class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name                  # first name of the user
      t.string :last_name                   # family name of the user
      t.string :nickname                    # (to be made unique?) nickname of the user as shown in the application / gossips
      t.string :gender                      # to see if a simple "M","F","U" choice or a dedicated reference table / model
      t.integer :age                        # computed from 'birthdate'
      t.date :birthdate                     # birthdate prompted to compute 'age' and fill 'is_adult' accordingly
      t.boolean :is_adult                   # true if age >=18 (or 21?), false elseway
      t.references :city , index: true      # 1 user lives in 1 and only 1 city
      t.timestamps
    end
  end
end
