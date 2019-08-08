class Rol < ApplicationRecord
  has_many :permission_rols
  has_many :permissions, through: :permission_rols
  has_many :users
end
