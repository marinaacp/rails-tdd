require "person"

shared_examples "status" do |feling| #Para agrupar testes repetitivos
  it "Expectes a #{feling} person" do
    person.send("#{feling}!") # Aqui é um objeto enviado uma mensagem para outro. Olhar caderno aula 39
    expect(person.status).to eq("I'm #{feling.capitalize}")
  end

end

describe "Person" do
  subject(:person) { Person.new }

  it_behaves_like 'status', :happy #vai entrar no compartilhado passando o paramentro happy como feling
  it_behaves_like 'status', :sad
  it_behaves_like 'status', :cranky
  # Pode ser tbm: include_exemples, it_should_behave_like

  # it "Expectes a happy person" do
  #   person.happy!
  #   expect(person.status).to eq("I'm Happy")
  # end

  # it "Expectes a sad person" do
  #   person.sad!
  #   expect(person.status).to eq("I'm Sad")
  # end

  # it "Expectes a cranky person" do
  #   person.cranky!
  #   expect(person.status).to eq("I'm Cranky")
  # end
end
