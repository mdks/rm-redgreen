class Kernel
  def p(arg, style=nil)
    if Term.nil?
      NSLog arg
    else
      NSLog(style ? arg.send(style) : arg)
    end
  end
end