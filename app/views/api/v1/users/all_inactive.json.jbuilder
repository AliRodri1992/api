json.status :ok
json.code 200
json.message "Listar Usuarios Inactivos"
json.users do
  json.array! @users do |user|
    json.extract! user, :id, :username, :email, :names, :paternal_surname, :maternal_surname, :age, :active
  end
end