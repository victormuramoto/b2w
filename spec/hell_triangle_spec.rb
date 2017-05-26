require_relative '../hell_triangle.rb'
require_relative '../hell_triangle_validator.rb'

describe HellTriangle do
  describe '#.resolve' do
    subject { described_class.resolve(input) }

    before do
      allow(HellTriangleValidator).to receive_message_chain(:new,:validate).and_return(nil)
    end
    
    context 'when find maximum total by example' do
      let(:input) { [[6],[3,5],[9,7,1],[4,6,8,4]] }
      let(:result) { 'The maximum result is: 26' }
      
      it{ expect{subject}.to output(result).to_stdout }
    end

    context 'when find maximum total when right side is always maximum' do
      let(:input) { [[6],[3,5],[1,7,9],[4,6,4,8]] }
      let(:result) { 'The maximum result is: 28' }
      
      it{ expect{subject}.to output(result).to_stdout }
    end

    context 'when find maximum total when left side is always maximum' do
      let(:input) { [[6],[10,5],[10,7,9],[10,6,4,8]] }
      let(:result) { 'The maximum result is: 36' }
      
      it{ expect{subject}.to output(result).to_stdout }
    end
  end
end