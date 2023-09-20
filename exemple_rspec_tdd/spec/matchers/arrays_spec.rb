# Negar um matcher sem ser com not_to:
RSpec::Matchers.define_negated_matcher :an_array_excluding, :include # O segundo é o matcher q vc vai negar e o primeiro o nome do matcher de negação

describe Array.new([1, 2, 3]), "Array", :collection do # collection: true tbm funcion
  it "includes" do
    expect(subject).to include(2)
  end

  it "match array" do
    expect(subject).to match_array([1, 2, 3]) # Só funciona com o mesmo exato array
  end

  it "conatin_exactly" do
    expect(subject).to contain_exactly(1, 2, 3) # Só funciona com o mesmo exato array
  end

  it "negates_matchers", :slow do # No arquivo .rspec vc pode colocar --tag ~slow  o tio é a negação. N vai rodar todos os testes slow
    expect(subject).to an_array_excluding(4)
  end
end
