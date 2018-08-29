class Array
  def iterate!
    self.each_with_index do |n,i|
      self[i] = yield(n)  # yield(n) 부분에서 n**2를 실행하여 새로운 배열값을 만든다.
    end
  end
end

array = [1,2,3,4]

array.iterate! do |n|
  n**2
end

puts array.inspect #[1, 4, 9, 16]
