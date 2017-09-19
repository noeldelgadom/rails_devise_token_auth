class CreateLinkedInContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :linked_in_contacts do |t|
      t.string :url_address

      t.timestamps
    end
  end
end
