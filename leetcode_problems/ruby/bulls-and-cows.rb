# problem link
# https://leetcode.com/problems/bulls-and-cows/submissions/877966249/?envType=study-plan&id=level-1
# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
    hash_sec = Hash.new(0)
    cows = 0
    bulls = 0
    for i in 0...secret.size
        if secret[i]==guess[i]
            bulls += 1
        else
            hash_sec[secret[i]] += 1
        end
    end

    for i in 0...secret.size
        if hash_sec[guess[i]] > 0 && guess[i] != secret[i]
            hash_sec[guess[i]] -=1
            cows += 1
        end
    end

    return "#{bulls}A#{cows}B"
end