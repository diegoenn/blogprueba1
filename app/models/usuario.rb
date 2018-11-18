class Usuario < ApplicationRecord
  validates :nombre, presence: true, length: {maximum: 20}
  validates :email, presence:true
end
