class CreateLaterLines < ActiveRecord::Migration[5.2]
  def change
    create_table :later_lines do |t|
      t.string :text
      t.string :author
      t.string :email
      t.integer :line_number
      t.references :first_line, foreign_key: true

      t.timestamps
    end
  end
end
