class Foo
  private
  def bar
    puts "bar"
  end

  public
  def call_bar
    bar
  end
end

f = Foo.new
#f.bar # error private method
f.call_bar
