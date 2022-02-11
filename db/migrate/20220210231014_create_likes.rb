class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :like_type                       # Type of like (like, love, support, insightful, fun, curious...)
      t.references :user, index: true           # 1 like originates from 1 and only 1 user
      t.references :gossip, index: true         # 1 like is linked to a 'gossip' XOR to a 'comment'
      t.references :comments, index: true       # How to manage this XOR link: (i) routing method testing which link is !nil? (ii) Via polymorphism?
      t.timestamps                              # created_at & update_at automated creation
    end
  end
end
# Table definition complete