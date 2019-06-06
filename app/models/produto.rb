class Produto < ApplicationRecord
    validates :nome, presence: { message: 'é um campo obrigatório' }
    validates :nome, length: {minimum: 4}
end
  