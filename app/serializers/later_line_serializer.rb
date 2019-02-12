class LaterLineSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :email, :line_number, :first_line_id
end
