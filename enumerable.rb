module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true if yield(e) }
    false
  end

  def filter
    new_ar = []
    each { |e| new_ar << e if yield(e) }
    new_ar
  end
end
