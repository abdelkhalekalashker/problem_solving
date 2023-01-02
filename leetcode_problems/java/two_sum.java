//leetcode problem
//problem link https://leetcode.com/problems/two-sum/
public class TwoSum{
    public  int[] two_sum(int[]array , int target)
    {
        Map<Integer , Integer> map = new HashMap<Integer , Integer>();
        for(int i=0 ; i<array.length ; i++)
        {
            int difference = target-array[i];
            if(map.containsKey(difference))
                return new int[]{map.get(difference) , i};

            map.put(array[i],i);
        }  
        return new int[];
    }
}
