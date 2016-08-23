class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome, limit: 80, null: false
      t.string :email, limit: 50, null:false
      t.timestamps null: false
    end
  end
end
