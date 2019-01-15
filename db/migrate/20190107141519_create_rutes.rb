class CreateRutes < ActiveRecord::Migration[5.2]
  def change
    create_table :rutes do |t|
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
