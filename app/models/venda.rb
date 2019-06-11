class Venda < ApplicationRecord
    has_one :cliente
    has_one :produto
    
    validates :clienteId, presence: { message: 'é um campo obrigatório' }
    
    validates :produtoId, presence: { message: 'é um campo obrigatório' }
    
    validates :valorServico, length: {maximum: 6, message: 'excede o valor padrão de serviços'}
    validates_numericality_of :valorServico, message: 'deve ser um número' 
end
