class Kernel
  def p(arg, style=nil)
    if App.development?
      NSLog(style ? arg.send(style) : arg)
    else
      NSLog arg
    end
  end
end