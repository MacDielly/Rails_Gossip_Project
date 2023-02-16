class Comment < ApplicationRecord
  include Visible

  belongs_to :gossip
end
