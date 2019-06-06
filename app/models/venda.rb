class Venda < ApplicationRecord
    has_one :cliente
    has_one :produto
end
