class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :tin_id
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
