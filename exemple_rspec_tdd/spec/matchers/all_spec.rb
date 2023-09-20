describe [1, 7, 9], collection: true do # Collection para colocar tag. no colsole rspec -t collection
  it { is_expected.to all( (be_odd).and be_an(Integer) ) } #All para testar todos os elementos da coleção. N esquecer do parenteses dele
end

describe [1, 7, 9], type: "marina_test" do # Mesma coisa do collection, só q no console vai colocar -t type:nome
  # Posso botar dentro do arquivo .rspec --tag type:marina_test. Qaundo chamra rspec vai chamar só elas
  it { is_expected.to all( (be_odd).and be_an(Integer) ) } #All para testar todos os elementos da coleção. N esquecer do parenteses dele
end
