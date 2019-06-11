class Pedido < ApplicationRecord
    has_one :cliente

    validates :clienteId, presence: { message: 'é um campo obrigatório' }

    validates :nome, presence: { message: 'é um campo obrigatório' }

    validates :descricao, presence: { message: 'é um campo obrigatório' }
    

    
end
