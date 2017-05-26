require_relative '../hell_triangle_validator.rb'

describe HellTriangleValidator do
  describe '#validate' do
    subject { described_class.new(input).validate }

    context 'when is not a Array' do
      let(:input) { "" }
      let(:result) { HellTriangleValidator::INVALID_PARTS }
      
      it{ expect{subject}.to output(result).to_stdout }
    end

    context 'when array size is 0' do
      let(:input) { [] }
      let(:result) { HellTriangleValidator::INVALID_TRIANGLE }
      
      it{ expect{subject}.to output(result).to_stdout }
    end

    context 'when array size is 1' do
      let(:input) { [[0]] }
      let(:result) { HellTriangleValidator::INVALID_TRIANGLE }
      
      it{ expect{subject}.to output(result).to_stdout }
    end
    
    context 'when any parts of input is not a Array type' do
      let(:input) { [[0],[1,2], 1] }
      let(:result) { HellTriangleValidator::INVALID_PARTS }
      
      it{ expect{subject}.to output(result).to_stdout }
    end

    context 'when parts of triangle are not successive' do
      let(:input) { [[0],[1,2],[0,2]] }
      let(:result) { HellTriangleValidator::INVALID_TRIANGLE }
      
      it{ expect{subject}.to output(result).to_stdout }
    end
  end
end