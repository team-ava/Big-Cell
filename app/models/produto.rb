class Produto < ApplicationRecord

    validates :nome, presence: { message: 'é um campo obrigatório' }
    validates :nome, length: {minimum: 4}

    validates :preco, presence: { message: 'é um campo obrigatório' }
    validates_numericality_of :preco, message: 'deve ser um número'

    validates :tipo, presence: { message: 'é um campo obrigatório' }

    validates :quantidade, presence: { message: 'é um campo obrigatório' }
    
end
  