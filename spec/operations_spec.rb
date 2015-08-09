require 'spec_helper'

describe Operations do
  context '#sum' do
    it 'sums two numbers' do
      expect(Operations.sum 2, 3).to eq 5
    end
  end

  context '#sub' do
    it 'substracts a number' do
      expect(Operations.sub 10, 7).to eq 3
    end
  end

  context '#mult' do
    it 'multiply two numbers' do
      expect(Operations.mult 3, 6).to eq 18
    end

    context 'when multiply by zero' do
      it 'always returns zero' do
        expect(Operations.mult 3, 0).to eq 0
        expect(Operations.mult 10, 0).to eq 0
        expect(Operations.mult 0, 6).to eq 0
      end
    end
  end

  context '#div' do
    it 'divides a number' do
      expect(Operations.div 6, 3).to eq 2
    end

    context 'when divide zero by another number' do
      it 'always returns zero' do
        expect(Operations.div 0, 6).to eq 0
      end
    end

    context 'when divide by zero' do
      it 'throws an error' do
        expect {
          Operations.div 5, 0
        }.to raise_error("can't divide by zero")
      end
    end
  end
end
