# The purpose of this ruby script is to convert an html click map into a CSV file of coords
# and generate coffeescript for coloring the heat map.

contents = open('coords.html') { |f| f.read }

nums = []
coords = []
buff = contents
while /coords="(\d+),(\d+),(\d+),(\d+)"/.match buff
  coords << $~[1..4].map {|d| d.to_i }
  buff = buff[$~.end(4)..-1]
end

buff = contents
while /alt="(\d+)"/.match buff
  nums << $~[1].to_i
  buff = buff[$~.end(1)..-1]
end

raise "Different number of rooms and coordinates" unless nums.size == coords.size

open('coords.csv', 'w') do |f|
  f << "room,xl,yt,xr,yb\n"
  nums.zip(coords).each do |r|
    f << r[0] << ','
    f << r[1].join(',') << "\n"
  end
end

open('coords.js.coffee', 'w') do |f|
  f << "    ctx.font = '10pt Arial'\n\n"
  nums.zip(coords).each do |r|
    f << <<EOF
    # Fill room #{r[0]}
    if (entry = document.getElementById(\"#{r[0]}\"))
      data = entry.textContent.split(':', 3)
      ctx.fillStyle = data[0]
      ctx.fillRect(#{r[1][0]},#{r[1][1]},#{r[1][2]-r[1][0]},#{r[1][3]-r[1][1]})
      ctx.fillStyle = 'black'
      ctx.fillText(data[1], #{r[1][0]+2}, #{r[1][1]+12})
      if (data.length == 3)
        ctx.fillText(data[2], #{r[1][0]+2}, #{r[1][1]+24})

EOF
  end
end
