class Battle
    def initialize
        @count = 1
        @letter_num_hash = {}
    end

    def letter_score
        ("A".."Z").each do |letter|
            @letter_num_hash[letter] = @count
            @count = @count + 1
           
        end

    puts @letter_num_hash
    end

    

    # def score(x)
    #     if x

    # end
end

battle = Battle.new
return battle.letter_score


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