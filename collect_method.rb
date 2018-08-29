class Array
  def iterate!
    self.each_with_index do |n,i|
      self[i] = yield(n)  # yield(n) 부분에서 n**2를 실행하여 새로운 배열값을 만든다.
    end
  end
end

array = [1,2,3,4]
array2 = [5,6,7,8]

array.iterate! do |n|
  n**2
end

array2.iterate! do |n|
  n**2
end

puts array.inspect #[1, 4, 9, 16]
puts array2.inspect #[25, 36, 49, 64]
