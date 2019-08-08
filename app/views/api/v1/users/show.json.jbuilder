unless @user.blank?
  json.status :ok
  json.code 200
  json.message "Usuario encontrado."
  json.user do
    json.id @user.id
    json.username @user.username
    json.email @user.email
    json.name @user.names
    json.paternal_surname @user.paternal_surname
    json.paternal_surname @user.maternal_surname
    json.age @user.age
    json.rol @user.rol.rol
    json.rol_id @user.rol_id
    json.active @user.active
  end
else
  json.status :not_found
  json.code 404
  json.message "Usuario no existente."
end