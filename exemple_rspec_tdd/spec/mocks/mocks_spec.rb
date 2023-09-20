require "student"
require "course"

describe "Mocks" do
  # Stubs são para fase de setup e mocks para fase de verify(comportamento)
  it "my_test" do
    student = Student.new

    expect(student).to receive(:my_test).with(:hi)
    #mocks são para testar comportamento. Aqui é o comportamento de chamar o metodo

    student.my_test(:hi)
  end

  it "repetition" do
    student = Student.new
    expect(student).to receive(:my_test).with(:hi).twice
    #  Outras variações são:
    # expect(obj).to receive(:message).once
    # expect(obj).to receive(:message).twice
    # expect(obj).to receive(:message).exactly(3).times
    # expect(obj).to receive(:message).at_least(:once)
    # expect(obj).to receive(:message).at_least(:twice)
    # expect(obj).to receive(:message).at_least(n).times
    student.my_test(:hi)
    student.my_test(:hi)
  end

  it "return" do # Setar um retonr
    student = Student.new
    expect(student).to receive(:my_test).with(:hi).and_return(true)
    puts student.my_test(:hi)
  end
end
