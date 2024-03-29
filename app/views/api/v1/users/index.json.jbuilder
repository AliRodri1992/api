unless @users.blank?
  json.status :ok
  json.code 200
  json.message "Listando usuarios..."
  json.users do
    json.array! @users do |user|
      json.extract! user, :id, :username, :email, :names, :paternal_surname, :maternal_surname, :age, :active
      json.rol user.rol.rol
      json.rol_id user.rol_id
    end
  end
else
  json.status :not_found
  json.code 404
  json.message "No existen registros."
end