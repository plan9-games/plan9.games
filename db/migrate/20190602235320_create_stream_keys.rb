class CreateStreamKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :stream_keys do |t|
      t.string :key, null: false
      t.string :key_hash, null: false, size: 32
      t.boolean :active, null: false, default: true
      t.timestamps
    end
  end
end
