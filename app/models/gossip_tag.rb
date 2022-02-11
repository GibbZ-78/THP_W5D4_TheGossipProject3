class GossipTag < ApplicationRecord
  belongs_to :gossip                                # link to 1 'gossip' (to enable the gossip (N) <=> (N) tag relation)
  belongs_to :tag                                   # link to 1 'tag' (cf. above)
end
# Class relation(s) definition complete