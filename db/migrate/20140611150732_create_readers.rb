class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :phone_number, null: false
    end
  end
end
