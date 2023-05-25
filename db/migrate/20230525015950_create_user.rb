class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :type
      t.references :job, null: false, foreign_key: true
      t.integer :level
      t.references :manager
      t.text :blurb
      t.string :url
    end
    add_foreign_key :users, :users, column: :manager_id, validate: false
  end
end
