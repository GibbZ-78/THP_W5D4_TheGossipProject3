class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title                     # title of the gossip
      t.text :content                     # content of the gossip
      t.references :user, index: true     # 1 gossip has 1 and only 1 author (an user)
      t.timestamps
    end
  end
end
