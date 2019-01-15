class CreateJadwals < ActiveRecord::Migration[5.2]
  def change
    create_table :jadwals do |t|
      t.date :tgl_b
      t.time :jam_b
      t.string :status_bangku
      t.belongs_to :bus, foreign_key: true
      t.belongs_to :rute, foreign_key: true

      t.timestamps
    end
  end
end
