# problem link on leetcode
# https://leetcode.com/problems/last-stone-weight/submissions/879197472/?envType=study-plan&id=level-1


# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    return stones[0] if stones.size < 2

    


    while stones.size > 1
        i = 1
        big = 0
        small = 1
        for i in 1..stones.size-1
            if stones[i] > stones[big]
                small = big
                big =i
            elsif stones[i] > stones[small]
                small = i
            end
            i += 1
        end
        
        if stones[small] <= stones[big]
            dif = stones[big] - stones[small]
                if small > big 
                    stones.delete_at(small)
                    stones.delete_at(big)
                else
                    stones.delete_at(big)
                    stones.delete_at(small)
                end
            stones.push(dif)
        else
            if small > big 
                    stones.delete_at(small)
                    stones.delete_at(big)
                else
                    stones.delete_at(big)
                    stones.delete_at(small)
                end
        end 
    end
    stones[0]
end