class Stock < ActiveRecord::Base
belongs_to :producto,foreign_key: :producto_id
end
