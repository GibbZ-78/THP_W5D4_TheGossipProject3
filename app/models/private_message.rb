class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"                                # 1 message has 1 sender (user) only
  belongs_to :recipient, class_name: "User"                             # 1 message has 1 recipient (user) only
  belongs_to :previous_message, class_name: "PrivateMessage"
  has_many :previous_messages, foreign_key: 'previous_message_id', 
                               class_name: "PrivateMessage",
                               optional: true                           # 1 message can be linked to 0..N parent messages
end
