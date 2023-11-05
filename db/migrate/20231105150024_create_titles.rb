class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :subject,  null: false
      t.string :text,     null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
