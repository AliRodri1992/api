class User < ApplicationRecord
  belongs_to :rol

  validates_uniqueness_of :username, case_sensitive: false, message: "Nombre de usuario existente."
  validates_uniqueness_of :email, case_sensitive: false, message: "Correo electrónico existente."
end
