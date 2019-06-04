class Cliente < ApplicationRecord
    validates :nome, presence: { message: 'é um campo obrigatório' }
    validates :cpf, uniqueness: {menssage: 'campo já existente'}
end
