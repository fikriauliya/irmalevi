class CreateGuestBooks < ActiveRecord::Migration
  def change
    create_table :guest_books do |t|
      t.string :name
      t.text :message
      t.string :ip_address

      t.timestamps
    end
  end
end
