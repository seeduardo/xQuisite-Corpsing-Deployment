class LaterLine < ApplicationRecord

  belongs_to :first_line

  validates :text, :author, presence: true
  
end
