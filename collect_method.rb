class Array
  def iterate!(code)
    self.each_with_index do |n,i|
      self[i] = code.call(n)
    end
  end
end

array = [1,2,3,4]
array2 = [5,6,7,8]

square = Proc.new do |n|
  n**2
end

array.iterate!(lambda {|n| n ** 2})
array2.iterate!(square)

puts array.inspect #[1, 4, 9, 16]
puts array2.inspect #[25, 36, 49, 64]
