unless @errors.blank?
  json.status :bad
  json.message "Usuario no creado. Revise los errores"
  json.errors @errors
else
  json.status :ok
  json.code 200
  json.message "Usuario creado exitosamente."
end