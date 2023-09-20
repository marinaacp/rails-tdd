describe (1..5), "Ranges" do
  it "cover" do
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(0, 6)
    is_expected.not_to cover(0, 6) # is_expected == expect(subject)
  end

  it { is_expected.to cover(2) } # One line test
end
