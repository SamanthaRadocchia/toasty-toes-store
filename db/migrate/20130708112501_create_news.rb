class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :copy

      t.timestamps
    end
  end
end
