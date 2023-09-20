describe "matcher output" do
  it { expect { puts "Marina" }.to output.to_stdout }
  #  Output é a saída, resposta q está resposta, a stdout é a padrão.
  it { expect { print "Marina" }.to output("Marina").to_stdout }
  it { expect { puts "Marina" }.to output(/Marina/).to_stdout }

  it { expect { warn "Marina" }.to output(/Marina/).to_stderr } # Mesma coisa do stout só q para saida de error
end
