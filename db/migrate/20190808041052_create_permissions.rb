class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :permission
      t.timestamps
    end
    Permission.create(permission: "Crear")
    Permission.create(permission: "Leer")
    Permission.create(permission: "Actualizar")
    Permission.create(permission: "Eliminar")
    Permission.create(permission: "Copiar")
    Permission.create(permission: "Activar")
  end
end
