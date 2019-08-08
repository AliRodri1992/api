unless @errors.blank?
  json.status :bad
  json.message "Usuario no actualizado. Revise los errores"
  json.errors @errors
else
  json.status :ok
  json.code 200
  json.message "Usuario actualizado exitosamente."
end