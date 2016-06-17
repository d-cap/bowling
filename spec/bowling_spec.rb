require_relative '../lib/bowling'

describe Bowling do
  context 'when a game is played' do
    it 'with 0s' do
      bowling = Bowling.new([0] * 20)
      expect(bowling.score).to eq(0)
    end

    it 'with a spare' do
      bowling = Bowling.new([7,3,6] + [0] * 17)
      expect(bowling.score).to eq(22)
    end

    it 'with a strike' do
      bowling = Bowling.new([10,3,6] + [0] * 17)
      expect(bowling.score).to eq(28)
    end

    it 'by Rosie' do
      bowling = Bowling.new([1,4,6,4,5,5,10,0,1,7,3,6,4,10,2,8,4,6,2])
      expect(bowling.score).to eq(134)
    end

    it 'and it is perfect' do
      bowling = Bowling.new([10] * 12)
      expect(bowling.score).to eq(300)
    end
  end
end
