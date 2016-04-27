require 'benchmark/ips'

require_relative 'element'
require_relative 'naive_priority_queue'
require_relative 'priority_queue'

naive = NaivePriorityQueue.new
real = PriorityQueue.new

100_000.times do |i|
  naive << Element.new("Foo #{i}", i)
  real  << Element.new("Foo #{i}", i)
end

Benchmark.ips do |x|
  x.report("naive") { naive.pop }
  x.report("real")  { real.pop  }

  x.compare!
end