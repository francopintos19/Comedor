class Producto < ActiveRecord::Base
  has_many :stock
  has_many :ordenproductos
  has_many :ordens,through: :ordenproductos

end
