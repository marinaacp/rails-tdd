require 'not_empty_string'

describe "Classes matchers" do

  it "be_an_instace_of" do
    expect(1).to be_an_instance_of(Integer) # Extamento o tipo da classe
  end

  it "be_a_kind_of" do
    expect(1).to be_a_kind_of(Integer) # Pode ser por herança

    str = NotEmptyString.new
    expect(str).to be_a_kind_of(String)
    expect(str).to be_a_kind_of(NotEmptyString)
  end

  it "respond_to" do # Se responde a um determinado tipo de método
    expect("aabbcc").to respond_to(:size)
    expect("aabbcc").to respond_to(:count)
  end

  it "be_a" do # mesmo do be_an. Mesmo do kind_of
    str = NotEmptyString.new
    expect(str).to be_a(String)
    expect(str).to be_a(NotEmptyString)

  end

end
