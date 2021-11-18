class CreateNinhos < ActiveRecord::Migration[6.1]
  def change
    create_table :ninhos do |t|
      t.string :nome
      t.string :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
