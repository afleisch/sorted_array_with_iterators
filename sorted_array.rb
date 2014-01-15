class SortedArray
  attr_reader :internal_arr

  def initialize (arr=[])
    @internal_arr = []
    arr.each { |el| add el }
  end

  def add el
    # we are going to keep this array
    # sorted at all times. so this is ez
    lo = 0
    hi = @internal_arr.size
    # note that when the array just
    # starts out, it's zero size, so
    # we don't do anything in the while
    # otherwise this loop determines
    # the position in the array, *before*
    # which to insert our element
    while lo < hi
      # let's get the midpoint
      mid = (lo + hi) / 2
      if @internal_arr[mid] < el
        # if the middle element is less 
        # than the current element
        # let's increment the lo by one
        # from the current midway point
        lo = mid + 1
      else
        # otherwise the hi *is* the midway 
        # point, we'll take the left side next
        hi = mid 
      end
    end

    # insert at the lo position
    @internal_arr.insert(lo, el)
  end

  def each &block
    #loop over all elements in @internal_arr 
    #and yield to each element

    #keep track of index
    i= 0
    while i < @internal_arr.size
      yield @internal_arr[i]
      i += 1
    end
        @internal_arr

  
    #raise NotImplementedError.new("You need to implement the each method!")
  end

  def map &block
    # x = 0 
    # arr = []
    # until @internal_arr[x] == nil do #
    #   arr[x] = yield @internal_arr[x]
    #   x += 1
    # end
    # return arr
    #new_array = []
    arr = []
    each {|elem| arr << yield(elem)}
    return arr
    
    #raise NotImplementedError.new("You need to implement the map method!")
  end

  def map! &block
    # @internal_arr = self.map

    # return @internal_arr
    # new array = []
    # self.each {|elem| yield self << elem}

    # @internal_arr = new_array.map
    # raise NotImplementedError.new("You need to implement the map! method!")
  end

  def find &block
    # raise NotImplementedError.new("You need to implement the find method!")
    #find should take a block and compare successive elements in an array to the argument 
    #passed in i.e. target, and stops after the first element that matches is found, i.e. returns true
  end

  def inject acc=nil, &block
    raise NotImplementedError.new("You need to implement the inject method!")
  end
end
