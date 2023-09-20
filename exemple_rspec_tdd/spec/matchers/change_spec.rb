require "counter"

describe "Matcher change" do
  it { expect{Counter.increment}.to change { Counter.qtd } }
  # Expect está em bloco pq já vamos testar ele, não em parentes pq se não da erro
  # Eu espero que ao chamar o incremento eu mude qtd
  it { expect{Counter.increment}.to change { Counter.qtd }.by(1) }
  it { expect{Counter.increment}.to change { Counter.qtd }.from(2).to(3) } # espero mudar de 2 para 3. 2 pq já incremetou nas duas vezes q chamou a cima
end
