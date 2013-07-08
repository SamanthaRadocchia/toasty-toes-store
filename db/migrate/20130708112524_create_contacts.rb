class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :copy

      t.timestamps
    end
  end
end
