# Dubles são para ciriar objetos temporarios só p testes. é um objeto que pode ou não aceitar menssagens (métodos)
# Dubles são objetos mocados. Existem outros tipos. Esse mock, há stup e spy tbm
describe "Teste of dubles" do
  it "duble" do
    my_duble = double #Aqui o rails sabe que o my_duble(variavel) vai ser um duble
    user = double('User') #Vc pode dar um nome de classe para seu duble
    puts my_duble.inspect
    puts user.inspect

    allow(user).to receive_messages(name: "Marina", password: "12345") # Aqui vc está permitindo mensagens/ parametros para o seu duble
    # allow(user).to receive(:name). and_return("Marina")  # Mesma coisa do de cima
    puts user.name
  end

  it "as_null_object" do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: "Marina", password: "12345") # Aqui vc está permitindo mensagens/ parametros para o seu duble
    puts user.name
    user.abc # Esse mtodos eu não defini como uma mensagem que vai ser recebida pelo duble, era p dar erro,
    # mas as_null_objet previne isso pq ele rejeita qlqr mensagem de erro
  end
end
