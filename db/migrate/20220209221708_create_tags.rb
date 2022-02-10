class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :tag_name        # label of the tag
                                # TO DO: see which references could be needed
      t.timestamps
    end
  end
end
