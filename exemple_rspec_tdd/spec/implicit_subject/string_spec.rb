require 'not_empty_string'
describe String do
  describe NotEmptyString do
    it "describes a not empty string" do
      expect(subject).to eq("A string") # aqui o subjet é a classe NotEmptyString não String, já que notempty é mais interno
    end
  end
end
