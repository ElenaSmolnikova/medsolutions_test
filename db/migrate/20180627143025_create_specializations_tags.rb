class CreateSpecializationsTags < ActiveRecord::Migration[5.1]
  def change
    create_table :specializations_tags do |t|
      t.references :tag, index: true
      t.references :specialization, index: true
    end
  end
end
