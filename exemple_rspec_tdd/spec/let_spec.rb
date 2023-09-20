$counter = 0 # Variavel global para o arquivo todo

describe "let" do
  let!(:count) { $counter += 1 } # let! com exclamação vc força chamar antes de todo teste, n só quando a variavél e invocada

  it "testes let!" do
    puts "Só um teste" #com let! aqui o invoca o coutn. com let normal aqui n invoca o count
  end

  it "call let for the first time" do
    expect(count).to eq(2) # Chama let primeira vez
    expect(count).to eq(2) # Let em cache pq ja foi chamado primeira vez
  end

  it "call let for the second time" do
    expect(count).to eq(3) # Chama let primeira vez
    expect(count).to eq(3) # Let em cache pq ja foi chamado primeira vez
  end
end
