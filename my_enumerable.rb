module MyEnumerable
  def all?(&block)
    @list.each { |args| return false unless block.call(args) }
    true
  end

  def any?(&block)
    @list.each { |args| return true if block.call(args) }
    false
  end

  def filter(&block)
    arr = []
    @list.each {|args| arr<<args if block.call(args)}
    arr
  end
end