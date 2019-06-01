class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :fb_url
      t.text :pic_url
      t.string :fb_id
      t.text :tw_url
      t.text :ig_url
      t.text :in_url

      t.timestamps
    end
  end
end
