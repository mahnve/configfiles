#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba

home = File.expand_path('~')

Dir['*'].each do |file|
  next if file =~ /symlink/
  target = File.join(home, ".config", file)
  `ln -sf #{File.expand_path file} #{target}`
end

