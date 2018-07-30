# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      # t.string :title
      # t.string :url
      # Database authenticate
      t.string :email,             null: false, default: ''
      t.string :encrypted_passwod, null: false, default: ''

      # rememberable
      t.datetime :remember_created_at

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
