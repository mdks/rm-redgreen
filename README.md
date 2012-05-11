rm-redgreen
===========

RedGreen clone (colorful rake spec) for RubyMotion &amp; Bacon

Clone and run `rake spec`

This will make your rake spec look colorful like this:
http://cl.ly/203M1y0w1J0a0s1n0d1t

Also lets you do things like this:

p "I like Cyan", :cyan
p "Sometimes this is hard to read...", :blue
p [{:oh=>"this"}, "is", :convenient].inspect, :yellow

... which does an NSLog in color

Files to really notice are app/lib/rm-ansiterm.rb and spec/00-redgreen.rb

00-redgreen.rb is named as such so that the Bacon hack loads before any of your real specs do.