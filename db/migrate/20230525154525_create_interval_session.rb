class CreateIntervalSession < ActiveRecord::Migration[7.0]
  def change
    create_table :interval_sessions do |t|
      t.string :name
      t.datetime :dt
    end
  end
end
