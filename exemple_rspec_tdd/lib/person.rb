class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "I'm Happy"
  end

  def sad!
    @status = "I'm Sad"
  end

  def cranky!
    @status = "I'm Cranky"
  end
end
