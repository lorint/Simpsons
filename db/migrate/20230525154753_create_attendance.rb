class CreateAttendance < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :athlete
      t.references :interval_session, foreign_key: true
    end
    add_foreign_key :attendances, :users, column: :athlete_id
  end
end
