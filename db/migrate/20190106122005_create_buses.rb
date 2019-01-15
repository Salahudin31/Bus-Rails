class CreateBuses < ActiveRecord::Migration[5.2]
  def change
    create_table :buses do |t|
      t.string :no_bus
      t.string :jenis_bus
      t.integer :jumlah_b
      t.string :fasilitas

      t.timestamps
    end
  end
end
