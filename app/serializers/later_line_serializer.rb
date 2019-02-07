class LaterLineSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :email, :line_number
end
