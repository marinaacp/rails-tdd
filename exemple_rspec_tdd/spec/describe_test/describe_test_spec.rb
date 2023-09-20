describe "description" do
  it "String inside it" do
    str = "Jackson"
    expect(str.size).to eq(7)
  end
end

describe "Jackson" do
  it "String on describe" do
    expect(subject.size).to eq(7)
  end
end

describe [1, 2] do
  it "Array on describe" do
    expect(subject.size).to eq(2)
  end
end

# A diferença entre eles é que no segundo passo a string que eu quero coloco dentro do describe
# então ela já pe inicializada quando começo o describe bloco
