describe "Matchers truthy || falsy comparision" do
  it "be true" do
    expect(1.odd?).to be true # mesma coisa que be_truthy
  end
  it "be false" do
    expect(1.even?).to be false # mesma coisa que be_falsey
  end
  it "be_nil" do
    expect(defined? x).to be_nil
  end
end
