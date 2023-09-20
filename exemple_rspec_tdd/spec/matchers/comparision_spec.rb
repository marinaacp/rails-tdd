describe "Matchers for comparision" do
  it "> bigger" do
    expect(5).to be > 3
  end

  it ">= bigger equal" do
    expect(5).to be >= 3
    expect(5).to be >= 5
  end

  it "< smaller" do
    expect(5).to be < 6
  end

  it "<= smaller equal" do
    expect(5).to be <= 6
    expect(5).to be <= 5
  end

  it "be_between" do
    expect(5).to be_between(2,5).inclusive # Vai considerar que 2 e 5 tbm contam
    expect(5).to be_between(2,6).exclusive # numero maior que 2 e menor que 6 contem
  end

  it "match" do # para regex
    expect("fulano@email.com").to match(/..@../)
  end

  it "start_with" do
    expect("Marina Costa").to start_with("Marina")
    expect([1,2,3]).to start_with(1)
  end

  it "end_with" do
    expect("Marina Costa").to end_with("Costa")
    expect([1,2,3]).to end_with(3)
  end

  # it "aggregate_failures" do
  #   aggregate_failures do # To see all errors (without stoping), you can agregate the errors
  #     expect(1).to be_between(2,3).inclusive # The test stops at the firs error.
  #     expect(5).to be_between(2,3).inclusive
  #     expect(7).to be_between(2,3).inclusive
  #   end
  # end

  # it "aggregate_failures", :aggregate_failures do # Mesma coisa do de cima
  #   expect(1).to be_between(2,3).inclusive
  #   expect(5).to be_between(2,3).inclusive
  #   expect(7).to be_between(2,3).inclusive
  # end

  # it "aggregate_failures" do 
  #   expect(1).to be_between(2,3).inclusive
  #   expect(5).to be_between(2,3).inclusive
  #   expect(7).to be_between(2,3).inclusive
  # end
end
