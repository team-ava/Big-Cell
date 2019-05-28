class Cliente < ApplicationRecord
    validates :nome, presence: { message: 'é um campo obrigatório' }
end
