class CreateGossipTags < ActiveRecord::Migration[5.2]
  def change
    create_table :gossip_tags do |t|
      t.belongs_to :gossip, index: true         # link to a given gossip (to enable the gossip (N) <=> (N) tag relation)
      t.belongs_to :tag, index: true            # link to a given tag (cf. above)
      t.timestamps                              # created_at & update_at automated creation
    end
  end
end
# Table definition complete