class Orden < ActiveRecord::Base

  has_many :ordenproductos
  has_many :productos,through: :ordenproductos

  accepts_nested_attributes_for :ordenproductos,:reject_if => :all_blank,:allow_destroy => true

end
