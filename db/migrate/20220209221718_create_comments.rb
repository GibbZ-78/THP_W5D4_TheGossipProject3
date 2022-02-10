class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content                     # text of the comment
      t.references :user, index: true     # 1 comment has 1 and only 1 author (an user)
      t.references :gossip, index: true   # 1 comment is linked to 0 or 1 and only 1 gossip OR to another comment
      t.references :comments, index: true # TO DO: see how to manage this XOR link... Via a dedicated method testing which link is (not) "nil"?
      t.timestamps
    end
  end
end
