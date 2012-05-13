rm-redgreen
===========

RedGreen clone (colorful rake spec) for RubyMotion.
The project includes a ported version of ansiterm & can auto-test using Guard.

Features
-----

* Autotest functionality with Guard
* A ported ansiterm.rb for terminal colors
* 3 styles of colorized Bacon output (00-redgreen.rb)

Instructions
-----

# Copy 00-redgreen.rb into spec/
# Load rm-ansiterm.rb in your app/
# Run `rake spec`

For using Guard I have prepared a Gemfile & Guardfile
# Add the Gemfile & Guardfile to your project
# Run `bundle install`
# Run `guard`
# Red, green, refactor!

Output Styles
-----

There are currently 3 styles, settable at the top of 00-redgreen.rb

* `:full` shows everything, this is the first style I created. Screenshot: http://cl.ly/1c3p0S23031C3a460M0m (bottom cut off)
* `:focused` uses the `.` and `F` you see in other test suites, and only shows one backtrace/error at a time, keeping you "focused" on greening. Screenshot: http://cl.ly/0z1E3y1o2M1T3P0V1m08
* `:original` just reverts back to the standard RubyMotion style (no colors): Screenshot: http://cl.ly/3q0E0r1d1R1i1Y342a3H (top cut off)

Default style is `:focused`

Extras
-----

You can do things like this in your app, using the included ansiterm.rb port.
```ruby
class Kernel
  def p(arg, style=nil)
    if Term.nil?
      NSLog arg
    else
      NSLog(style ? arg.send(style) : arg)
    end
  end
end
```

And then do a beautiful NSLog with it like so:

```ruby
p "I like Cyan", :cyan
p "Sometimes this is hard to read...", :blue
p [{:oh=>"this"}, "is", :convenient].inspect, :yellow
```

Please send pull requests if you do something cool with this or make new styles!