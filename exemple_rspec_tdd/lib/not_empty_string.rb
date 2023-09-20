class NotEmptyString < String #String é uma classe nativa do rails
  def initialize
    self << "A string"
  end
end
