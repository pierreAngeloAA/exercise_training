class ListOps
  def self.arrays(arr)
    arr.length
  end

  def self.reverser(arr)
    arr.reverse
  end

  def self.concatter(arr1, arr2)
    arr1 + arr2
  end

  def self.mapper(arr, &block)
    return arr.map(&block) if block_given?
    []
  end

  def self.filterer(arr, &block)
    return arr.select(&block) if block_given?
    []
  end

  def self.sum_reducer(arr)
    arr.sum
  end

  def self.factorial_reducer(arr)
    arr.reduce(1, :*)
  end
end
