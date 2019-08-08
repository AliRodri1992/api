class CreateRols < ActiveRecord::Migration[5.2]
  def change
    create_table :rols do |t|
      t.string :rol
      t.timestamps
    end

    Rol.create(rol: 'Admin')
    Rol.create(rol: 'Operador')
    Rol.create(rol: 'Desarrollador')
  end
end
