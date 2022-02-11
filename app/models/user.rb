class User < ApplicationRecord
  belongs_to :city                                              # 1 user lives in 1 city only
  has_many :gossips, dependent: :destroy                        # 1 user may have written 0..N gossips. Deleting a user, deletes his/her related gossips
  has_many :likes, dependent: :destroy                          # 1 user may give 0..N likes. Deleting a user, deletes the likes he/she's given
  has_many :comments, dependent: :destroy                       # 1 user may have written 0..N comments. Deleting a user, will delete his/here comments
  has_many :sent_messages, foreign_key: 'sender_id', 
                           class_name: "PrivateMessage"         # 1 user can have sent 0..N messages
  has_many :received_messages, foreign_key: 'recipient_id', 
                               class_name: "PrivateMessage"     # 1 user can have received 0..N messages
end
