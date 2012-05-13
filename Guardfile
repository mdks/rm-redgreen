require 'guard'
require 'guard/guard'
require 'guard/test'

hide_sim_script = %{
  tell application "Finder"
    set visible of process "iOS Simulator" to false
    repeat while (visible of process "iOS Simulator" is false)
      delay 0.1
    end repeat
    set visible of process "iOS Simulator" to false
  end tell
}

guard :test do
  watching = [
    /^spec\/(.+)\.rb$/, 
    /^app\/(.+)\.rb$/, 
    /^resources\/(.+)\.storyboard$/
  ].each do |regex|
    watch(regex) do
      fork { system("osascript -e '#{hide_sim_script}'") }
      system("rake spec")
    end
  end
end