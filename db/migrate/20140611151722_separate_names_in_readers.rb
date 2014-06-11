class SeparateNamesInReaders < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string, null: false
    add_column :readers, :last_name, :string, null: false
    Reader.find_each do |user|
      full_name = user.name.split
      user.first_name = full_name[0]
      user.last_name = full_name[-1]
      user.save!
    end
  end
end
