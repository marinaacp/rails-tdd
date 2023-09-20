require "calculator" #Não precisou ser rlative pq o rspec já adiciona a pasta lib

RSpec.describe Calculator, "about the calculator" do #quando coloca no describe uma classe, o rspec já instacia (Calculator.new) sozinho -- subject implicito. A string aqui é opicional
  # subject(:calc) { described_calss.new() } ---- Vc pode mudar o nome do subject, se quiser.
  # described_class é justamente o Calculator
  # Sendo assim a linha dentro do it se manteria --- result = calc.sum(5, 7)
  # O --RSpec-- na frente do describe é opcional quamdo o teste é rodado na pasta certa. Mas se for fazer isso em outro lugar, chamar a classa RSpec

  # se dentro do describe n for uma classe, for uma string, vc pode fazer o mesmo para intaciar uma classe
  # subject(:calc) { Calculator.new() } -- subject explicito
  context "use sum methos for 2 numbers" do #context oara agrupar testes
    it 'with positive numbers' do
      result = subject.sum(5, 7) # o subjec aqui é o calculator. Que já foi instaciado pelo próprio rspec
      expect(result).to eq(12)
    end

    it 'with negative numbers' do # substituir o it por xit deixa o teste pendente
      result = subject.sum(-3, 2)
      expect(result).to eq(-1)
    end
  end

  context "div method" do
    it "divides by zero" do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError) # Aqui no expect não usamos um arqumento mas sim um bloco
      # pq se for arqumento o erro acontece antes de rodas todo o teste e n pega o exeception.
      # Se n souber a clsse do erro ou o texto do erro coloca --- raise_exception --- sem argumento, que o rails da a dica
      expect{subject.div(3, 0)}.to raise_error("divided by 0")
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3, 0)}.to raise_error(/divided/) # Posso usar regex tbm
    end
  end
end
