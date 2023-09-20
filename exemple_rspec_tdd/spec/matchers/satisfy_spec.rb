describe "satisfy" do
  it { expect(10).to be_even }
  it { expect(10).to satisfy("be a multiple of 5") { |x| x % 5 == 0} } #precisa stisfazer a expressão. Descrição do satisfy é opcional
end
