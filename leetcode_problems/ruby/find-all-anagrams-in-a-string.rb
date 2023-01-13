# problem link
# https://leetcode.com/problems/find-all-anagrams-in-a-string/submissions/877624955/


def find_anagrams(s, p)
    start_p = 0
    arrS = Array.new(26,0)
    arrP = Array.new(26,0)
       
    result =[]
  
    p.each_char{|char| arrP[char.ord - 'a'.ord] +=1 }
    
    for end_p in 0..s.size-1
      arrS[s[end_p].ord - 'a'.ord] +=1
  
      if end_p >= p.size
          arrS[s[start_p].ord - 'a'.ord] -= 1
          start_p += 1
      end
      result << start_p if arrS == arrP
    end
  
  result
  end