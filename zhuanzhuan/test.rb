#!/usr/bin/env ruby
#require 'net/http'
require 'open-uri'
require 'http'
  
pre=""
0.upto 10000000 do |i|
  cur = HTTP.get("http://zhuanzhuan.58.linghuaup.com/hhwap.asp?id=#{i}&from=singlemessage&isappinstalled=0").to_s
  puts "#{Time.now} --- #{i} -- cur"
  p cur
  if cur != pre 
    File.write("file-#{i}",cur)
  end
  pre = cur

end
