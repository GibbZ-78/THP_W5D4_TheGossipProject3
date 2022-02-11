class Like < ApplicationRecord
  belongs_to :user                                # 1 'like' is added by 1 given user
  belongs_to :gossip, optional: true              # 1 'like' is linked to 0..1 gossip
  belongs_to :comment, optional: true             # XOR to 1..0 comment
end
# Class relation(s) definition complete