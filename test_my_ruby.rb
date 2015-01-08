require 'benchmark'

repetitions = 1000000

Benchmark.bm(5) do |x|
  x.report 'Double_quotes' do
    repetitions.times do
      "Nine"
    end
  end

  x.report 'single_quotes' do
    repetitions.times do
      'Nine'
    end
  end
end
