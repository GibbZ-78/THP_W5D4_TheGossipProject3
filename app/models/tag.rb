class Tag < ApplicationRecord
  has_many :gossip_tags                               # 1 tag has 0..N links with the 'gossip_tags' joint table
  has_many :gossips, through: :gossip_tags            # hence benefiting from the reculting 0..N views on related 'gossips'
end
# Class relation(s) definition complete
