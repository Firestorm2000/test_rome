#require_relative  "../RomeConvertor.rb"
require "../lib"

RSpec.describe RomeConvertor do
  context "#to_dec string_arg" do
    it "MMCLIV to 1954" do
      expect("MMCLIV".to_dec).to eq 1954
    end
 
    it "converts 'IV' to 4" do
      expect("IV".to_dec).to eq 4
    end
 
    it "converts 'MMMMCMXCIX' to 4999" do
      expect("MMMMCMXCIX".to_dec).to eq 4999
    end
     it "converts 4999 to 'MMMMCMXCIX'" do
      expect("4999".to_rome).to eq MMMMCMXCIX
    end
     it "converts 4 to 'IV'" do
      expect("4".to_rome).to eq IV
    end
     it "converts 2_154 to 'MMCLIV'" do
      expect("2_154".to_rome).to eq MMCLIV
    end
  end
end

