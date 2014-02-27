width, base, leaf = ARGV
width = width.to_i
base = base*3

if width.odd?
  (0..width).each { |w|
    if w.odd?
      puts " "*(width-w/2) + leaf*w
    else
      next
    end
  }
  puts " "*(width-3/2) + base
else
  puts "The tree base must be an ODD number!"
end
