class Battle
    def initialize
        @count = 1
        @letter_num_hash = {}
        @player1score = 0
        @player2score = 0
        @score = 0
        @countsmall = 0.5
    end

    def letter_score
        ("A".."Z").each do |letter|
            @letter_num_hash[letter] = @count
            @count = @count + 1
        end
        ("a".."z").each do |letter|
            @letter_num_hash[letter] = @countsmall
            @countsmall = @countsmall + 0.5
        end
    end

    
    def score(x,y)
        word1 = x.split("")
        
        word1.each do |letter|
            @player1score = @player1score + @letter_num_hash[letter]
        end

        word2 = y.split("")
        
        word2.each do |letter|
            @player2score = @player2score + @letter_num_hash[letter]
        end 
    end

    def result
        if @player1score == @player2score
            return "Tie!"
        elsif @player1score < @player2score
            return "Two"
        else
            return "One"
        end

    end

end

# class Abc
#     def initialize
#         @a = 0
#     end
#     def asd
#         @a = 2+2
#         puts @a
#     end
    
# end

# qwerty = Abc.new
# qwerty.asd