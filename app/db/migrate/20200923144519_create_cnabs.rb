class CreateCnabs < ActiveRecord::Migration[6.0]
  def change
    create_table :cnabs do |t|
      t.integer :operation_type
      t.date :operation_at
      t.decimal :value, precision: 10, scale: 2
      t.string :cpf
      t.string :card
      t.integer :hour
      t.string :owner
      t.string :store

      t.timestamps
    end
  end
end
