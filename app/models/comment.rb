class Comment < ApplicationRecord
  belongs_to :user                        # link with 1 user
  belongs_to :gossip, optional: true      # link to 0..1 gossip ('optional' enables this link to be null)
  belongs_to :comment, optional: true     # link to 1..0 comment ('optional' enables this link to be null)
end
# Class relation(s) definition complete