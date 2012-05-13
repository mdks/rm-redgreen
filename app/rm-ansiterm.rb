return unless App.development?

module Term
  # The ANSIColor module can be used for namespacing and mixed into your own
  # classes.
  module ANSIColor
    # :stopdoc:
    ATTRIBUTES = [
      [ :clear        ,   0 ],
      [ :reset        ,   0 ],     # synonym for :clear
      [ :bold         ,   1 ],
      [ :dark         ,   2 ],
      [ :italic       ,   3 ],     # not widely implemented
      [ :underline    ,   4 ],
      [ :underscore   ,   4 ],     # synonym for :underline
      [ :blink        ,   5 ],
      [ :rapid_blink  ,   6 ],     # not widely implemented
      [ :negative     ,   7 ],     # no reverse because of String#reverse
      [ :concealed    ,   8 ],
      [ :strikethrough,   9 ],     # not widely implemented
      [ :black        ,  30 ],
      [ :red          ,  31 ],
      [ :green        ,  32 ],
      [ :yellow       ,  33 ],
      [ :blue         ,  34 ],
      [ :magenta      ,  35 ],
      [ :cyan         ,  36 ],
      [ :white        ,  37 ],
      [ :on_black     ,  40 ],
      [ :on_red       ,  41 ],
      [ :on_green     ,  42 ],
      [ :on_yellow    ,  43 ],
      [ :on_blue      ,  44 ],
      [ :on_magenta   ,  45 ],
      [ :on_cyan      ,  46 ],
      [ :on_white     ,  47 ],
    ]

    ATTRIBUTE_NAMES = ATTRIBUTES.transpose.first
    # :startdoc:

    # Returns true, if the coloring function of this module
    # is switched on, false otherwise.
    def self.coloring?
      @coloring
    end

    # Turns the coloring on or off globally, so you can easily do
    # this for example:
    #  Term::ANSIColor::coloring = STDOUT.isatty
    def self.coloring=(val)
      @coloring = val
    end
    self.coloring = true


      def clear(string = nil)
        result = ''
        result << "[0m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def reset(string = nil)
        result = ''
        result << "[0m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def bold(string = nil)
        result = ''
        result << "[1m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def dark(string = nil)
        result = ''
        result << "[2m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def italic(string = nil)
        result = ''
        result << "[3m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def underline(string = nil)
        result = ''
        result << "[4m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def underscore(string = nil)
        result = ''
        result << "[4m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def blink(string = nil)
        result = ''
        result << "[5m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def rapid_blink(string = nil)
        result = ''
        result << "[6m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def negative(string = nil)
        result = ''
        result << "[7m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def concealed(string = nil)
        result = ''
        result << "[8m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def strikethrough(string = nil)
        result = ''
        result << "[9m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def black(string = nil)
        result = ''
        result << "[30m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def red(string = nil)
        result = ''
        result << "[31m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def green(string = nil)
        result = ''
        result << "[32m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def yellow(string = nil)
        result = ''
        result << "[33m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def blue(string = nil)
        result = ''
        result << "[34m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def magenta(string = nil)
        result = ''
        result << "[35m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def cyan(string = nil)
        result = ''
        result << "[36m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def white(string = nil)
        result = ''
        result << "[37m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_black(string = nil)
        result = ''
        result << "[40m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_red(string = nil)
        result = ''
        result << "[41m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_green(string = nil)
        result = ''
        result << "[42m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_yellow(string = nil)
        result = ''
        result << "[43m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_blue(string = nil)
        result = ''
        result << "[44m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_magenta(string = nil)
        result = ''
        result << "[45m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_cyan(string = nil)
        result = ''
        result << "[46m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end


      def on_white(string = nil)
        result = ''
        result << "[47m" if Term::ANSIColor.coloring?
        if block_given?
          result << yield
        elsif string
          result << string
        elsif respond_to?(:to_str)
          result << self
        else
          return result #only switch on
        end
        result << "[0m" if Term::ANSIColor.coloring?
        result
      end

    # Regular expression that is used to scan for ANSI-sequences while
    # uncoloring strings.
    COLORED_REGEXP = /\e\[([34][0-7]|[0-9])m/

    # Returns an uncolored version of the string, that is all
    # ANSI-sequences are stripped from the string.
    def uncolored(string = nil) # :yields:
      if block_given?
        yield.gsub(COLORED_REGEXP, '')
      elsif string
        string.gsub(COLORED_REGEXP, '')
      elsif respond_to?(:to_str)
        gsub(COLORED_REGEXP, '')
      else
        ''
      end
    end

    module_function

    # Returns an array of all Term::ANSIColor attributes as symbols.
    def attributes
      ATTRIBUTE_NAMES
    end
    extend self
  end
end