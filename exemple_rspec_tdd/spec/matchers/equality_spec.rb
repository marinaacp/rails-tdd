describe "equality matchers" do
  it "equal comparision" do
    x = "Marina"
    y = "Marina"
    expect(x).not_to equal(y) # O equal testa o objeto
    expect(x).to equal(x)
  end

  it "be comparision" do
    x = "Marina"
    y = "Marina"
    expect(x).not_to be(y) # O be testa o objeto
    expect(x).to be(x)
  end

  it "eq comparision" do
    x = "Marina"
    y = "Marina"
    expect(x).to eq(y) # O eq e o eql testa o valor
  end
end
