class Gossip < ApplicationRecord
  belongs_to :user                              # 1 'gossip' is authored by 1 user only
  has_many :comments                            # 1 'gossip' can have 0..N 'comments' attached
  has_many :likes                               # 1 'gossip' can also have 0..N 'likes' attached
  has_many :gossip_tags, dependent: :destroy    # 1 'gossip' can have 0..N link with the joint tabke 'gossip_tags'
  has_many :tags, through: :gossip_tags         # hence 1 'gossip' can have a wiew on 0..N 'tags', via the joint table
end
# Class relation(s) definition complete