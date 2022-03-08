require 'battle_of_characters'

describe Battle do
    describe '#Result' do
        # it 'Should return a score of 1 for the string A' do
        #     battle = Battle.new
        #     battle.letter_score
        #     expect(battle.score('A')).to eq(1)
        # end
        # it 'Should return a score of 1 for the string A' do
        #     battle = Battle.new
        #     battle.letter_score
        #     expect(battle.score('B')).to eq(2)
        # end
        # it 'Should return a score of 3 for the string AB' do
        #     battle = Battle.new
        #     battle.letter_score
        #     expect(battle.score('AB')).to eq(3)
        # end
        # it 'Should return a score of 3 for the string AB' do
        #     battle = Battle.new
        #     battle.letter_score
        #     expect(battle.score('ABCDEF')).to eq(21)
        # end
        # it 'Should return a score of 3 for the string AB' do
        #     battle = Battle.new
        #     battle.letter_score
        #     expect(battle.score('ab')).to eq(1.5)
        # end
        # it 'Should return a score of 3 for the string AB' do
        #     battle = Battle.new
        #     battle.letter_score
        #     expect(battle.score('Ad')).to eq(3)
        # end
        it 'Should return Tie! for inputs A and A' do
            battle = Battle.new
            battle.letter_score
            battle.score("A","A")
            expect(battle.result).to eq("Tie!")
        end
        it 'Should return Two for inputs A and B' do
            battle = Battle.new
            battle.letter_score
            battle.score("A","B")
            expect(battle.result).to eq("Two")
        end
        it 'Should return One for inputs B and A' do
            battle = Battle.new
            battle.letter_score
            battle.score("B","A")
            expect(battle.result).to eq("One")
        end
        it 'Should return One for inputs B and A' do
            battle = Battle.new
            battle.letter_score
            battle.score("BaFgH","Abc")
            expect(battle.result).to eq("One")
        end
    end
end