class Ordenproducto < ActiveRecord::Base

  belongs_to :producto,foreign_key: :producto_id
  belongs_to :orden,foreign_key: :orden_id

end
