json.extract! venda, :id, :clienteId, :produtoId, :valorServico, :valorTotal, :created_at, :updated_at
json.url venda_url(venda, format: :json)
