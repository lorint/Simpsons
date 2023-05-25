class CreateJob < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :name
    end
  end
end
