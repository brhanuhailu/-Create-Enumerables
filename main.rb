require_relative 'enumerable'

class MyList
include MyEnumerable
    def initialize(*data)
        @list = data
    end

    def each(&block)
        @list.each(&block)
    end
end

list = MyList.new(1,2,3,4,5,6,7)

p(list.all? {|e| e < 8})
p(list.all? {|e| e > 8})
p(list.any? {|e| e == 2})
p(list.any? {|e| e == 5})
p(list.filter &:even?)
p(list.filter &:odd?)
p(list.any?{|e| e == 3})