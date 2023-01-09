# problem link 
# https://leetcode.com/problems/first-bad-version/submissions/874704972/?envType=study-plan&id=level-1

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end
def first_bad_version(n)
    high = n
    low = 0
    first = Integer::MAX 
    while low<=high
        mid = low+(high - low)/2
        if is_bad_version(mid+1)
            if first > (mid+1)
                first = mid + 1
            end
            high = mid -1
        else 
            low = mid +1
            
        end
    end
    first
end

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
class Integer
    N_BYTES = [42].pack('i').size
    N_BITS = N_BYTES * 16
    MAX = 2 ** (N_BITS - 2) - 1
    MIN = -MAX - 1
  end
  def first_bad_version(n)
      high = n
      low = 0
      first = Integer::MAX 
      while low<=high
          mid = low+(high - low)/2
          if is_bad_version(mid+1)
              if first > (mid+1)
                  first = mid + 1
              end
              high = mid -1
          else 
              low = mid +1
              
          end
      end
      first
  end