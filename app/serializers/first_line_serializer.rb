class FirstLineSerializer < ActiveModel::Serializer
  attributes :id, :text, :later_lines
  has_many :later_lines
end
