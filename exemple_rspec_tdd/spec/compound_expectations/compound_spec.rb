require_relative 'helper'

RSpec.configure do |configure| #Se for usar em todos os testes, pode colocar no spec_helper
  configure.include Helper
end

describe "Ruby on Rails" do
  it {is_expected.to start_with("Ruby").and end_with("Rails")}

  it {is_expected.to start_with("Ruby").or start_with("Rails").or start_with("Marina")}

  it {expect(name).to eq("Marina").or eq("Costa").or eq("Maria")} #Usando helper methos arbitrario

  it {expect(songs).to eq("lwymmd").or eq("atwtmv").or eq("red")} #Usando helper methos de modulo

  def name #Isso é um método helper arbitrário. Pode ser tranferido para um helper método de modulo
    ["Marina", "Costa", "João", "Gabriel"].sample
  end
end
