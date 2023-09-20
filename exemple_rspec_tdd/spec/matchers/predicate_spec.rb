# São os metodos com interrogação no final
describe "Predicates" do
  it "be_odd" do
    expect(11).to be_odd # Ao inves de dentro do parneteses colocar 11.odd? usa o matcher do predicado com be na frente
  end
end
