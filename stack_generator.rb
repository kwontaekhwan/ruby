def generate_stak
  stack = []
  push = lambda {|n| stack << n}
  pop = lambda { stack.pop }
  return push, pop
end

s1_push, s1_pop = generate_stak
p s1_push.call(1)
p s1_push.call(2)
p s1_pop.call
