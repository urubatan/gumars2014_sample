class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :senha
      t.string :papel
      t.timestamps
    end
  end
end
