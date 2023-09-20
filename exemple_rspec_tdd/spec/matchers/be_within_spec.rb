describe "be_within" do # bom para testar numeros decimais
  it { expect(12.5).to be_within(0.5).of (12) } # Espero que 12.5 esteja a atpe 0.5 de 12
  it { expect([12.2, 11.9, 12.9, 13.2]).to all( be_within(1.2).of (12) )}
end
