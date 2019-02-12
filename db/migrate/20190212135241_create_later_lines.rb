class CreateLaterLines < ActiveRecord::Migration[5.2]
  def change
    create_table :later_lines do |t|
      t.string :text
      t.string :author
      t.string :email
      t.references :first_line, foreign_key: true
    end
  end
end
