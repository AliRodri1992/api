class CreatePermissionRols < ActiveRecord::Migration[5.2]
  def change
    create_table :permission_rols do |t|
      t.references :rol, foreign_key: true
      t.references :permission, foreign_key: true

      t.timestamps
    end
    #Permisos Administrador
    PermissionRol.create(rol_id: 1, permission_id: 1)
    PermissionRol.create(rol_id: 1, permission_id: 2)
    PermissionRol.create(rol_id: 1, permission_id: 3)
    PermissionRol.create(rol_id: 1, permission_id: 4)
    PermissionRol.create(rol_id: 1, permission_id: 5)
    PermissionRol.create(rol_id: 1, permission_id: 6)

    # Permisos

    PermissionRol.create(rol_id: 2, permission_id: 1)
    PermissionRol.create(rol_id: 2, permission_id: 2)
    PermissionRol.create(rol_id: 2, permission_id: 3)
    PermissionRol.create(rol_id: 2, permission_id: 5)

    # Desarrollador
    #
    PermissionRol.create(rol_id: 3, permission_id: 2)
    PermissionRol.create(rol_id: 3, permission_id: 6)
  end
end
