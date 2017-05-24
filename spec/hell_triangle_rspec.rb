require_relative '../hell_triangle.rb'

describe HellTriangle do
  subject { described_class.new(input).resolve }

  context 'when is not a Array' do
    let(:input) { "" }
    let(:result) { "input must be an Array" }
    
    it{ expect{subject}.to output(result).to_stdout }
  end


end