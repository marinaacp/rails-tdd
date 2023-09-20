require "person"

describe "Attributes" do

  # before(:each) do # No spec helper ficaram vários outros exemplos
  #   @person = Person.new
  # end

  let(:person) { Person.new } # Substitui o before e a código só é rodado quando a variavel é chamada pela primeira vez no teste (blico de it). Olhar file let

  it "have_attributes" do
    person.name = "Marina"
    person.age = 20
    expect(person).to have_attributes(name: starting_with("Ma"), age: (be >= 20)) #starting_witj é a mesma coisa que start_with
  end
end
