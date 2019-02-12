class LaterLineSerializer < ActiveModel::Serializer
  attributes :id, :text, :author, :email, :first_line_id
end
