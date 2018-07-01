class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :news, index: true
      t.references :city, index: true
      t.references :profession_status, index: true

      t.timestamps null: false
    end
  end
end
