#!/usr/bin/env ruby

# 1. Capture the log line passed as the first argument
log_line = ARGV[0]

# 2. Extract the values using regex capture groups
# .scan returns an array of matches; we take the first element [0]
sender   = log_line.scan(/\[from:(.*?)\]/)[0][0]
receiver = log_line.scan(/\[to:(.*?)\]/)[0][0]
flags    = log_line.scan(/\[flags:(.*?)\]/)[0][0]

# 3. Output them in the required format: [SENDER],[RECEIVER],[FLAGS]
puts "#{sender},#{receiver},#{flags}"
