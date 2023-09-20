require "student"
require "course"

describe "Stub" do
  # Stub é forçar uma resposta específica para um método de um objeto colaborador
  # É diferente do duble, pq os metodos e as classes de fato existem no código, vc só força uma resposta especifica quando o metodo é invocado
  # Stubs são para fase de setup e mocks para fase de verify(comportamento)
  it "has_finished" do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(instance_of(Course)).and_return(true) # Essa linha é o stub
    # Aqui o metodo has_finished não foi implemtado, então falo q quando ele é invocado vai retornar true
    finished_course = student.has_finished?(course)
    expect(finished_course).to be_truthy
  end

  it "is complete" do
    course = Course.new

    allow(course).to receive(:complete?).and_return(true)
    # Aqui o metodo complete não foi implemtado, então falo q quando ele é invocado vai retornar true
    complete_course = course.complete?
    expect(complete_course).to be_truthy
  end

  it "has dynamic arguments" do
    student = Student.new

    allow(student).to receive(:my_test) do |arg| # Pode receber mais de um tipo de argumento
      if arg == :hello
        "Oie"
      elsif arg == :hi
        "Olá"
      end
    end

    expect(student.my_test(:hello)).to eq("Oie")
    expect(student.my_test(:hi)).to eq("Olá")
  end

  it "has any class instace" do
    student = Student.new
    second_studen = Student.new

    allow_any_instance_of(Student).to receive(:my_test).with(:hi).and_return(true)
    expect(student.my_test(:hi)).to be_truthy
    expect(second_studen.my_test(:hi)).to be_truthy
  end

  it "Errors" do #stubs tbm podem forçar erros
    student = Student.new

    allow(student).to receive(:my_test).with(:hi).and_raise("Deu caquinha")
    expect {student.my_test(:hi)}.to raise_error("Deu caquinha")
  end
end
