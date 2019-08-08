class User < ApplicationRecord
  belongs_to :rol

  validates :names, presence: { message: 'Nombre no puede estar vacío.' }
  validates :paternal_surname, presence: { message: 'Apellido Paterno no puede estar vacío.' }

  validates_uniqueness_of :username, case_sensitive: false, message: "Nombre de usuario existente."
  validates_uniqueness_of :email, case_sensitive: false, message: "Correo electrónico existente."
end
