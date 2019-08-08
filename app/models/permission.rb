class Permission < ApplicationRecord
  has_many :permission_rols
  has_many :rols, through: :permission_rols
end
