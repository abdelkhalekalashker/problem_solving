# problem link
# https://leetcode.com/problems/min-cost-climbing-stairs/

def min_cost_climbing_stairs(cost)
    n = cost.size
    cost[n]=0
    
    (n-2).downto(0) do |i|
       cost[i]+= [cost[i+1], cost[i+2]].min
    end
    return [cost[0],cost[1]].min
  end
  