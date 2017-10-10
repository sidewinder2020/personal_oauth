class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :screen_name
      t.string :user_id
      t.string :oauth_token
      t.string :oauth_token_secret

      t.timestamps
    end
  end
end
