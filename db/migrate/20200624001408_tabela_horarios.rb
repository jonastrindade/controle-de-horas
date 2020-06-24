class TabelaHorarios < ActiveRecord::Migration[6.0]
  def change
    create_table :horarios, id: :serial do |t|
      t.references :user
      t.time :inicio
      t.time :inicio_almoco
      t.time :fim_almoco
      t.time :fim
      t.datetime :data
      t.timestamps
    end
  end
end
