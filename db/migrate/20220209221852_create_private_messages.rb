class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.string :object                          # title of the message
      t.text :body                              # content of the message
      t.boolean :related                        # true if the message has been displayed / read, false elseway
      t.references :user, index: true           # 1 user is the sender
                                                # TO DO: see how to reference the "recipient" (another user)
                                                # TO DO: see if it'd be interesting to have a link to the previous / next (parent / child) message
      t.timestamps
    end
  end
end
