return if Term.nil?

module Bacon
  module SpecDoxOutput
    
    def handle_specification_begin(name)
      puts "#{spaces + name}".bold
    end

    def handle_specification_end
      puts if Counter[:context_depth] == 1
    end
    
    def handle_requirement_begin(description)
      puts "#{spaces}  - #{description}".magenta
    end

    def handle_requirement_end(error)
      color = color_for(error)
      if error.empty?
        mark = "✓".green
        msg = "This test has passed! Good job!".green
      else
        mark = "✗".send(color)
        msg = "This test has not passed: #{error}!".send(color)
        error_output = "[#{error}] \n BACKTRACE: #{ErrorLog}".send(color)
      end
      puts " [#{mark}] #{msg} \n #{error_output ||= ""}"
      ErrorLog.clear
    end

    def handle_summary
      puts "%d specifications (%d requirements), %d failures, %d errors" %
      # if Backtraces
      #   print ErrorLog 
      # end
      Counter.values_at(:specifications, :requirements, :failed, :errors)
    end

    def color_for(error)
      if error =~ /ERROR/
        :red
      elsif error =~ /MISSING/
        :yellow
      else
        :red
      end
    end

  end
end


