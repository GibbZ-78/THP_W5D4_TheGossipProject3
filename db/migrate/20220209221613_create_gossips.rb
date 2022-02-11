class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title                     # title of the gossip
      t.text :content                     # content of the gossip
      t.belongs_to :user, index: true     # 1 gossip has 1 author only (an user)
      t.timestamps                        # created_at & update_at automated creation
    end
  end
end
# Table definition complete