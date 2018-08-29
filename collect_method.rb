class Array
  def iterate!(code)
    self.each_with_index do |n,i|
      self[i] = code.call(n)
    end
  end
end

array = [1,2,3,4]
array2 = [5,6,7,8]
array3 = [9,10]

square = Proc.new do |n|
  n**2
end

def square2(n)
  n**2
end

array.iterate!(lambda {|n| n ** 2})
array2.iterate!(square)
array3.iterate!(method(:square2))

puts array.inspect #[1, 4, 9, 16]
puts array2.inspect #[25, 36, 49, 64]
puts array3.inspect #[25, 36, 49, 64]
