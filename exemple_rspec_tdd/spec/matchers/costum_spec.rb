# Para criação de um matcher customizado
RSpec::Matchers.define :be_a_multiple_of do |expected| #Passar nome do matcher q quer criar, o bloco é o valor q vc está passando como parametro quando chama o matcher
  match do |actual| # Aqui é aonde vai testar de fato o q vc quer. O actual é o subject, que pode ser definido dentro do describe ou no cabeçalho dele
    actual % expected == 0
  end
  #actual é o subject
  failure_message do |actual| #Personalizar a mensagem de erro
    "Expected that #{actual} would be a multiple of #{expected}. But it wasan't. Bummer"
  end

  description do |actual| #Personlizar mensagem do teste
    "Expects #{actual} to a multiple of #{expected}. Yay"
  end


end

describe 18, "Custom matcher" do
  it { is_expected.to be_a_multiple_of(3) }
end

describe 15, "Custom matcher" do
  it { is_expected.to be_a_multiple_of(5) }
end
