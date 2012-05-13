class String
  def method_missing(sym, *args, &block)
    Term::ANSIColor.send(sym) { self } rescue super
  end
end