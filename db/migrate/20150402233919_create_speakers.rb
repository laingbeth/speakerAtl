class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :contact
      t.text :description
      t.text :headline
      t.string :organization

      t.timestamps null: false
    end
  end
end
