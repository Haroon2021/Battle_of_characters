require 'battle_of_characters'

describe Battle do
    describe '#scoreCompare' do
        it 'Should return a score of 1 for the string A' do
            battle = Battle.new
            expect(battle.score('A')).to eq(1)
        end
    end
end