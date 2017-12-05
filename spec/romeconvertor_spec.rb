require_relative  "../RomeConvertor.rb"
RSpec.describe RomeConvertor, "#crypt" do 
	
	context "testing romeconvertor" do 
		it "tests romeconvertor" do
			res = RomeConvertor.new 
			#expect(res.crypt("TUES" , 2)).to eq "VWGU"
		end
	end 

end 
