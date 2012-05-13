# Supported styles:
# :focused, :full, :original
# --------------
style = :focused
# --------------
if Term.nil? || (style == :original)
  if Term.nil?
    puts "You need to get the RubyMotion-compatible ansiterm lib."
    puts "You can find it at https://github.com/mdks/rm-regreen"
  end
else
  puts "Bacon Output Style: :#{style}".cyan
  def color_for(error)
    if error =~ /ERROR/
      :red
    elsif error =~ /MISSING/
      :yellow
    else
      :red
    end
  end
  if style == :full
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
      end
    end
  elsif style == :focused
    module Bacon
      module SpecDoxOutput
        @focus = nil

        def handle_specification_begin(name)
          puts "#{spaces + name}".bold
        end

        def handle_specification_end
          puts if Counter[:context_depth] == 1
        end

        def handle_requirement_begin(description)
          @spec_description_cache = description
        end

        def handle_requirement_end(error)
          if error.empty?
            print ".".green
          else
            if @focus.nil?
              @focus = @spec_description_cache
              color = color_for(error)
              print "\n#{spaces}[#{error}]".send(color)
              print " - #{@focus}".magenta
              print "\nBACKTRACE: #{ErrorLog}".send(color)
            else
              if error =~ /MISSING/
                print "?".yellow
              else
                print "F".red
              end
            end
          end
        end

        def handle_summary
          puts "%d specifications (%d requirements), %d failures, %d errors" %
          # if Backtraces
          #   print ErrorLog
          # end
          Counter.values_at(:specifications, :requirements, :failed, :errors)
        end
      end
    end
  end
end
