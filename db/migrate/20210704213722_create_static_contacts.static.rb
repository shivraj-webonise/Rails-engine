# This migration comes from static (originally 20210704122056)
class CreateStaticContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :static_contacts do |t|
      t.string :title
      t.text :description
      t.numeric :phonenumber
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
