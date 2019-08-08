json.status :ok
json.code 200
json.message "Listar Usuarios Activos"
json.users do
  json.array! @users do |user|
    json.extract! user, :id, :username, :email, :names, :paternal_surname, :maternal_surname, :age, :active
    json.rol user.rol.rol
    json.rol_id user.rol_id
  end
end