class Cliente < ApplicationRecord
    validates :nome, presence: {message: 'é um campo obrigatório'}
    
    validates :cpf, presence: {message: 'é um campo obrigatório'}
    validates :cpf, uniqueness: {message: 'campo já existente'}
    validates  :cpf, length: {minimum: 11,maximum: 14}

    validates :fone, presence: {message: 'é um campo obrigatório'}
    validates :fone, length: {minimum: 11,maximum: 11}
end
