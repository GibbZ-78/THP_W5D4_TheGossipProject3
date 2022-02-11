class City < ApplicationRecord
  has_many :users                   # can be linked to 0..N users
end
# Class relation(s) definition complete