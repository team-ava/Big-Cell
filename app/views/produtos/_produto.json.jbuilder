json.extract! produto, :id, :nome, :preco, :tipo, :quantidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
