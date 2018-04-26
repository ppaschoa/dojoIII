=begin
Dado("que quero criar um post") do  
  pending # Write code here that turns the phrase above into concrete actions
=end

Quando("realizar a requisição post") do |table|
  massa_title = table.rows_hash['title']
  massa_description = table.rows_hash['description']
  massa_pagecount = table.rows_hash['pagecount']
  massa_excerpt = table.rows_hash['excerpt']
  massa_publishdate = table.rows_hash['publishdate']
  
end

Então("receberei um Json de response") do
  expect(@response.code).to eq 200
  puts "Validando o recebimento do código de resposta"
  puts @response.body
end

=begin
Dado("que tenho um post a ler") do
  pending # Write code here that turns the phrase above into concrete actions
=end

Quando("requisitar via API leitura livro") do
  @response = HTTParty.get("http://fakerestapi.azurewebsites.net/api/Books")

  puts @response.body
end

Então("receberei um Json com a leitura do livro") do
  expect(@response.code).to eq 200
  puts "lendo um livro"
end

Dado("que tenho um post a alterar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("requisitar put a alteração de um livro") do
  @response = HTTParty.get("http://fakerestapi.azurewebsites.net/api/Books",
  :body => {'excerpt' => 'Edição Especial do Dia das Mães'}.to_json)

  puts @respose.code
 end

Então("receberei um Json com a alteração proposta") do
  expect(@response.code).to eq 200
  puts "Alteração feita com sucesso"
  puts @response.body
end