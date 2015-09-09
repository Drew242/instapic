class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.string :bio
      t.string :info
      t.string :provider
      t.string :uid
      t.string :image_url
      t.string :website

      t.timestamps null: false
    end
  end
end
