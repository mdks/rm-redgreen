require 'guard'
require 'guard/guard'
require 'guard/test'

guard :test do
  watching = [
    /^spec\/(.+)\.rb$/, 
    /^app\/(.+)\.rb$/, 
    /^resources\/(.+)\.storyboard$/
  ].each do |regex|
    watch(regex) do
      system('rake spec')
    end
  end
end
