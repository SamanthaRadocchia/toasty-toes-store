class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.text :copy

      t.timestamps
    end
  end
end
