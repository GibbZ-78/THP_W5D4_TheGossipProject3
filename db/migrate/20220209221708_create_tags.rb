class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :label                 # label of the tag
      t.timestamps                    # created_at & update_at automated creation
    end
  end
end
# Table definition complete